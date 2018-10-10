<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/7/30
 * Time: 17:38
 */

namespace app\v1\controller;

use app\v1\model\Answer;
use app\v1\model\Like;
use app\v1\model\MoocUser;
use app\v1\model\Question;

class QuestionAnswer extends Base
{
    /**
     * 问答列表
     * @param center_id 场馆id
     * @param course_id 课程id
     * @param section_id 节id
     * @param status 状态 0 未解决 1 已解决
     * @return array|bool
     */
    public function index()
    {
//        $_GET['center_id'] = 14;
//        $_GET['course_id'] =  2;
//        $_GET['section_id'] = 2;

        $center_id = input('param.center_id',0,'intval');
        $course_id = input('param.course_id',0,'intval');  //获取课程所有问答
        $section_id = input('param.section_id',0,'intval');//获取某一节课所有问答
        $page = input('param.page',1,'intval');
        $len = input('param.len',10,'intval');
        $status = input('param.status',-1);   //0 未解决   1已解决   2精华(回复五条以上为精华)

        $where = [];
        if($status != -1 && $status != 2){
            $where['q.status'] = $status;
        }

        if($center_id != 0){
            $where['q.center_id'] = $center_id;
        }

        if($course_id != 0){
            $where['q.course_id'] = $course_id;
        }
        if($section_id != 0){
            $where['q.section_id'] = $section_id;
        }
        $questionModel = new Question();
        $answerModel = new Answer();
        $question = $questionModel
                    ->alias('q')
                    ->join('mooc_user mu','mu.id=q.user_id')
                    ->join('section s','s.id=q.section_id','left')
                    ->join('chapter c','s.chapter_id=c.id','left')
//                    ->where(['q.course_id'=>$course_id,'q.section_id'=>$section_id,'q.center_id'=>$center_id])
                    ->where($where)
                    ->field('q.*,mu.avatar,mu.nick_name,mu.type as user_type,c.chapter_title,s.section_title,1 as show_num')
                    ->order('create_time','desc')
                    ->page($page,$len)
                    ->select();

        if($question){
            $question = \collection($question);
            foreach($question as $key=>$item){
                $num = $answerModel->where(['question_id'=>$item['id'],'delete_time'=>0])->count(1);
                if($status == 2 && $num < 5){
                    unset($question[$key]); //show_num 1
                }else{
                    $question[$key]['content'] = htmlspecialchars_decode($question[$key]['content']);
                    $answers = $answerModel->alias('a')->join('mooc_user mu','mu.id=a.user_id')->where(['question_id'=>$item['id'],'delete_time'=>0])->field('a.*,mu.nick_name,mu.avatar,mu.type as user_type,1 as show_num')->order('create_time','desc')->select();
                    if($answers){
                        $answers = \collection($answers)->toArray();
                        foreach ($answers as $k=>$item){
                            $answers[$k]['content'] = htmlspecialchars_decode($answers[$k]['content']);
                        }
                    }
                    $question[$key]['ans_num'] = $num;
                    $question[$key]['answers'] = $answers;
                }
            }
        }

        return $this->ok($question,22122,'获取问答成功');

    }

    /**
     * 问题添加
     * @param user_token 用户令牌
     * @param content 问题内容
     * @param section_id 节id
     * @param course_id 课程id
     * @return array|bool
     */
    public function create_question()
    {

        $_GET['user_token'] = 'cd69089bea5af15192e10ce17be7d4939eb02bb7';
        $_GET['timestamp'] = time();
        $salt = 'ttVm5';
        $_GET['sign'] = encrypt_key(['v1/questionanswer/create_question', $_GET['timestamp'], $_GET['user_token'], $salt], '');
        $_GET['section_id'] = 2;
        $_GET['course_id'] = 2;
        $_GET['content'] = '问题1问题问题';

        $user_token = input('param.user_token', '', 'trim');
        $content = input('param.content', '', 'trim');
        $section_id = input('param.section_id', 0, 'intval');
        $course_id = input('param.course_id', 0, 'intval');
        $title = input('param.title','');

        //用户令牌
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== true) {
            return $tokenRes;
        }

        if (empty($title)) {
            return $this->fail(12001, '标题不能为空');
        }

        if (empty($content)) {
            return $this->fail(12001, '问题不能为空');
        }

        if (empty($section_id)) {
            return $this->fail(12002, '章节id必须');
        }

        if (empty($course_id)) {
            return $this->fail(12003, '课程id必须');
        }

        $userModel = new MoocUser();
        $user = $userModel->where(['user_token' => $user_token])->find();

        if(input('param.scrollHeight', 0, 'intval') < 220)
        {
            $chaola=0;
        }else{
            $chaola=1;
        }
        $data = [
            'title'=>$title,
            'user_id' => $user['id'],
            'center_id' => $user['center_id'],
            'course_id' => $course_id,
            'section_id' => $section_id,
            'content' => htmlspecialchars_decode($content),
            'create_time' => time(),
            'chaola'=>$chaola
        ];

        if ((new Question())->save($data) > 0) {
            return $this->ok('', 12104, '问题添加成功');
        } else {
            return $this->fail(12005, '添加问题失败');
        }
    }

    /**
     * 问题删除
     * @param user_token 用户令牌
     * @param question_id 问题id
     * @return array|bool
     */
    public function delete(){
//        $_GET['user_token'] = 'b616164e6ce937e8debb6345783a9746ebcd1e5c';
//        $_GET['timestamp'] = time();
//        $salt = 'qSccu';
//        $_GET['sign'] = encrypt_key(['v1/sectionnote/del_reply', $_GET['timestamp'], $_GET['user_token'], $salt], '');

        $user_token = input('param.user_token','','trim');
        $question_id = input('param.question',0,'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== true) {
            return $tokenRes;
        }

        if(empty($question_id)){
            return $this->fail(13001, '问题id不能为空');
        }

        $questionModel = new Question();
        $user = (new MoocUser())->where(['user_token' => $user_token])->find();
        $question = $questionModel->where(['id'=>$question_id,'user_id'=>$user['id']])->find();
        if($question == null){
            return $this->fail(13002, '问题不存在或此用户没有操作权限');
        }

        if($questionModel->where(['id'=>$question_id])->update(['delete_time'=>time()]) !== false){
            return $this->ok('',13101, '问题删除成功');
        }else{
            return $this->fail(13003, '问题删除失败');
        }

    }

    /**
     * 点赞问题
     * @param user_token  用户令牌
     * @param question_id 问题id
     * @return array|bool
     */
    public function addLike(){
        $user_token = input('param.user_token','','trim');
        $question_id = input('param.question_id',0,'trim');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== true) {
            return $tokenRes;
        }

        if (empty($question_id)) {
            return $this->fail(20050, '问题id必须');
        }

        $userModel = new MoocUser();
        $questionModel = new Question();
        $likeModel = new Like();
        $user = $userModel->where(['user_token' => $user_token])->find();
        $note = $questionModel->where(['id' => $question_id])->find();
        if ($note === null) {
            return $this->fail(20052, '问题不存在');
        }
        $is_exist = $likeModel->where(['user_id' => $user['id'], 'resource_id' => $question_id, 'type' => 3])->find();
        if ($is_exist) {
            return $this->fail(20053, '已点赞');
        }

        $data = [
            'user_id' => $user['id'],
            'resource_id' => $question_id,
            'type' => 3,
            'create_time' => time()
        ];

        if ($likeModel->save($data) > 0) {
            $questionModel->where(['id' => $question_id])->setInc('like_num');
            return $this->ok('', 20152, '笔记点赞成功');
        } else {
            return $this->fail(230053, '笔记点赞失败');
        }


    }


    /**
     * 回答添加
     * @param user_token 用户令牌
     * @param content 回答内容
     * @param question_id 问题id
     * @return array|bool
     */
    public function create_answer()
    {
        $user_token = input('param.user_token', '', 'trim');
        $content = input('param.content', '', 'trim');
        $question_id = input('param.question_id', 0, 'intval');
        $reply_id = input('param.reply_id',0,'intval');

        //用户令牌
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== true) {
            return $tokenRes;
        }
        if (empty($content)) {
            return $this->fail(12001, '问题不能为空');
        }
        if (empty($question_id)) {
            return $this->fail(12002, '问题id必须');
        }

        //数据整理
        $userModel = new MoocUser();
        $questionModel = new Question();
        $user = $userModel->where(['user_token' => $user_token])->find();
        $question = $questionModel->where(['id' => $question_id])->find();
        if($question === null){
            return $this->fail(12003,'问题不存在');
        }
        $data = [
            'user_id' => $user['id'],
            'question_id' => $question_id,
            'reply_id' => $reply_id,
            'content' => $content,
            'create_time' => time()
        ];

        $answerModel = new Answer();
        if ($answerModel->save($data) > 0) {
            $comment_num = $answerModel->where(['question_id'=>$question_id])->count(1);
            if($comment_num >= 5){
                $questionModel->where(['id'=>$question_id])->update(['status'=>3]);
            }else{
                $questionModel->where(['id'=>$question_id])->update(['status'=>1]);
            }
            return $this->ok('', 12104, '回答添加成功');
        } else {
            return $this->fail(12005, '回答添加失败');
        }
    }

    /**
     * 回答删除
     * @param user_token 用户令牌
     * @param answer_id  回答id
     * @return array|bool
     */
    public function del_answer()
    {
//        $_GET['user_token'] = '4800970a86649ca1ce6215864cc3df8cec0319a9';
//        $_GET['timestamp'] = time();
//        $salt = 'Fkg7e';
//        $_GET['sign'] = encrypt_key(['v1/questionanswer/del_answer', $_GET['timestamp'], $_GET['user_token'], $salt], '');
//        $_GET['answer_id'] = 3;

        $user_token = input('param.user_token', '', 'trim');
        $answer_id = input('param.answer_id', 0, 'intval');

        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== true) {
            return $tokenRes;
        }

        $userModel = new MoocUser();
        $answerModel = new Answer();
        $user = $userModel->where(['user_token' => $user_token])->find();
        $answer = $answerModel->where(['id' => $answer_id])->find();
        if ($answer === null) {
            return $this->fail(12006, '回答不存在');
        }
        if ($user['id'] !== $answer['user_id']) {
            return $this->fail(12007, '该回答不属于此用户，不能删除');
        }

        if (false !== $answerModel->where(['id' => $answer_id])->update(['delete_time' => time()])) {
            return $this->ok('',12108,'删除成功');
        } else {
            return $this->fail(12009,'删除失败');
        }

    }

    /**
     * 问答详情(wx)
     * @param question_id 问题id
     * @return array|bool
     */
    public function read1(){
        $user_token = input('param.user_token','','trim');
        $question_id = input('param.question_id',0,'intval');

        if(empty($question_id)){
            return $this->fail(12009,'问题id必须');
        }

        $questionModel = new Question();
        $answerModel = new Answer();
        $question = $questionModel
                    ->alias('q')
                    ->join('mooc_user mu','mu.id=q.user_id')
                    ->join('section s','s.id=q.section_id','left')
                    ->join('chapter c','c.id=s.chapter_id','left')
                    ->join('course cs','cs.id=q.course_id','left')
                    ->where(['q.id'=>$question_id])
                    ->field('q.*,mu.avatar,mu.id as user_id,mu.nick_name,mu.avatar,mu.type as user_type,s.section_title,c.chapter_title,c.id as chapter_id,cs.course_title,cs.id as course_id,0 as is_like,0 as is_comment')
                    ->find();
        if($question === null){
            return $this->fail(12010,'问题不存在');
        }
        $question['content'] = htmlspecialchars_decode($question['content']);
        $questionModel->where('id',$question_id)->setInc('page_view');

        //用户登陆状态下判断是否评论或点赞
        if($user_token) {
            $user_id = (new MoocUser())->where(['user_token' => $user_token])->value('id');
            $note['is_like'] = (new Like())->where(['user_id' => $user_id, 'resource_id' =>$question_id, 'type' => 3])->count(1);
            $note['is_comment'] = (new Answer())->where(['user_id' => $user_id, 'question_id' => $question_id, 'delete_time' => 0])->count(1);
        }

        $answerList = $answerModel
                    ->alias('a')
                    ->join('mooc_user mu','mu.id=a.user_id')
                    ->where(['a.question_id'=>$question_id])
                    ->field('a.id,a.user_id,a.content,a.question_id,a.reply_id,mu.id as user_id,mu.nick_name,mu.avatar,mu.type as user_type')
                    ->select();

        $answers = [];
        if($answerList){
            $answerList = \collection($answerList)->toArray();
            foreach($answerList as $key=>$value){
                $answerList[$key]['content'] = htmlspecialchars_decode($answerList[$key]['content']);
                if($value['reply_id'] == 0){
                    array_push($answers,$value);
                }
            }
        }else{
            $answerList = [];
        }

        foreach($answers as $k=>$v){
            foreach($answerList as $key=>$value){
                if($v['id'] = $value['reply_id']){
                    $answers[$k]['children'][] = $value;
                }
            }
        }

        return $this->ok(['question'=>$question,'answers'=>$answers],12110,'获取问答成功');
    }

    /**
     * 问答详情
     * @param question_id 问题id
     * @return array|bool
     */
    public function read(){
        $user_token = input('param.user_token','','trim');
        $question_id = input('param.question_id',0,'intval');

        if(empty($question_id)){
            return $this->fail(12009,'问题id必须');
        }

        $questionModel = new Question();
        $answerModel = new Answer();
        $question = $questionModel
            ->alias('q')
            ->join('mooc_user mu','mu.id=q.user_id')
            ->join('section s','s.id=q.section_id','left')
            ->join('chapter c','c.id=s.chapter_id','left')
            ->join('course cs','cs.id=q.course_id','left')
            ->where(['q.id'=>$question_id])
            ->field('q.*,mu.avatar,mu.id as user_id,mu.nick_name,mu.avatar,mu.type as user_type,s.section_title,c.chapter_title,c.id as chapter_id,cs.course_title,cs.id as course_id,0 as is_like,0 as is_comment')
            ->find();
        if($question === null){
            return $this->fail(12010,'问题不存在');
        }
        $question['content'] = htmlspecialchars_decode($question['content']);
        $questionModel->where('id',$question_id)->setInc('page_view');

        //用户登陆状态下判断是否评论或点赞
        if($user_token) {
            $user_id = (new MoocUser())->where(['user_token' => $user_token])->value('id');
            $note['is_like'] = (new Like())->where(['user_id' => $user_id, 'resource_id' =>$question_id, 'type' => 3])->count(1);
            $note['is_comment'] = (new Answer())->where(['user_id' => $user_id, 'question_id' => $question_id, 'delete_time' => 0])->count(1);
        }

        $answerList = $answerModel
            ->alias('a')
            ->join('mooc_user mu','mu.id=a.user_id')
            ->where(['a.question_id'=>$question_id])
            ->field('a.*,mu.id as user_id,mu.nick_name,mu.avatar,mu.type as user_type')
            ->select();

        if($answerList){
            $answerList = \collection($answerList)->toArray();
            foreach($answerList as $key=>$value){
                $answerList[$key]['content'] = htmlspecialchars_decode($answerList[$key]['content']);
            }
        }else{
            $answerList = [];
        }

        return $this->ok(['question'=>$question,'answers'=>$answerList],12110,'获取问答成功');
    }
}
