<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/8/7
 * Time: 16:14
 */

namespace app\v1\controller;

use app\v1\model\CenterCourse;
use app\v1\model\MoocUser;
use \app\v1\model\Schedule as Schedules;

class Schedule extends Base
{
    /**
     * 获取当前进度(某一节的进度)
     * @param user_token 用户令牌
     * @param course_id 课程id  section_id
     * @param section_id  章节id
     * @param current_time 当前观看的时间
     * @return array|bool
     */
    public function index()
    {
//        $_GET['user_token']  = '7429bcbe405bc9ab6b1b4bd70633a59f056caca8';
//        $_GET['timestamp'] = $timestamp = time();
//        $salt = 'ttVm5';
//        $url = 'v1/schedule/update';
//        $_GET['sign'] = encrypt_key([$_GET['user_token'], $url, $timestamp, $salt], '');

        $user_token = input('param.user_token', '', 'trim');
        $course_id = input('param.course_id', 0, 'intval');
        $section_id = input('param.section_id',0,'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes != true) {
            return $tokenRes;
        }

        if (empty($course_id)) {
            return $this->fail(10001, '课程id必须');
        }

        $scheModel = new Schedules();
        $user = $this->getUserInfo($user_token);
        $speed = $scheModel->where(['user_id' => $user['id'], 'course_id' => $course_id])->field('section_id,current_time,more')->find();
        if($speed['section_id'] == $section_id){
            $speed['play_time'] = $speed['current_time'];
        }else{
            $play_time = 0;
            if($speed['more']){
                $more = json_decode($speed['more'],true);
                foreach($more as $item){
                    foreach($item as $key=>$value){
                        if($key === $section_id) {
                            $play_time = $value;
                        }
                    }
                }
            }
            $speed['play_time'] = $play_time;
        }
        unset($speed['more']);
        unset($speed['section_id']);
        unset($speed['current_time']);

        return $this->ok($speed, 10100, '进度获取成功');

    }

    /**
     * 更新当前进度
     * @param user_token 用户令牌
     * @param course_id 课程id  section_id
     * @param section_id  章节id
     * @param current_time 当前观看的时间
     * @return array|bool
     */
    public function update()
    {
        //        //测试用例
//        $_GET['user_token']  = 'cd69089bea5af15192e10ce17be7d4939eb02bb7';
//        $_GET['timestamp'] = $timestamp = time();
//        $salt = 'ttVm5';
//        $url = 'v1/schedule/update';
//        $_GET['sign'] = encrypt_key([$_GET['user_token'], $url, $timestamp, $salt], '');

        $user_token = input('param.user_token', '', 'trim');
        $course_id = input('param.course_id', 0, 'intval');
        $section_id = input('param.section_id', 0, 'intval');
        $current_time = input('param.current_time', 0, 'intval');

        //令牌校验
        $tokenRes = checkUserToken($user_token);
        if ($tokenRes != true) {
            return $tokenRes;
        }

        if (empty($course_id)) {
            return $this->fail(10001, '课程id必须');
        }

        if (empty($section_id)) {
            return $this->fail(10002, '节id必须');
        }

        if (empty($current_time)) {
            return $this->fail(10003, '当前观看时间必须');
        }

        $scheModel = new Schedules();
        $user = $this->getUserInfo($user_token);
        $speed = $scheModel->where(['user_id' => $user['id'], 'course_id' => $course_id])->find();

        $data = [
            'section_id' => $section_id,
            'current_time' => $current_time
        ];
        if ($speed == null) {
            //之前未观看过此课程  添加进度
            $data['course_id'] = $course_id;
            $data['user_id'] = $user['id'];
            $data['center_id'] = $user['center_id'];
            $data['more'] = json_encode([$section_id=>0]);
            if($scheModel->save($data) > 0 ){
                return $this->ok('',11111,'添加进度成功');
            }else{
                return $this->fail(11011,'添加进度失败');
            }

        } else {
            //之前观看过此课程   更新进度
            $insert = false;
            if($speed['more'] != ''){
                $more = json_decode($speed['more'],true);
                foreach($more as $key=>$value) {
                    if (array_key_exists($section_id, $value)) { //[4=>4]
                        $more[$key][$section_id] = $current_time;
                        $insert = true;
                    }
                }
                if($insert == false){
                    array_push($more,[$section_id=>$current_time]);
                }
            }else{
                $more = [];
                array_push($more,[$section_id=>$current_time]);
            }

            $data['more'] = json_encode($more);
            $data['section_id'] = $section_id;
            $data['current_time'] = $current_time;
            $data['last_stu_time'] = time();
            if ($scheModel->where(['id' => $speed['id']])->update($data) !== false) {
                return $this->ok('',12111,'更新进度成功');
            } else {
                return $this->fail(12011,'更新进度失败');
            }
        }

    }

    //获取用户当前的进度（课程详情页面）
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
        $user = $this->getUserInfo($user_token);

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
        $scheduleModel = new Schedules();
        $baomingModel  = new \app\v1\model\Baoming();
        $yibaoming     = $baomingModel->where(['user_id' => $user['id'], 'course_id' => $course_id])->find();
        if ($yibaoming)
        {
            //已报名 确认看到第几节
            $speed = $scheduleModel
                ->alias('sd')
                ->where(['sd.user_id' => $user['id'], 'sd.course_id' => $course_id])
                ->field('sd.section_id,sd.current_time,sd.more')
                ->find();
            $total_time = 0;
            if($speed['more']){
                $more = json_decode($speed['more'],true);
                if($more){
                    foreach($more as $item){
                        foreach($item as $key=>$value){
                            $total_time += $value;
                        }
                    }
                }
            }
            $speed['total_time'] = $total_time;
            $all_section = (new \app\v1\model\Chapter())->alias('c')->join('section s','s.chapter_id=c.id')->where(['c.course_id'=>$course_id])->field('s.*')->select();
            $speed['all_section'] = $all_section;
            unset($speed['more']);

            return $this->ok($speed, 10006, '获取进度成功');
        }else{
            return $this->fail(10011,'未报名');
        }
    }
}