<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/7/30
 * Time: 10:23
 */

namespace app\v1\controller;

use app\v1\model\MoocUser;

class Note extends Base {
	/**
	 * 他的个人中心-笔记列表
	 * @param user_id 用户ID
	 */
	public function noteList()
	{

		$page    = input('param.page', 0, 'intval');
		$len     = input('param.len', 0, 'intval');
		$uid     = input('param.user_id', 0, 'intval');
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
			$noteList     = $Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 AND `n`.`content` like '%{$search}%' and `n`.`user_id` = " . $uid . " LIMIT " . (($page - 1) * $len) . ",{$len}");
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
				$noteTotal         = count($Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 and `n`.`user_id` = " . $uid));
				$value['totalNum'] = $noteTotal;
				array_push($noteList_new, $value);
			}
			$where['content'] = ['like', "%$search%"];
		}
		else
		{
			$noteList     = $Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`center_id` = " . $user['center_id'] . " AND `n`.`delete_time` = 0 and `n`.`user_id` = " . $uid . " LIMIT " . (($page - 1) * $len) . ",{$len}");
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
				$noteTotal         = count($Db::query("SELECT `n`.*,`mu`.`nick_name`,`mu`.`avatar` FROM `section_note` `n` INNER JOIN `mooc_user` `mu` ON `mu`.`id`=`n`.`user_id` WHERE `n`.`delete_time` = 0 and `n`.`center_id` = " . $user['center_id'] . " AND `n`.`user_id` = " . $uid));
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
	 * 添加笔记
	 * @param center_token 场馆令牌
	 * @param course_id 课程id
	 * @param section_id 节id
	 * @param content 笔记内容
	 * @param
	 * @return array|bool
	 */
	public function create()
	{
		$user_token = input('param.user_token', '', 'trim');
		$course_id  = input('param.course_id', 0, 'intval');
		$section_id = input('param.section_id', 0, 'intval');
		$content    = input('param.content', '', 'trim');

		//用户校验
		$tokenRes = checkUserToken($user_token);
		if ($tokenRes !== TRUE)
		{
			return $tokenRes;
		}

		//数据校验
		if (empty($course_id))
		{
			return $this->fail(20020, '课程id必须');
		}

		if (empty($section_id))
		{
			return $this->fail(20020, '节id必须');
		}

		if (empty($content))
		{
			return $this->fail(20020, '笔记内容必须');
		}

		$userModel = new MoocUser();
		$user      = $userModel->where(['user_token' => $user_token])->find();
		$user_id   = $user->id;
		$center_id = $user->center_id;


	}
}