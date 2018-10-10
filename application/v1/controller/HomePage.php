<?php
/**
 * Created by PhpStorm.
 * User: zhangchun
 * Date: 2018/9/28
 * Time: 9:38
 */

namespace app\v1\controller;

use app\v1\model\HomePageTpl;

class HomePage extends Base{
    public function index(){
        $title = input('param.title','','trim');
        $cid = input('param.cid',0,'intval');
        $page = input('page',1);
        $len = input('len',10);

        $where = [];
        if(!empty($title)) $where['title'] = ['like',"%$title%"];
        if(!empty($cid))  $where['center_id'] = $cid;

        $tplModel = new HomePageTpl();
        $tplList = $tplModel
            ->alias('t')
            ->join('mooc_center mc','mc.id=t.center_id')
            ->where($where)
            ->field('t.*,mc.center_name')
            ->page($page,$len)
            ->select();
        $num = $tplModel->where($where)->count(1);

        return $this->ok(['num'=>$num,'list'=>$tplList],12122,'获取配置成功');
    }

    //添加模块配置
    public function create(){
        $title = input('param.title','','trim');
        $cid = input('param.cid',1,'intval');
        $resource = input('resource','','trim');
        $list_order = input('api',1000,'intval');
        $status = input('status',1,'intval');

        //验证token sign
        $msg = verify();
        if ($msg['status'] == 0) {
            return $msg;
        }

        if(empty($title)){
            return $this->fail(10100,'标题不能为空');
        }
        if(empty($cid)){
            return $this->fail(10100,'场馆不能为空');
        }
        if(empty($resource)){
            return $this->fail(10100,'api不能为空');
        }

        $data = [
            'title'=>$title,
            'center_id'=>$cid,
            'resource'=>$resource,
            'list_order'=>$list_order,
            'status'=>$status
        ];

        $tplModel = new HomePageTpl();
        if($tplModel->save($data) > 0 ){
            return $this->ok('',12111,'添加模块成功');
        }else{
            return $this->fail(12101,'添加模块失败');
        }
    }

    public function read(){
        $id = input('param.id',0,'intval');

        $tplModel = new HomePageTpl();
        $info = $tplModel->where(['id'=>$id])->find();

        return $this->ok($info,22111,'获取详情成功');
    }

    public function delete(){
        $id = input('param.id',0,'intval');
        $ids = input('param.ids/a',[]);

        //验证token sign
        $msg = verify();
        if ($msg['status'] == 0) {
            return $msg;
        }

        $tplModel = new HomePageTpl();
        if(!empty($id)){
            if($tplModel->where(['id'=>$id])->delete() > 0 ){
                return $this->ok('',12111,'删除模块成功');
            }else{
                return $this->fail(12101,'删除模块失败');
            }
        }

        if(!empty($ids)){
            if($tplModel->where(['id'=>['in',$ids]])->delete() > 0 ){
                return $this->ok('',12111,'删除模块成功');
            }else{
                return $this->fail(12101,'删除模块失败');
            }
        }


    }

    public function edit(){
        $id = input('param.id',0,'intval');
        $title = input('param.title','','trim');
        $cid = input('param.cid',0,'intval');
        $resource = input('resource','','trim');
        $status = input('status',1,'intval');
        $list_order = input('list_order',1000,'intval');

        //验证token sign
        $msg = verify();
        if ($msg['status'] == 0) {
            return $msg;
        }

        if(empty($id)){
            return $this->fail(10100,'id必须');
        }
        if(empty($title)){
            return $this->fail(10100,'标题不能为空');
        }
        if(empty($cid)){
            return $this->fail(10100,'场馆不能为空');
        }
        if(empty($resource)){
            return $this->fail(10100,'api不能为空');
        }

        $tplModel = new HomePageTpl();


        $data = [
            'title'=>$title,
            'center_id'=>$cid,
            'resource'=>$resource,
            'list_order'=>$list_order,
            'status'=>$status,
        ];
        if($tplModel->where(['id'=>$id])->update($data) !== false ){
            return $this->ok('',12111,'编辑模块成功');
        }else{
            return $this->fail(12101,'编辑模块失败');
        }
    }

    /**
     * 获取所有的慕课列表
     */
    public function courseList()
    {
        //文化馆ID
        $list = $this->_getList();
        $num = $this->_getList(true);
        foreach ($list as $k => $v) {
            $list[$k] = $this->_prepareData($v);
        }

        return $this->ok(['list' => $list, 'num' => $num], 21101, '成功');
    }

    /**
     * 获取慕课列表或数量
     * @param bool $isCount true 获取数量 false 获取列表
     * @return array|int|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    private function _getList($isCount = false)
    {
        $centerId = input('param.center_id',0,'intval');     //真实场馆id
        $center_id = input('param.cid', 0, 'intval');  //超星馆下筛选条件 场馆id
        $creator_id = input('param.creator_id', 0, 'intval');
        $creator_type = input('param.creator_type', 0, 'intval');
        $type = input('param.type',1,'intval');   //类型   1分类，4栏目，2专题
        $title = input('param.title', '');
        $page = input('param.page', 0, 'intval');
        $len = input('param.len', 10, 'intval');
        $has_delete = input('param.has_delete', 0, 'intval');
        $status = input('param.status', -1, 'intval');  //前台必传1
        $ord = input('param.ord',0,'intval');  // 1近期热播  2评分 3不限时间 4按时间顺序
        $recommend = input('param.recomment',0,'intval');
        $type_id = input('param.type_id',0,'intval');  //分类，栏目或专题id
        $all = input('param.all',-1,'intval');

        $where = [];

        if($all != -1){
            if($centerId != 1){
                $where = ['cc.center_id' => $centerId];
            }
        }else{
            $where = ['cc.center_id' => $centerId];
        }

        if($center_id != 0){
            $where['cc.center_id'] = $center_id;
        }
        $where['ct.type'] = $type;

        if ($status != -1) $where = ['cc.status' => $status];
        if ($creator_id != 0) {
            $where['c.type'] = $creator_type;
            $where['c.creator_id'] = $creator_id;
        }

        if($type == 1) {
            //分类
            if($type_id != 0){
                $parent_id = (new CourseType)->where(['id'=>$type_id])->value('parent_id');
                if($parent_id != 0){
                    $where['ct.other_id'] = $type_id;
                }else{
                    $subType = (new CourseType())->where(['parent_id'=>$type_id])->column('id');
                    array_push($subType,$type_id);
                    $where['ct.other_id'] = ['in',$subType];
                }

            }
        }else if($type == 2){
            //专题
            if($type_id != 0){
                $where['ct.other_id'] = $type_id;
            }
        }else if($type == 4){
            //栏目
            if($type_id != 0){
                $subType = (new Column())->where(['parent_id'=>$type_id])->column('id');
                array_push($subType,$type_id);
                $where['ct.other_id'] = ['in',$subType];
            }

        }

        if ($title != '') $where['c.course_title'] = ['like', '%' . $title . '%'];
        if ($has_delete == 0) $where['c.delete_time'] = 0;
        $order = [];
        if($ord == 1) $order= ['cc.play_num'=>'desc'];
        if($ord == 2) $order = ['score'=>'desc'];
        if($ord == 3) $order = ['c.open_status'=>'desc'];
        if($ord == 4) $order = ['c.create_time'=>'desc'];
        if($recommend) $where['cc.recommend'] = 1;
        $query = $this->_query($where,$order);
        if ($isCount) {
            return $query->count(1);
        } else {
            $result = $query->order(['cc.recommend' => 'desc', 'cc.create_time' => 'desc'])->page($page, $len)->select();
            if ($result) {
                return \collection($result)->toArray();
            } else {
                return [];
            }
        }
    }

    /**
     * 构造慕课查询器
     * @param $where
     * @return CourseModel
     */
    private function _query($where,$order=[])
    {
        //场馆ID关联时
        return $query = (new CourseModel())
            ->alias('c')
            ->join('__CENTER_COURSE__ cc', 'c.id=cc.course_id ')
//            ->join('__COURSE_RELA__ ct', 'c.id=ct.course_id and ct.type = 1 and ct.center_id = cc.center_id', 'left')
            ->join('__COURSE_RELA__ ct', 'c.id=ct.course_id  and ct.center_id = cc.center_id')
            ->join('__COMMENT__ cm', 'c.id=cm.course_id and cm.center_id = cc.center_id', 'left')
//            ->join('__BAOMING__ b','c.id =b.course_id and b.center_id = cc.center_id ','left')
            ->fieldRaw('c.*,cc.id as real_id,cc.recommend,cc.create_time as add_time,cc.center_id,cc.play_num,cc.status, ct.other_id,count(cm.id) as comment_num,ceil(avg(cm.practical_score+cm.concise_score+cm.clear_score)/3) as score')
            ->where($where)
            ->order($order)
            ->group('c.id,cc.center_id');
    }

    /**
     * 查询结果整理
     * @param $data
     * @return mixed
     * @throws \think\exception\DbException
     */
    private function _prepareData($data)
    {
        $data['course_id'] = $data['id'];
        $data['id'] = $data['real_id'];
        unset($data['real_id']);
        $data['cover_img'] = get_image_url($data['cover_img']);
        $data['cover_video'] = get_image_url($data['cover_video']);
        $data['create_time'] = $data['add_time'];
        unset($data['add_time']);
        $data['content'] = $data['content'] ? $data['content'] : '';
        $center = MoocCenter::get($data['center_id']);
        $data['center_name'] = $center ? $center['center_name'] : '';
        $data['score'] = $data['score'] == null ? 0 : $data['score'];
        $type = CourseType::get($data['other_id']);
        $data['course_type'] = $type ? $type['course_type'] : '';
        $data['course_type_tree'] = $this->_getTypeTree($data['other_id']);
        $course_teachers = $this->teachers($data['course_id'],$data['center_id']);
        if($course_teachers){
            $course_teachers = \collection($course_teachers)->toArray();
            foreach($course_teachers as $key=>$value){
                $course_teachers[$key]['profile'] = htmlspecialchars_decode($course_teachers[$key]['profile']);
            }
        }
        $data['course_teachers'] = $course_teachers;
        $data['baoming_num'] = (new \app\v1\model\Baoming())->where(['course_id'=>$data['course_id']])->count(1);
        $data['content'] = htmlspecialchars_decode($data['content']);
        if ($data['type'] == 1) {
            $data['creator'] = MoocCenter::where(['id' => $data['creator_id']])->value('center_name', '');
            $data['creator_center_id'] = $data['creator_id'];
        } else {
            $user = MoocUser::where(['id' => $data['creator_id']])->find();
            if($user){
                $data['creator'] = $user['nick_name'];
                $data['creator_center_id'] = $user['center_id'];
            }else{
                $data['creator'] = '';
                $data['creator_center_id'] = 0;
            }
        }
        return $data;
    }



    /**
     * 栏目（首页栏目）
     * @param user_token 场馆令牌
     * @return array|bool
     */
    public function column_index(){
        $id = input('param.id',0,'intval');
        $page = input('param.page',1,'intval');
        $len = input('param.len',10,'intval');
        $center_id = input('param.center_id',0,'intval');

        //获取首页栏目
        $columnModel = new ColumnModel();
        $column = $columnModel->where(['center_id'=>$center_id,'parent_id'=>['neq',0],'id'=>$id,'status'=>1])->field('id,title,parent_id')->order('create_time asc')->find();

        //获取栏目下的课程，课程浏览量及评价分数
        $column_mk = new CourseRela();
        $column_mkList = $column_mk->alias('cm')
            ->join('course c', 'c.id=cm.course_id','left')
            ->join('center_course cc','cc.course_id=c.id and cc.center_id=cm.center_id','left')
            ->join('comment ct','ct.course_id=c.id and cm.center_id=ct.center_id','left')
            ->where(['cm.other_id' => $column['id'], 'cm.type' => 4, 'cm.status' => 1,'cm.center_id'=>$center_id])
            ->fieldRaw('c.id,c.course_title,c.cover_img,cc.play_num,ceil(avg(ct.practical_score+ct.concise_score+ct.clear_score)/3) as score')
            ->page($page,$len)
            ->group('c.id')
            ->select();

        if($column_mkList){
            $column_mkList = \collection($column_mkList);
        }else{
            $column_mkList = [];
        }

        foreach($column_mkList as $key=>$item){
            //获取老师名称
            if($item['type'] === 1){
                $column_mkList[$key]['creator'] = (new CourseRela)->alias('cr')->join('mooc_user mu','mu.id = cr.other_id')->where(['cr.type'=>3,'cr.course_id'=>$item['id']])->field('mu.nick_name')->value('mu.nick_name');
            }else{
                $column_mkList[$key]['creator'] = (new MoocUser())->where(['id'=>$item['creator_id']])->value('nick_name');
            }
            //获取报名人数
            $column_mkList[$key]['baomint_num'] = (new \app\v1\model\Baoming())->where(['course_id'=>$item['id'],'center_id'=>$center_id])->count(1);
            if($item['score'] == null){
                $column_mkList[$key]['score'] = 0;
            }
//            unset($item['type']);
        }

        return $this->ok(['column'=>$column,'mooc'=>$column_mkList],12111,'获取栏目成功');


    }


}