<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/8/8
 * Time: 11:13
 */

namespace app\v1\controller;

use app\v1\model\MoocUser;

class Follow extends Base {
	//添加关注
	public function followById()
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

		$follow_id = input('param.follow_id', '1', 'trim');

		if ($Db::query("select * from follow where `user_id`={$user_id} and follow_id={$follow_id}") == NULL)
		{

			$follow_sql = "INSERT INTO follow SET `user_id`={$user_id},follow_id={$follow_id},create_time=" . time();

			$ret = $Db::query($follow_sql);

			$Db::query("UPDATE mooc_user SET fans_num=fans_num+1 where id={$follow_id}");
			$Db::query("UPDATE mooc_user SET follow_num=follow_num+1 where id={$user_id}");
			return $this->ok('', 200, '关注成功', 1);
		}
		else
		{
			return $this->fail(500, '已关注此用户', '已关注此用户', 1);
		}

	}

	//取消关注
	public function unfollowById()
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
		$follow_id = input('param.follow_id', '1', 'trim');

		if (empty($Db::query("select * from follow where `user_id`={$user_id} and follow_id={$follow_id}")))
		{
			return 1;
			return $this->ok('', 500, '未关注此用户', 1);
		}
		else
		{

			$unfollow_sql = "DELETE FROM follow WHERE `user_id`={$user_id} and follow_id={$follow_id}";

			$ret = $Db::query($unfollow_sql);

			$Db::query("UPDATE mooc_user SET fans_num=fans_num-1 where id={$follow_id}");
			$Db::query("UPDATE mooc_user SET follow_num=follow_num-1 where id={$user_id}");
			return $this->ok('', 200, '取消关注成功', 1);

		}

	}
}
