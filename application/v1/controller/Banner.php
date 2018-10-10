<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/8/8
 * Time: 11:25
 */

namespace app\v1\controller;

use app\v1\model\Answer;
use app\v1\model\Collect;
use app\v1\model\MoocUser;
use app\v1\model\Baoming;
use app\v1\model\Chapter;
use app\v1\model\Question;
use app\v1\model\Section;
use app\v1\model\Course;
use app\v1\model\SectionNote;
use app\v1\model\Banner as Banners;

class Banner extends Base {
	/**
	 * Banner控制器
	 * @param user_token 用户token
	 */
	public function getBanners()
	{
		$Db = new \think\Db;
//		$_GET['user_token'] = 'b616164e6ce937e8debb6345783a9746ebcd1e5c';
//		$_GET['timestamp']  = strval(time());
//		$salt               = MoocUser::where('user_token', $_GET['user_token'])->value('salt');
//		$_GET['sign']       = encrypt_key(['v1/my/index', $_GET['timestamp'], $_GET['user_token'], $salt], '');
//		$user_token         = input('param.user_token', '', 'trim');
//
//		//令牌校验
//		$tokenRes = checkUserToken($user_token);
//		if ($tokenRes !== TRUE)
//		{
//			return $tokenRes;
//		}

		//获取Banner列表
		$center_id         = input('param.center_id', 0, 'trim');
		$page         = input('param.page', 1, 'trim');
		$len         = input('param.len', 20, 'trim');
		return $this->ok($Db::query("select * from banner where center_id=".$center_id. " limit ".($page-1)*$len.",". $len), 12222, '获取Banner成功');
	}

    public function getBannerList()
    {
        $Db = new \think\Db;
//		$_GET['user_token'] = 'b616164e6ce937e8debb6345783a9746ebcd1e5c';
//		$_GET['timestamp']  = strval(time());
//		$salt               = MoocUser::where('user_token', $_GET['user_token'])->value('salt');
//		$_GET['sign']       = encrypt_key(['v1/my/index', $_GET['timestamp'], $_GET['user_token'], $salt], '');
//		$user_token         = input('param.user_token', '', 'trim');
//
//		//令牌校验
//		$tokenRes = checkUserToken($user_token);
//		if ($tokenRes !== TRUE)
//		{
//			return $tokenRes;
//		}

        //获取Banner列表
        $center_id         = input('param.center_id', 0, 'trim');
        $page         = input('param.page', 1, 'trim');
        $len         = input('param.len', 20, 'trim');
        $cid = input('cid',0,'intval');
        $title = input('param.title','');

        //数据获取
        $where = [];
        if($title != '') $where['title'] = $title;
        if($center_id != 1){
            $where['center_id'] = $center_id;
        }
        if($cid != 0) $where['center_id'] = $cid;
        $bannerModel = new Banners();
        $bannerList = $bannerModel->alias('b')->join('mooc_center mc','mc.id=b.center_id')->where($where)->page($page,$len)->field('b.*,mc.center_name')->select();
        $num = $bannerModel->where($where)->count(1);

        if($bannerList){
            foreach($bannerList as $key => $value){
                $bannerList[$key]['creator_name'] = (new \app\v1\model\MoocCenter())->where(['id'=>$value['creator_id']])->value('center_name');
            }
        }
        return $this->ok(['list'=>$bannerList,'num'=>$num], 12222, '获取Banner成功');
    }

    /**
     * banner编辑详情页
     * @param center_token 场馆令牌
     * @param id 专题id
     * @return array|bool
     */
    public function read()
    {
        $banner_id = input('param.id',0,'intval');

        if($banner_id == 0){
            return $this->fail(20001,'id必须');
        }

        $where = [];
        $where['b.id'] = $banner_id;

        $bannerModel = new Banners();
        $bannerInfo = $bannerModel->alias('b')->join('mooc_center mc', 'mc.id=b.center_id')->where($where)->field('b.*,mc.center_name,mc.id')->find();

        return $this->ok($bannerInfo, 11111, 'banner获取成功');


    }

	/**
	 * 添加Banner服务
	 */
	public function addBanner()
	{
        $identity = verify();
        if ($identity['status'] == 0) {
            return $identity;
        }
        $creator_id = $identity['data']['user_id'];

        if($identity['data']['center_id'] == 1){
            $center_id = input('param.center_id',0,'intval');
        }else{
            $center_id = $identity['data']['center_id'];
        }

		$title = input('param.title', '', 'trim');
        $cover_img   = input('param.cover_img', 0, 'trim');
		$url   = input('param.url', 0, 'trim');
		$remark = input('param.remark','','trim');
		$type = input('param.type',1,'intval');
		$status = input('param.status',1,'intval');
		$time  = time();

		if(empty($title)){
		    return $this->fail(10001,'标题必须');
        }
        if(empty($url)){
            return $this->fail(10002,'缩略图必须');
        }

        $data = [
            'center_id'=>$center_id,
            'title'=>$title,
            'url'=>$url,
            'cover_img'=>$cover_img,
            'remark'=>$remark,
            'creator_id'=>$creator_id,
            'type'=>$type,
            'status'=>$status,
            'dateline'=>$time
        ];

        $bannerModel = new \app\v1\model\Banner();
		if ($bannerModel->save($data) > 0)
		{
			return $this->ok('', 21101, '添加成功', 1);
		}else{
            return $this->fail( 21002, '添加失败');
        }

	}


	/**
	 * 修改Banner服务
	 */
	public function editBanner()
	{
        $identity = verify();
        if ($identity['status'] == 0) {
            return $identity;
        }

        if($identity['data']['center_id'] == 1){
            $center_id = input('param.center_id',0,'intval');
        }else{
            $center_id = $identity['data']['center_id'];
        }

        $id = input('param.id',0,'intval');
        $title = input('param.title', '', 'trim');
        $cover_img   = input('param.cover_img', 0, 'trim');
        $url   = input('param.url', 0, 'trim');
        $remark = input('param.remark','','trim');
        $type = input('param.type',1,'intval');
        $status = input('param.status',1,'intval');

        if(empty($id)){
            return $this->fail(10001,'id必须');
        }
        if(empty($title)){
            return $this->fail(10003,'标题必须');
        }
        if(empty($url)){
            return $this->fail(10002,'缩略图必须');
        }

        $data = [
            'center_id'=>$center_id,
            'title'=>$title,
            'cover_img'=>$cover_img,
            'url'=>$url,
            'remark'=>$remark,
            'type'=>$type,
            'status'=>$status,
        ];

        $bannerModel = new \app\v1\model\Banner();
        if ($bannerModel->isUpdate(true)->save($data,['id'=>$id]) !== false)
        {
            return $this->ok('', 21101, '更新成功', 1);
        }else{
            return $this->fail( 21002, '更新失败');
        }
	}

	/**
	 * 删除Banner服务
	 * 数据整
	 * */
	public function removeBanner()
	{
        //签名校验
        $identity = verify();
        if ($identity['status'] == 0) {
            return $identity;
        }
        $center_id = $identity['data']['center_id'];

        $banner_id = input('param.id',0);
        $banner_ids = input('param.ids/a',[]);

        $bannerModel = new \app\v1\model\Banner();
        if(!empty($banner_id)){
            //此banner是否属于该文化馆
            $is_exist = $bannerModel->where(['creator_id'=>$center_id,'id'=>$banner_id])->find();
            if(!$is_exist){
                return $this->fail(12012, '没有权限删除此banner');
            }
            if ($bannerModel->where(['id' => $banner_id])->delete() > 0) {
                return $this->ok([], 11222, '删除banner成功');
            } else {
                return $this->fail(11200, '删除banner失败');
            }
        }

        if(!empty($banner_ids)){
            $del_ids = [];
            foreach($banner_ids as $item){
                $is_exist = $bannerModel->where(['creator_id'=>$center_id,'id'=>$item])->find();
                if($is_exist){
                    $del_ids[] = $item;
                }
            }
            $res = $bannerModel->where(['id' => ['in',$del_ids]])->delete();
            if($res){
                return $this->ok([], 11222, '删除banner成功');
            }else{
                return $this->fail(11200, '删除banner失败');
            }

        }

//	    =========================================================================================
//		$Db  = new \think\Db;
//		$id  = input('param.id', 0, 'trim');
//		$ret = $Db::query("delete from banner where id={$id}");
//		if ($ret)
//		{
//			return $this->ok('', 21101, '删除成功', 1);
//		}
	}

}