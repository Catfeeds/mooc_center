<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/8/1
 * Time: 15:57
 */

namespace app\v1\controller;

use app\v1\model\CenterCourse;
use app\v1\model\Collect;
use app\v1\model\Course;
use app\v1\model\MoocUser;
use app\v1\model\Baoming as Baomings;
use app\v1\model\Section;
use app\v1\model\Schedule;

class Baoming extends Base {
    /**
     * @return array|bool
     * @throws user_token 用户令牌
     * @throws course_id 课程id
     */
    public function create()
    {
        $user_token = input('param.user_token', '', 'trim');
        $course_id  = input('param.course_id', 0, 'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== TRUE)
        {
            return $tokenRes;
        }

        //数据校验
        $cenCourModel = new CenterCourse();
        $user         = getUserInfo($user_token);
//		//是否是学生
//		if ($user['type'] == 2)
//		{
//			return $this->fail(11011, '老师不能报名');
//		}
        if ( ! empty($course_id))
        {
            $course = $cenCourModel->where(['course_id' => $course_id, 'center_id' => $user['center_id']])->find();
            if ( ! $course)
            {
                return $this->fail(10010, '课程不存在或课程不属于此文化馆');
            }
        }
        else
        {
            return $this->fail(10012, '课程id必须');
        }

        //是否已报名
        $scheduleModel = new Schedule();
        $baomingModel  = new Baomings();
        $chapterModel  = new \app\v1\model\Chapter();
        $sectionModel  = new Section();
        $yibaoming     = $baomingModel->where(['user_id' => $user['id'], 'course_id' => $course_id])->find();
        if ($yibaoming)
        {
            //已报名 确认看到第几节
            $speed = $scheduleModel
                ->alias('sd')
                ->join('__SECTION__ s', 's.id=sd.section_id')
                ->where(['sd.user_id' => $user['id'], 'sd.course_id' => $course_id])
                ->field('sd.section_id,s.video_main,sd.current_time')
                ->find();
            //添加播放量
            $cenCourModel->where(['center_id' => $user['center_id'], 'course_id' => $course_id])->setInc('play_num');
            return $this->ok($speed, 10006, '已报名');
        }

        //整理数据
        $data = [
            'center_id' => $user['center_id'],
            'user_id' => $user['id'],
            'course_id' => $course_id,
            'create_time' => time()
        ];

        if ($baomingModel->allowField(TRUE)->save($data) > 0)
        {
            //无章节情况下
//            $more = '';
//			$chapter_id              = $chapterModel->where(['course_id' => $course_id])->order(['id' => 'asc'])->value('id');
//			if($chapter_id){
//                $section                 = $sectionModel->where(['chapter_id' => $chapter_id])->order(['id' => 'asc'])->field('id as section_id,video_main')->find();
//                $section['current_time'] = 0;
//                if($section){
//                    $more = json_encode([[$section['section_id'] => 0]]);
//                }
//            }

            //获取此课程第一章第一节的节id
            $chapter_id              = $chapterModel->where(['course_id' => $course_id])->order(['id' => 'asc'])->value('id');
            $section                 = $sectionModel->where(['chapter_id' => $chapter_id])->order(['id' => 'asc'])->field('id as section_id,video_main')->find();
            $more = '';
            if($section != null) {
                $section = $section->toArray();
                $section_id = $section['section_id'];
                $more = json_encode([[$section_id => 0]]);
            }else{
                $section_id = 0;
            }
            $section['current_time'] = 0;

            //进度表添加数据
            $sche_data=[
                'center_id' => $user['center_id'],
                'user_id' => $user['id'],
                'course_id' => $course_id,
                'section_id' =>$section_id,
                'current_time' => 0,
                'last_stu_time'=>time(),
                'more' => $more
            ];
            $scheduleModel->save($sche_data);

            //添加播放量
            $cenCourModel->where(['center_id' => $user['center_id'], 'course_id' => $course_id])->setInc('play_num');
            return $this->ok('', 10111, '报名成功');
        }
        else
        {
            return $this->fail(10002, '报名失败');
        }


    }

    //取消报名服务

    /**
     * @return array|bool
     * @throws user_token 用户令牌
     * @throws course_id 课程id
     */
    function cancel()
    {

        $_GET['user_token'] = 'cd69089bea5af15192e10ce17be7d4939eb02bb7';
        $_GET['timestamp']  = time();
        $salt               = 'ttVm5';
        $_GET['sign']       = encrypt_key(['v1/baoming/create', $_GET['timestamp'], $_GET['user_token'], $salt], '');
        $_GET['course_id']  = 17;

        $user_token = input('param.user_token', '', 'trim');
        $course_id  = input('param.course_id', 0, 'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== TRUE)
        {
            return $tokenRes;
        }

        //数据校验
        $Db           = new \think\Db;
        $cenCourModel = new CenterCourse();
        $user         = getUserInfo($user_token);
        if ( ! empty($course_id))
        {
            $course = $cenCourModel->where(['course_id' => $course_id, 'center_id' => $user['center_id']])->find();
            if ( ! $course)
            {
                return $this->fail(10010, '课程不存在或课程不属于此文化馆');
            }
        }
        else
        {
            return $this->fail(10012, '课程id必须');
        }
        $course_id = input('param.course_id', 0);
        $ret       = $Db::query("delete from baoming where course_id={$course_id} and user_id=" . $user['id']);
        if ($ret)
        {
            $Db::query("delete from schedule where course_id={$course_id} and user_id=" . $user['id']);
        }
        return $this->ok("", 200, '取消报名成功');


    }

    /**用户是否已报名 是否已收藏课程
     * @return array|bool
     * @throws user_token 用户令牌
     * @throws course_id 课程id
     */
    function is_collect_bm_course()
    {
//        $_GET['user_token'] = 'cd69089bea5af15192e10ce17be7d4939eb02bb7';
//        $_GET['timestamp']  = time();
//        $salt               = 'ttVm5';
//        $_GET['sign']       = encrypt_key(['v1/baoming/create', $_GET['timestamp'], $_GET['user_token'], $salt], '');
//        $_GET['course_id']  = 17;

        $user_token = input('param.user_token', '', 'trim');
        $course_id  = input('param.course_id', 0, 'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== TRUE)
        {
            return $tokenRes;
        }

        $user = getUserInfo($user_token);
        //是否已报名
        $is_baming = (new Baomings())->where(['user_id'=>$user['id'],'course_id'=>$course_id])->count();
        //是否收藏课程
        $is_collect  = (new Collect())->where(['user_id'=>$user['id'],'course_id'=>$course_id])->count();

        return $this->ok(['is_baoming'=>$is_baming,'is_collect'=>$is_collect],12121,'获取数据成功');

    }

    public function speed(){
        $user_token = input('param.user_token', '', 'trim');
        $course_id  = input('param.course_id', 0, 'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes !== TRUE)
        {
            return $tokenRes;
        }

        //数据校验
        $cenCourModel = new CenterCourse();
        $user         = getUserInfo($user_token);

        if ( ! empty($course_id))
        {
            $course = $cenCourModel->where(['course_id' => $course_id, 'center_id' => $user['center_id']])->find();
            if ( ! $course)
            {
                return $this->fail(10010, '课程不存在或课程不属于此文化馆');
            }
        }
        else
        {
            return $this->fail(10012, '课程id必须');
        }

        //是否已报名
        $scheduleModel = new Schedule();
        $baomingModel  = new Baomings();
        $yibaoming     = $baomingModel->where(['user_id' => $user['id'], 'course_id' => $course_id])->find();
        if ($yibaoming)
        {
            //已报名 确认看到第几节
            $speed = $scheduleModel
                ->alias('sd')
                ->join('__SECTION__ s', 's.id=sd.section_id')
                ->where(['sd.user_id' => $user['id'], 'sd.course_id' => $course_id])
                ->field('sd.section_id,s.video_main,sd.current_time,sd.more')
                ->find();
            $more = json_decode($speed['more'],true);
            $total_time = 0;
            if($more){
                foreach($more as $item){
                    foreach($item as $key=>$value){
                        $total_time += $value;
                    }
                }
            }
            $speed['total_time'] = $total_time;
            //添加播放量
            $cenCourModel->where(['center_id' => $user['center_id'], 'course_id' => $course_id])->setInc('play_num');
            return $this->ok($speed, 10006, '已报名');
        }else{
            return $this->fail(10011,'未报名');
        }
    }

    public function arrpreg(){
        $a=Array(0 => Array('id' => 66,'class_name' => 'www.iiwnet.com'),1 => Array('id' => 67,'class_name' => 'linux' ));
        $b=Array(0 => Array('class_count'=> 8),1 => Array('class_count' => 2));

        return array_merge($a,$b);
        $arr = array();
        foreach ($a as $k => $r) {
            foreach($r as $k1 => $r1){
                $arr[$k][$k1] = $r1;
            }

        }
        foreach ($b as $k => $r) {
            foreach($r as $k1 => $r1){
                $arr[$k][$k1] = $r1;
            }
        }
        return $arr;
    }
}