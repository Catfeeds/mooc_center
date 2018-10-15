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
use app\v1\model\CourseRela;
use app\v1\model\MoocUser;
use app\v1\model\Baoming;
use app\v1\model\Chapter;
use app\v1\model\Question;
use app\v1\model\Section;
use app\v1\model\Course;
use app\v1\model\SectionNote;

class My extends Base {
    /**
     * 个人中心获取个人信息
     * @param user_token 用户token
     */
    public function index()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id   = $userRes['data']['user_id'];
            $center_id = $userRes['data']['center_id'];

        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        //获取个人信息
        $user               = (new MoocUser())
            ->alias('u')
            ->join('__FOLLOW__ f', 'f.follow_id = u.id', 'left')
            ->where('user_token', $user_token)
            ->where('center_id', $center_id)
            ->field('u.id,u.nick_name,u.sex,u.avatar,u.teacher_title,u.area,u.email,u.mobile,u.profile,u.type,count(f.follow_id) as fans_num')
            ->group('f.user_id')
            ->find();
        $user['follow_num'] = (new \app\v1\model\Follow())->where(['user_id' => $user['id']])->count(1);
        $user['profile']    = htmlspecialchars_decode($user['profile']);
        //获取学习时长服务
        $Db            = new \think\Db;
        $user_schedule = $Db::query("select * from schedule where user_id={$user_id} and center_id={$center_id}");
        if ( ! empty($user_schedule))
        {
            $sum = 0;
            foreach ($user_schedule as $k => $v)
            {
                if ( ! empty($v['more']))
                {


                    foreach (json_decode($v['more'], TRUE) as $kk => $vv)
                    {
                        foreach ($vv as $kkk => $vvv)
                        {
                            $sum = $sum + $vvv;
                        }

                    }
                }

            }
            $user['schedule'] = $sum;
        }
        else
        {
            $user['schedule'] = 0;
        }


        return $this->ok($user, 12222, '获取用户个人信息成功');
    }

    /**
     * 个人中心修改个人信息   /v1/user/edit
     */
    public function edit()
    {
        $param = $this->request->param();

        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];

        }
//        return $param;
        $centerModel = new MoocCenter();
        $userModel   = new MoocUser();
        $user_token  = $userModel->where(['id' => $user_id])->value('user_token');
        if ($user_token)
        {
            //前台修改用户信息  仅允许修改昵称，职称，头像，单位
            $res = checkUserToken($user_token);
            if (TRUE !== $res)
            {
                return $res;
            }
            $user_type = $userModel->where(['user_token' => $user_token])->value('type');
            if ($user_type == 1)
            {
                //学生
                $allowdField = ['nick_name', 'sex', 'avatar', 'area', 'email', 'mobile'];
                $sql_update  = "";
                if ( ! empty($this->request->param('nick_name')) && ! empty($sql_update))
                {
                    $sql_update = " ,nick_name='" . $this->request->param('nick_name') . "'";
                }
                elseif ( ! empty($this->request->param('nick_name')) && empty($sql_update))
                {
                    $sql_update = " SET nick_name='" . $this->request->param('nick_name') . "'";

                }

                if ( ! empty($this->request->param('sex')) && ! empty($sql_update))
                {
                    switch ($this->request->param('sex'))
                    {
                        case "b":
                            $sex = 1;
                            break;
                        case "g":
                            $sex = 2;
                            break;
                        case "s":
                            $sex = 0;
                            break;
                        default:
                            $sex = 0;
                            break;
                    }
                    $sql_update .= " ,sex=" . $sex . "";
                }
                elseif ( ! empty($this->request->param('sex')) && empty($sql_update))
                {
                    switch ($this->request->param('sex'))
                    {
                        case "b":
                            $sex = 1;
                            break;
                        case "g":
                            $sex = 2;
                            break;
                        case "s":
                            $sex = 0;
                            break;
                    }
                    $sql_update .= " SET sex=" . $sex . "";
                }


                if ( ! empty($this->request->param('avatar')) && ! empty($sql_update))
                {
                    $sql_update .= " ,avatar='" . $this->request->param('avatar') . "'";
                }
                elseif ( ! empty($this->request->param('avatar')) && empty($sql_update))
                {
                    $sql_update .= " SET avatar='" . $this->request->param('avatar') . "'";
                }

                if ( ! empty($this->request->param('area')) && ! empty($sql_update))
                {
                    $sql_update .= " ,area='" . $this->request->param('area') . "'";
                }
                elseif ( ! empty($this->request->param('area')) && empty($sql_update))
                {
                    $sql_update .= " SET area='" . $this->request->param('area') . "'";
                }

                if ( ! empty($this->request->param('email')) && ! empty($sql_update))
                {
                    $sql_update .= " ,email='" . $this->request->param('email') . "'";
                }
                elseif ( ! empty($this->request->param('email')) && empty($sql_update))
                {
                    $sql_update .= " SET email='" . $this->request->param('email') . "'";
                }

                if ( ! empty($this->request->param('mobile')) && ! empty($sql_update))
                {
                    $sql_update .= " ,mobile='" . $this->request->param('mobile') . "'";
                }
                elseif ( ! empty($this->request->param('mobile')) && empty($sql_update))
                {
                    $sql_update .= " SET mobile='" . $this->request->param('mobile') . "'";
                }

                $Db = new \think\Db;
                $Db::query("update mooc_user {$sql_update} where user_token='" . $user_token . "'");
                return ok('', 26105, '编辑个人信息成功', 1);
                die;
            }
            else
            {
                //老师
                $allowdField = ['nick_name', 'sex', 'avatar', 'area', 'email', 'mobile', 'teacher_title', 'department', 'profile'];
                //学生
                $sql_update = "";
                if ( ! empty($this->request->param('nick_name')) && ! empty($sql_update))
                {
                    $sql_update = " ,nick_name='" . $this->request->param('nick_name') . "'";
                }
                elseif ( ! empty($this->request->param('nick_name')) && empty($sql_update))
                {
                    $sql_update = " SET nick_name='" . $this->request->param('nick_name') . "'";

                }

                if ( ! empty($this->request->param('sex')) && ! empty($sql_update))
                {
                    switch ($this->request->param('sex'))
                    {
                        case "b":
                            $sex = 1;
                            break;
                        case "g":
                            $sex = 2;
                            break;
                        case "s":
                            $sex = 0;
                            break;
                    }
                    $sql_update .= " ,sex=" . $sex . "";
                }
                elseif ( ! empty($this->request->param('sex')) && empty($sql_update))
                {
                    switch ($this->request->param('sex'))
                    {
                        case "b":
                            $sex = 1;
                            break;
                        case "g":
                            $sex = 2;
                            break;
                        case "s":
                            $sex = 0;
                            break;
                    }
                    $sql_update .= " SET sex=" . $sex . "";
                }

                if ( ! empty($this->request->param('avatar')) && ! empty($sql_update))
                {
                    $sql_update .= " ,avatar='" . $this->request->param('avatar') . "'";
                }
                elseif ( ! empty($this->request->param('avatar')) && empty($sql_update))
                {
                    $sql_update .= " SET avatar='" . $this->request->param('avatar') . "'";
                }

                if ( ! empty($this->request->param('area')) && ! empty($sql_update))
                {
                    $sql_update .= " ,area='" . $this->request->param('area') . "'";
                }
                elseif ( ! empty($this->request->param('area')) && empty($sql_update))
                {
                    $sql_update .= " SET area='" . $this->request->param('area') . "'";
                }

                if ( ! empty($this->request->param('email')) && ! empty($sql_update))
                {
                    $sql_update .= " ,email='" . $this->request->param('email') . "'";
                }
                elseif ( ! empty($this->request->param('email')) && empty($sql_update))
                {
                    $sql_update .= " SET email='" . $this->request->param('email') . "'";
                }

                if ( ! empty($this->request->param('mobile')) && ! empty($sql_update))
                {
                    $sql_update .= " ,mobile='" . $this->request->param('mobile') . "'";
                }
                elseif ( ! empty($this->request->param('mobile')) && empty($sql_update))
                {
                    $sql_update .= " SET mobile='" . $this->request->param('mobile') . "'";
                }

                if ( ! empty($this->request->param('teacher_title')) && ! empty($sql_update))
                {
                    $sql_update .= " ,teacher_title='" . $this->request->param('teacher_title') . "'";
                }
                elseif ( ! empty($this->request->param('teacher_title')) && empty($sql_update))
                {
                    $sql_update .= " SET teacher_title='" . $this->request->param('teacher_title') . "'";
                }

                if ( ! empty($this->request->param('profile')) && ! empty($sql_update))
                {
                    $sql_update .= " ,profile='" . $this->request->param('profile') . "'";
                }
                elseif ( ! empty($this->request->param('profile')) && empty($sql_update))
                {
                    $sql_update .= " SET profile='" . $this->request->param('profile') . "'";
                }

                $Db = new \think\Db;
                //exit("update mooc_user {$sql_update} where user_token='".$user_token."'");


                $Db::query("update mooc_user {$sql_update} where user_token='" . $user_token . "'");
                return ok('', 26105, '编辑个人信息成功', 1);
                die;
            }
            $where['user_token'] = $user_token;
        }
        else
        {
            //后台修改用户信息
            $center_token = $this->request->param('center_token');
            $res          = checkCenterToken($center_token);
            if (TRUE !== $res)
            {
                return $res;
            }
            $id          = $this->request->param('id');
            $where['id'] = $id;
            $allowdField = ['nick_name', 'avatar', 'teacher_title', 'department', 'status', 'user_login', 'user_pass', 'profile'];

            //验证该id用户是否属于此文化馆
            $center_id = $centerModel->where(['center_token' => $center_token])->value('id');
            $user_info = $userModel->where(['id' => $id, 'center_id' => $center_id])->find();
            if ($user_info == NULL)
            {
                return $this->fail(20001, '该用户不属于此文化馆,没有权限修改');
            }

            //用户名校验
            $user_login = $this->request->param('user_login', '', 'trim');
            if ( ! empty($user_login))
            {
                $userRes = checkUserLogin($user_login, $center_id);
                if (TRUE !== $userRes)
                {
                    return $userRes;
                }
            }
            else
            {
                return $this->fail(23003, '用户名不能为空');
            }

            //密码校验
            $user_pass = $this->request->param('user_pass', '', 'trim');
            if (strlen($user_pass) > 0)
            {
                //密码校验
                $passRes = checkUserPass($user_pass);
                if (TRUE !== $passRes)
                {
                    return $passRes;
                }
                $param['salt']      = generate_salt();
                $param['user_pass'] = generate_password($user_pass, $param['salt']);
            }
            else
            {
                unset($param['salt']);
                unset($param['user_pass']);
            }

        }

        //入参校验
        $userValidate = new UserValidate();
        if ( ! $userValidate->scene('edit_info')->check($param))
        {
            return fail(26005, $userValidate->getError());
        }

//        $user_login = $this->request->param('param.user_login');
//        $userRes = checkUserLogin($user_login,$center_id);
//        if (true !== $userRes) {
//            return $userRes;
//        }

//        //密码校验
//        $user_pass = $this->request('param.user_pass', '', 'trim');
//        if (strlen($user_pass) > 0) {
//            //密码校验
//            $passRes = checkUserPass($user_pass);
//            if (true !== $passRes) {
//                return $passRes;
//            }
//            $param['salt'] = generate_salt();
//            $param['user_pass'] = generate_password($user_pass, $param['salt']);
//        } else {
//            unset($param['salt']);
//            unset($param['user_pass']);
//        }
        //数据提交
        $userModel = new MoocUser();
        if (FALSE === $userModel->allowField($allowdField)->isUpdate(TRUE)->save($param, $where))
        {
            return fail(26006, '编辑失败', 1);
        }
        else
        {
            return ok('', 26105, '编辑个人信息成功', 1);
        }
    }


    /**
     * 我的课程-课程表
     * @param user_token 用户token
     */
    public function myCourse()
    {
        $Db      = new \think\Db;
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        $user_type  = $userModel->where(['id' => $user_id])->value('type');
        //$user_token="e6cf3a09c5d51b785056f591c6c3008680c0b97b";
        $page = input('param.page', 0, 'intval');
        $len  = input('param.len', 0, 'intval');


        $list_order = input('param.order', -1, 'intval');  //获取最新学习课程需要传参

        if ($list_order != -1)
        {
            $order = ['sd.update_time' => 'desc'];
        }
        else
        {
            $order = ['b.create_time' => 'desc'];
        }
        if ($user_type == 2)
        {
            if ($list_order == 1)
            {
                $order = ['sd.update_time' => 'desc'];
            }
            else
            {
                $order = ['b.create_time' => 'desc'];
            }
        }

        //获取学生的课程和进度数据
        $user        = (new MoocUser())->where(['user_token' => $user_token])->find();
        $user_course = (new Baoming())
            ->alias('b')
            ->join('__COURSE__ c', 'c.id=b.course_id')
            ->join('__SCHEDULE__ sd', 'sd.user_id=b.user_id and sd.course_id = b.course_id', 'left')
            ->join('__SECTION__ s', 's.id=sd.section_id', 'left')
            ->join('__CHAPTER__ ct', 'ct.id=s.chapter_id', 'left')
            ->where(['b.user_id' => $user['id']])
            ->order($order)
            ->field('c.*,b.user_id,sd.last_stu_time,sd.section_id,sd.current_time,ct.id as chapter_id')
            ->limit(($page - 1) * $len . ',' . $len)
            ->group('c.id')
            ->select();

        if ($user_course != NULL)
        {
            $user_course = \collection($user_course)->toArray();
            //数据整理
            foreach ($user_course as $k => $item)
            {
                if (empty($item['total_time']))
                {
                    $item['schedule'] = '0%';
                }
                else
                {
                    $item['schedule'] = ceil(($item['current_time'] / $item['total_time']) * 100) . '%';
                }

                $isBaomings = $Db::query("select * from baoming where center_id=" . $userRes['data']['center_id'] . " and course_id=" . $item['id'] . " and user_id=" . $user_id);

                if (empty($isBaomings))
                {
                    $item['isBaoming'] = 'no';
                }
                else
                {
                    $item['isBaoming'] = 'yes';
                }

                //获取笔记总数服务
                $noteNum=$Db::query("select count(*) as cnt from section_note where center_id=" . $userRes['data']['center_id'] . " and course_id=" . $item['id'])[0]['cnt'];

                //获取问题服务总数服务
                $answerNum=0;
                $questions=$Db::query("select * from `question` where `center_id`=" . $userRes['data']['center_id'] . " and `course_id`=" . $item['id']);
                if(!empty($questions)){
                    foreach ($questions as $question_k=>$question_v)
                    {
                        $answerNum=$answerNum+$Db::query("select count(*) as cnt from `answer` where `question_id`=" . $question_v['id'] )[0]['cnt'];
                    }
                }
                $item['noteNum'] = $noteNum;
                $item['answerNum'] = $answerNum;
                //获取建科老师服务
                $teacher_ras=$Db::query("select * from course_rela where center_id=" . $userRes['data']['center_id'] . " and course_id=" . $item['id']." and `type`=3");
                if(!empty($teacher_ras)){
                    $teachers_temp=[];
                    foreach ($teacher_ras as $teacher_k=>$teacher_v){

                        $teachers_temp=$Db::query("select * from mooc_user where center_id=" . $userRes['data']['center_id'] . " and id=" . $teacher_v['other_id']);
                    }
                }
                $item['teacherNickName'] = current($teachers_temp)['nick_name'];

                $user_course[$k] = $this->_handleData($item);
            }

        }


        return $this->ok($user_course, 123456, '获取我的课程成功');

    }


    /**
     * 我的课程-课程表-老师
     * @param user_token 用户token
     */
    public function myCourseForTeacher()
    {
        $Db = new \think\Db;

        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel = new MoocUser();
//		$user_token = $userModel->where(['id' => $user_id])->value('user_token');----------------
//		$user_type  = $userModel->where(['id' => $user_id])->value('type');--------------------

//		$user_token="db6265eb8486d929ed7784a5d4ebc56131a687be";
//		$user_type  = $userModel->where(['user_token' => $user_token])->value('type');
        $page = input('param.page', 0, 'intval');
        $len  = input('param.len', 0, 'intval');


        $list_order = input('param.order', -1, 'intval');  //获取最新学习课程需要传参

        //获取学生的课程和进度数据
//		file_put_contents("/root/test.log","SELECT `c`.*, `cr`.`other_id`,
//	`sd`.`section_id`,
//	`sd`.`current_time`,
//	ct.id AS chapter_id
//FROM
//	`course_rela` `cr`
//INNER JOIN `course` `c` ON `c`.`id` = `cr`.`course_id`
//LEFT JOIN `schedule` `sd` ON `sd`.`user_id` = cr.other_id
//	AND sd.course_id = cr.course_id
//LEFT JOIN `section` `s` ON `s`.`id` = `sd`.`section_id`
//LEFT JOIN `chapter` `ct` ON `ct`.`id` = `s`.`chapter_id`
//WHERE
//	`cr`.`other_id` = {$user_id}
//	AND cr.type = 3
// "."\r\n",FILE_APPEND);
        $user_course = $Db::query("SELECT `c`.*,`ct`.`id` as `chapter_id`,`ct`.`chapter_title`
	/*`sd`.`section_id`,
	`sd`.`current_time`,
	ct.id AS chapter_id*/
FROM
	`course_rela` `cr`
INNER JOIN `course` `c` ON `c`.`id` = `cr`.`course_id`
/*LEFT JOIN `schedule` `sd` ON `sd`.`user_id` = cr.other_id
	AND sd.course_id = cr.course_id
LEFT JOIN `section` `s` ON `s`.`id` = `sd`.`section_id`
LEFT JOIN `chapter` `ct` ON `ct`.`id` = `s`.`chapter_id`*/
LEFT JOIN `chapter` `ct` ON `ct`.`course_id` = `c`.`id`
WHERE
	`cr`.`other_id` = {$user_id}
	AND cr.type = 3 GROUP BY `c`.`id` ");


        if ($user_course != NULL)
        {
            $user_course = \collection($user_course)->toArray();


            //数据整理
            foreach ($user_course as $k => $item)
            {
                //获取该门客最有一张和节
//				$item['update_chapter'] = 9;
//				$item['update_section'] = 2;
//				$item['update_chapter'] = $Db::query("SELECT * from chapter where course_id=".$item['id']." and status=1 order by id DESC limit 0,1")[0]['chapter_title'];
//
//				$courseId=$Db::query("SELECT * from chapter where course_id=".$item['id'])[0]['id'];
//				if(!empty($courseId)){
//					$item['update_section'] = $Db::query("SELECT * from section where chapter_id=".$courseId." and status=1 order by id limit 0,1")[0]['section_title'];
//				}else{
//					$item['update_section']=0;
//				}
                //exit("SELECT * from section where chapter_id=".$courseId." and status=1 order by id limit 0,1");
                /*if ($item['update_time'] == 0)
                {
                    $item['update_time'] = $item['create_time'];
                }
                else
                {
                    $item['update_time'] = $item['update_time'];
                }


                if (empty($item['total_time']))
                {
                    $item['schedule'] = '0%';
                }
                else
                {
                    $item['schedule'] = ceil(($item['current_time'] / $item['total_time']) * 100) . '%';
                }*/
                if ($item['update_time'] == 0)
                {
                    $item['update_time'] = $item['create_time'];
                }
                $user_course[$k] = $this->_handleTeacherData($item);
            }

            if ($list_order == 1)
            {
                $user_course = $this->list_sort_by($user_course, "update_time", "desc");
            }
            else
            {
                $user_course = $this->list_sort_by($user_course, "update_time", "asc");
            }

        }


        return $this->ok($user_course, 123456, '获取我的课程成功');

    }


    function list_sort_by($list, $field, $sortby = 'asc')
    {
        if (is_array($list))
        {
            $refer = $resultSet = array();
            foreach ($list as $i => $data)
            {
                $refer[$i] = &$data[$field];
            }
            switch ($sortby)
            {
                case 'asc': // 正向排序
                    asort($refer);
                    break;
                case 'desc': // 逆向排序
                    arsort($refer);
                    break;
                case 'nat': // 自然排序
                    natcasesort($refer);
                    break;
            }
            foreach ($refer as $key => $val)
            {
                $resultSet[] = &$list[$key];
            }
            return $resultSet;
        }
        return FALSE;
    }



    /**
     * 教师获取最新课程服务
     */
    /**
     * 我的课程-课程表
     * @param user_token 用户token
     */
    public function myLatestCourse()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        $Db         = new \think\Db;
        //$user_token = "e6cf3a09c5d51b785056f591c6c3008680c0b97b";
        $user_id = $userModel->where(['user_token' => $user_token])->value('id');
        $page    = input('param.page', 0, 'intval');
        $len     = input('param.len', 0, 'intval');
        $range   = input('param.range', 0, 'intval');

        $list_order = input('param.order', -1, 'intval');  //获取最新学习课程需要传参


        if ($list_order != -1)
        {
            $order = ['sd.update_time' => 'desc'];
        }
        else
        {
            $order = ['b.create_time' => 'desc'];
        }

        //获取教师最新课程服务
        if ($range == 0)
        {
            $sql = "select `c`.*, `cr`.`other_id` from `course_rela` `cr` INNER JOIN `course` `c` ON `c`.`id` = `cr`.`course_id` where cr.type=3 and cr.other_id=" . $user_id . " and c.delete_time=0";
        }
        elseif ($range == 3)
        {
            $time      = strtotime('-2 day', time());
            $beginTime = strtotime(date('Y-m-d 00:00:00', $time));
            $endTime   = strtotime(date('Y-m-d 23:59:59', time()));
            $sql       = "select `c`.*, `cr`.`other_id` from `course_rela` `cr` INNER JOIN `course` `c` ON `c`.`id` = `cr`.`course_id` where cr.type=3 and cr.other_id=" . $user_id . " and c.create_time>{$beginTime} and c.create_time<{$endTime} and c.delete_time=0";
        }
        elseif ($range == 7)
        {
            $time      = strtotime('-7 day', time());
            $beginTime = strtotime(date('Y-m-d 00:00:00', $time));
            $endTime   = strtotime(date('Y-m-d 23:59:59', time()));
            $sql       = "select `c`.*, `cr`.`other_id` from `course_rela` `cr` INNER JOIN `course` `c` ON `c`.`id` = `cr`.`course_id` where cr.type=3 and cr.other_id=" . $user_id . " and c.create_time>{$beginTime} and c.create_time<{$endTime} and c.delete_time=0";
        }
        $result = array();
        foreach ($Db::query($sql) as $key => $value)
        {
            $result[$key]['id']           = $value['id'];
            $result[$key]['course_title'] = $value['course_title'];
            $result[$key]['cover_img']    = $value['cover_img'];
            $result[$key]['end_time']     = $value['end_time'];
            $result[$key]['baoming_num']  = $Db::query("select count(*) as cnt from baoming where course_id=" . $value['id'])[0]['cnt'];

        }
        return $this->ok($result, 123456, '获取我的课程成功');

    }

    /**
     * 我的课程-课程表(学生）
     * 数据整理
     */
    private function _handleData($data)
    {
        $chapterModel = new Chapter();
        $sectionModel = new Section();

        //获取此节对应的 课程进行时长 课程id  章id
//        $studyInfo = $sectionModel
//            ->alias('s')
//            ->join('__CHAPTER__ c','c.id = s.chapter_id')
//            ->join('__SCHEDULE__ sd','sd.section_id=s.id')
//            ->where(['s.id'=>$data['section_id'],'sd.user_id'=>$data['user_id']])
//            ->field('sd.current_time,c.id,c.course_id')
//            ->find();

        $course_id        = $data['id'];
        $chapter_id       = $data['chapter_id'];
        $sec_current_time = $data['current_time'];

        //获取此课程此节对应章上面所有的章ids
        $chapter_ids = $chapterModel->where(['course_id' => $course_id, 'id' => ['<', $chapter_id]])->column('id');
        if ($chapter_ids)
        {  //此章不是第一章
            //获取此章上所有章的总时长
            $chapter_time = $sectionModel->where(['chapter_id' => ['in', $chapter_ids]])->value('sum(video_time)');
        }
        else
        {  //是第一章
            //此章节之上时常
            $chapter_time = 0;
        }

        //获取此章节的总时长
        //获取此节之前的时长
        $section_time = $sectionModel->where(['chapter_id' => $chapter_id, 'id' => ['<', $data['section_id']]])->value('sum(video_time)');

        //已学习总时长
        $stu_total_time = $chapter_time + $section_time + $sec_current_time;

        //学习进度
        //
        //
        if (empty($data['total_time']))
        {
            $speed = 0;
        }
        else
        {
            $speed = $stu_total_time / $data['total_time'];
        }


        $data['stu_total_time'] = $stu_total_time;
        $data['speed']          = $speed;

        return $data;
    }

    private function _handleTeacherData($data)
    {
        $chapterModel = new Chapter();
        $sectionModel = new Section();
        $course_id    = $data['id'];
        $chapter      = $chapterModel->where(['course_id' => $course_id])->order(['id' => 'desc'])->find();

        if ($chapter != NULL)
        {
            $section = $sectionModel->where(['chapter_id' => $chapter['id']])->order(['id' => 'desc'])->field('id as section_id,video_main,section_title')->find();

            $data['chapter_title'] = $chapter['chapter_title'];
            if ($section != NULL)
            {
                $data['section_title'] = $section['section_title'];
            }
            else
            {
                $data['section_title'] = '第零节';
            }


        }
        else
        {
            $data['chapter_title'] = '第零章';
            $data['section_title'] = '第零节';
        }

        return $data;


    }


    /**
     * 我的课程-笔记
     * @param user_token 用户token
     */
    public function myNote()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $Db         = new \think\Db;
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        //获取个人笔记数据
        $noteModel = new SectionNote();
        $user      = $userModel->where(['user_token' => $user_token])->find();
        //$user_token = 'ca2400401651e283eea2c6bf0b2974a979a781b0';
        $page = input('param.page', 0, 'intval');
        $len  = input('param.len', 0, 'intval');

        $search = input('param.keyword', '', 'trim');
        $where  = [];
        if ( ! empty($search))
        {
            $noteList     = $Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 AND `n`.`content` like '%{$search}%' and `n`.`user_id` = " . $user['id'] . " LIMIT " . (($page - 1) * $len) . ",{$len}");
            $noteList_new = array();
            foreach ($noteList as $key => $value)
            {
                $chapter_id       = $Db::query("select * from section where id=" . $value['section_id'])[0]['chapter_id'];
                $value['section'] = $Db::query("select * from section where id=" . $value['section_id'])[0]['section_title'];
                if ( ! empty($Db::query("select * from chapter where id=" . $chapter_id . " and course_id=" . $value['course_id'])))
                {
                    $value['chapter'] = $Db::query("select * from chapter where id=" . $chapter_id . " and course_id=" . $value['course_id'])[0]['chapter_title'];
                }
                $value['comment_num'] = $Db::query("select count(*) as cnt from section_note_reply where note_id=" . $value['id'])[0]['cnt'];

                //判断是否点赞服务
                if (empty($Db::query("select * from `like` where user_id=" . $user['id'] . " and type=2 and resource_id=" . $value['id'])))
                {
                    $value['is_like'] = 0;
                }
                else
                {
                    $value['is_like'] = 1;
                }
                $noteTotal         = count($Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 and `n`.`user_id` = " . $user['id']));
                $value['totalNum'] = $noteTotal;
                array_push($noteList_new, $value);
            }
            $where['content'] = ['like', "%$search%"];
        }
        else
        {
            $noteList     = $Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 and `n`.`user_id` = " . $user['id'] . " LIMIT " . (($page - 1) * $len) . ",{$len}");
            $noteList_new = array();
            foreach ($noteList as $key => $value)
            {
                $chapter_id       = $Db::query("select * from section where id=" . $value['section_id'])[0]['chapter_id'];
                $value['section'] = $Db::query("select * from section where id=" . $value['section_id'])[0]['section_title'];
                if ( ! empty($Db::query("select * from chapter where id=" . $chapter_id . " and course_id=" . $value['course_id'])))
                {
                    $value['chapter'] = $Db::query("select * from chapter where id=" . $chapter_id . " and course_id=" . $value['course_id'])[0]['chapter_title'];
                }
                $value['comment_num'] = $Db::query("select count(*) as cnt from section_note_reply where note_id=" . $value['id'])[0]['cnt'];

                //判断是否点赞服务
                if (empty($Db::query("select * from `like` where user_id=" . $user['id'] . " and type=2 and resource_id=" . $value['id'])))
                {
                    $value['is_like'] = 0;
                }
                else
                {
                    $value['is_like'] = 1;
                }
                $noteTotal         = count($Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`delete_time` = 0 and `n`.`center_id` = " . $user['center_id'] . " AND `n`.`user_id` = " . $user['id']));
                $value['totalNum'] = $noteTotal;
                array_push($noteList_new, $value);
            }
        }

        $where['n.center_id'] = $user['center_id'];
        $where['n.user_id']   = $user['id'];
        foreach ($noteList_new as $key => $item)
        {
            if ($item['type'] == 2)
            {
                $noteList_new[$key]['collected_user_nickname'] = (new MoocUser())->where(['id' => $item['collect_from']])->value('nick_name');
            }
        }
        return $this->ok($noteList_new, 20111, '获取笔记成功');

    }

    /**
     * 我的课程-提问
     * @param user_token 用户token
     */
    public function myQuestion()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');

        $page = input('param.page', 0, 'intval');
        $len  = input('param.len', 0, 'intval');

        //获取个人提问数据
        //$user_token="fd83ca5379ca29332d1c26f69737d080843b4f7a";
        $userModel            = new MoocUser();
        $questionModel        = new Question();
        $user                 = $userModel->where(['user_token' => $user_token])->find();
        $where['q.center_id'] = $user['center_id'];
        $where['q.user_id']   = $user['id'];
        $where['q.delete_time']   = 0;
        $questionList         = $questionModel->alias('q')
            ->join('__SECTION__ s', 's.id=q.section_id')
            ->join('__CHAPTER__ c', 'c.id=s.chapter_id')
            ->where($where)
            ->field('q.id as question_id,q.content,q.title,q.create_time,q.chaola,c.chapter_title,s.section_title')
            ->limit(($page - 1) * $len . ',' . $len)
            ->select();


        return $this->ok($questionList, 20111, '获取提问成功');

    }

    /**
     * 我的课程-我的回答
     * @param user_token 用户token
     */
    public function myAnswer()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        $page       = input('param.page', 0, 'intval');
        $len        = input('param.len', 0, 'intval');
        //$user_token="4800970a86649ca1ce6215864cc3df8cec0319a9";
        //获取个人提问数据
        $userModel          = new MoocUser();
        $answerModel        = new Answer();
        $user               = $userModel->where(['user_token' => $user_token])->find();
        $where['a.delete_time'] = 0;
        $where['a.user_id'] = $user['id'];
        $answerList         = $answerModel->alias('a')
            ->join('__QUESTION__ q', 'q.id=a.question_id')
            ->join('__SECTION__ s', 's.id=q.section_id')
            ->join('__CHAPTER__ c', 'c.id=s.chapter_id')
            ->where($where)
            ->field('a.id as answer_id,a.content,a.create_time,q.content as question_content,q.id as qustion_id,s.section_title,c.chapter_title,c.course_id')
            ->limit(($page - 1) * $len . ',' . $len)
            ->select();


        return $this->ok($answerList, 20111, '获取回答成功');

    }

    /**
     * 我的收藏
     * @param user_token 用户token
     */
    public function myCollect()
    {

        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        //$user_token = "e6cf3a09c5d51b785056f591c6c3008680c0b97b";
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        $page       = input('param.page', 0, 'intval');
        $len        = input('param.len', 0, 'intval');
        //$user_token="dbd6ae54749a4ae66160879bbd22ffb85a7e1013";
        //获取个人提问数据
        $userModel             = new MoocUser();
        $collectModel          = new Collect();
        $user                  = $userModel->where(['user_token' => $user_token])->find();
        $where['cl.user_id']   = $user['id'];
        $where['cl.center_id'] = $user['center_id'];
        $collectList           = $collectModel->alias('cl')
            ->join('__COURSE__ c', 'cl.course_id=c.id')
            ->join('__BAOMING__ b', 'b.user_id=cl.user_id and b.course_id=cl.course_id', 'left')
            ->join('__SCHEDULE__ sd', 'sd.user_id=b.user_id and sd.course_id = b.course_id', 'left')
            ->join('__SECTION__ s', 's.id=sd.section_id', 'left')
            ->join('__CHAPTER__ ct', 'ct.id=s.chapter_id', 'left')
            ->where($where)
            ->field('c.*,cl.course_id,sd.current_time,count(b.id) as baoming_num,sd.section_id,sd.current_time,sd.last_stu_time,ct.id as chapter_id')
            ->group('cl.course_id')
            ->limit(($page - 1) * $len . ',' . $len)
            ->select();

        if ($collectList != NULL)
        {
            $collectList = \collection($collectList)->toArray();
            //数据整理
            foreach ($collectList as $k => $item)
            {
                if ($item['total_time'] == 0)
                {
                    $item['schedule'] = '0%';
                }
                else
                {
                    $item['schedule'] = ceil(($item['current_time'] / $item['total_time']) * 100) . '%';
                }

                $collectList[$k]               = $this->_handleData($item);
                $collectList[$k]['is_baoming'] = (new Baoming)->where(['user_id' => $user['id'], 'course_id' => $item['id']])->count(1);
            }

        }


        return $this->ok($collectList, 20111, '获取收藏成功');

    }

    /**老师
     * 我的课堂-课程管理
     * @param user_token 用户token
     */
    public function myClass()
    {
        $userRes = verify();
        if ($userRes['status'] == 0)
        {
            return $userRes;
        }
        else
        {
            $user_id = $userRes['data']['user_id'];
        }
        $userModel  = new MoocUser();
        $user_token = $userModel->where(['id' => $user_id])->value('user_token');
        $filter     = input('param.filter', 0, 'intval');  //1 最近三天    2最近一周   3最近一个月
        $order      = input('param.order', 0, 'intval');

        $where = [];
        if ( ! empty($filter))
        {
            if ($filter == 1)
            {
                //最近三天
                $time_array = [time() - 259200, time() + 259200];
            }
            else if ($filter == 2)
            {
                //最近一周
                $time_array = [time() - 604800, time() + 604800];
            }
            else
            {
                //最近一个月
                $time_array = [time() - 2592000, time() + 2592000];
            }
            $where['c.create_time'] = ['between', $time_array];
        }

        if ( ! empty($order))
        {
            $order = ['c.create_time' => 'desc'];
        }
        else
        {
            $order = ['c.id' => 'asc'];
        }

        $courseModel          = new Course();
        $user                 = (new MoocUser())->where(['user_token' => $user_token])->find();
        $where['cr.other_id'] = $user['id'];
        $where['cr.type']     = 3;
        $classes              = $courseModel
            ->alias('c')
            ->join('__COURSE_RELA__ cr', 'cr.course_id = c.id')
            ->join('__BAOMING__ b', 'b.course_id = c.id', 'left')
            ->where($where)
            ->order($order)
            ->field('c.*,count(b.id) as baoming_num')
            ->group('c.id')
            ->select();

        return $this->ok($classes, 20111, '获取课程成功');
    }

    //微信端获取老师学生评论服务
    public function getCommentsForTeacher()
    {
        $Db        = new \think\Db;
        $teacherID = 47;
        $page      = input('param.page', 0, 'intval');
        $len       = input('param.len', 10, 'intval');
//		$userRes = verify();
//		if ($userRes['status'] == 0)
//		{
//			return $userRes;
//		}
//		else
//		{
//			$user_id = $userRes['data']['user_id'];
//			$center_id=$userRes['data']['center_id'];
//		}
        $center_id       = 1;
        $comments_result = [];
        //根据老师ID遍历旗下所有课程服务
        $courses_teacher = $Db::query("select * from course_rela where type=3 and center_id={$center_id} and other_id={$teacherID}");
        if (empty($courses_teacher))
        {
            return $this->fail(500, '该老师没有课程');
        }
        else
        {
            foreach ($courses_teacher as $courses_teacher_k => $courses_teacher_v)
            {
                $comments = $Db::query("select * from `comment` where center_id={$center_id} and course_id=" . $courses_teacher_v['course_id'] . " and status=1");
                if ( ! empty($comments))
                {
                    $comments_result = $comments;

                }

            }
        }
        //print_r($comments_result);
        foreach ($comments_result as $key => $item)
        {
            $result[$key]['userinfo']    = current($Db::query("select * from mooc_user where center_id=" . $item['center_id'] . " and id=" . $item['user_id']));
            $result[$key]['course']      = current($Db::query("select * from course where id=" . $item['course_id']));
            $result[$key]['content']     = $item['content'];
            $result[$key]['create_time'] = $item['create_time'];
            $result[$key]['like_num']    = $item['like_num'];

        }


        $newarr = array_slice(list_sort_by($result, "create_time", "desc"), ($page - 1) * $len, $len);
        return $this->ok($newarr, 20111, '评论成功');

    }


}
