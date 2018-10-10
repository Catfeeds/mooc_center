<?php
/**
 * Created by James.
 * User: chen
 * Date: 2018/8/23
 * Time: 15:57
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

class Message extends Base {
	//发送消息服务
	public function send()
	{

		$userRes   = verify();
		$center_id = $userRes['data']['center_id'];
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

		$sender   = input('param.sender', $user_id);
		$receiver = input('param.receiver', 1);
		$content  = input('param.content', 1, "trim");
		$Db       = new \think\Db;
		$ret      = $Db::query("INSERT INTO message SET center_id={$center_id}, sender={$sender},receiver={$center_id},content='{$content}',datetime=" . time());
		return $this->ok('', 200, '发送成功', 1);

	}

	//获取消息服务
	public function receive()
	{

		$userRes   = verify();
		$center_id = $userRes['data']['center_id'];
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
		$result_sender     = array();
		$result_receiver     = array();
		$Db         = new \think\Db;
		foreach ($Db::query("select * from message where sender={$user_id} and center_id={$center_id}") as $k => $v)
		{
			$result_sender[$k]['message_id'] = $v['id'];
			$result_sender[$k]['sender']     = $Db::query("select * from mooc_user where id=" . $v['sender'])[0];
			$result_sender[$k]['content']    = $v['content'];
			$result_sender[$k]['datetime']   = $v['datetime'];
			$result_sender[$k]['status']     = $v['status'];
			$result_sender[$k]['type']       = 0;

		}

		foreach ($Db::query("select * from message where receiver={$user_id} and center_id={$center_id}") as $k => $v)
		{
			$result_receiver[$k]['message_id'] = $v['id'];
			$result_receiver[$k]['sender']     = $Db::query("select * from mooc_center where id=" . $v['sender'])[0];
			$result_receiver[$k]['content']    = $v['content'];
			$result_receiver[$k]['datetime']   = $v['datetime'];
			$result_receiver[$k]['status']     = $v['status'];
			$result_receiver[$k]['type']       = 1;

		}
		return $this->ok(array_values(array_merge($result_receiver,$result_sender)), 200, '获取消息成功', 1);
	}

	//判定是否有新消息
	public function hasNewMessage()
	{

		$userRes   = verify();
		$center_id = $userRes['data']['center_id'];
		if ($userRes['status'] == 0)
		{
			return $userRes;
		}
		else
		{
			$user_id = $userRes['data']['user_id'];

		}
		$userModel   = new MoocUser();
		$Db          = new \think\Db;
		$messageSets = $Db::query("select * from message where sender={$user_id} and center_id={$center_id} and status=0");
		if ( ! empty($messageSets))
		{
			return $this->ok(array("hasNews" => 1), 200, '获取消息成功', 1);
		}
		else
		{
			return $this->ok(array("hasNews" => 0), 200, '获取消息成功', 1);
		}
	}

	//设置消息已读服务
	function setMessageRead(){
		$userRes   = verify();
		$center_id = $userRes['data']['center_id'];
		if ($userRes['status'] == 0)
		{
			return $userRes;
		}
		else
		{
			$user_id = $userRes['data']['user_id'];

		}
		$userModel   = new MoocUser();

		$Db          = new \think\Db;
		$messageSets = $Db::query("update message set status=1 where sender={$user_id} and center_id={$center_id}");
		return $this->ok("ok", 200, '获取消息成功', 1);

	}

	//后台用 获取未读消息服务
	//获取消息服务 status:0未读 1已读
	public function getMessage()
	{
		$page   = input('param.page', 0, 'intval');
		$len    = input('param.len', 100, 'intval');
		$start  = ($page-1) * $len;
		$status = input('param.status', 0, 'intval');
		$result = array();
		$Db     = new \think\Db;
		//exit("select * from message where status={$status} limit {$start},{$len}");
		foreach ($Db::query("select * from message where status={$status} limit {$start},{$len}") as $k => $v)
		{
			$result[$k]['id']         = $v['id'];
			$result[$k]['time']       = $v['datetime'];
			$result[$k]['title']      = $v['content'];
			$result[$k]['message_id'] = $v['id'];
			$result[$k]['sender']     = $Db::query("select * from mooc_user where id=" . $v['sender']);
			$result[$k]['send_user']  = $result[$k]['sender'][0]['nick_name'];
			$result[$k]['center']     = $Db::query("select * from mooc_center where id=" . $result[$k]['sender'][0]['center_id'])[0]['center_name'];
			$result[$k]['content']    = $v['content'];
			$result[$k]['datetime']   = $v['datetime'];
			$result[$k]['status']     = $v['status'];
			$result[$k]['type']       = 0;

		}
		return $this->ok(array_values($result), 200, '获取消息成功', 1);
	}


	//获取消息服务 status:0未读 1已读
	public function getMessageByUser()
	{
		$id             = input('param.id', 0, 'intval');
		$page           = input('param.page', 0, 'intval');
		$len            = input('param.len', 10, 'intval');
		$start          = $page * $len;
		$status         = input('param.status', 0, 'intval');
		$result_receive = array();
		$result_sender  = array();
		$Db             = new \think\Db;

		//获取接受者消息
		foreach ($Db::query("select * from message where sender={$id}") as $k => $v)
		{
			$result_receive[$k]['id']         = $v['id'];
			$result_receive[$k]['time']       = $v['datetime'];
			$result_receive[$k]['title']      = $v['content'];
			$result_receive[$k]['message_id'] = $v['id'];

			$sender_tmp = $Db::query("select * from mooc_user where id=" . $v['sender']);
			if (empty($sender_tmp))
			{
				$sender_tmp                      = $Db::query("select * from mooc_center where id=" . $v['sender']);
				$result_receive[$k]['send_user'] = $sender_tmp[0]['center_name'];

				$result_receive[$k]['center'] = $sender_tmp[0]['center_name'];
			}
			else
			{
				$result_receive[$k]['send_user'] = $sender_tmp[0]['nick_name'];
			}
			$receiver_tmp = array();
			$receiver_tmp = $Db::query("select * from mooc_user where id=" . $v['receiver']);

			if (empty($receiver_tmp))
			{


				$receiver_tmp = $Db::query("select * from mooc_center where id=" . $v['receiver']);

				$result_receive[$k]['receive_user'] = $receiver_tmp[0]['center_name'];
			}
			else
			{
				$result_receive[$k]['receive_user'] = $receiver_tmp[0]['nick_name'];
			}


			$result_receive[$k]['content']  = $v['content'];
			$result_receive[$k]['datetime'] = $v['datetime'];
			$result_receive[$k]['status']   = $v['status'];
			$result_receive[$k]['type']     = 0;

		}

		//获取发送者消息
		foreach ($Db::query("select * from message where receiver={$id}") as $k => $v)
		{
			$result_sender[$k]['id']         = $v['id'];
			$result_sender[$k]['time']       = $v['datetime'];
			$result_sender[$k]['title']      = $v['content'];
			$result_sender[$k]['message_id'] = $v['id'];
			$sender_tmp                      = array();
			$sender_tmp                      = $Db::query("select * from mooc_user where id=" . $v['sender']);
			if (empty($sender_tmp))
			{
				$sender_tmp                     = $Db::query("select * from mooc_center where id=" . $v['sender']);
				$result_sender[$k]['send_user'] = $sender_tmp[0]['center_name'];

				$result_sender[$k]['center'] = $sender_tmp[0]['center_name'];
			}
			else
			{
				$result_sender[$k]['send_user'] = $sender_tmp[0]['nick_name'];
			}

			$receiver_tmp = $Db::query("select * from mooc_user where id=" . $v['receiver']);
			if (empty($receiver_tmp))
			{

				$receiver_tmp = $Db::query("select * from mooc_center where id=" . $v['receiver']);

				$result_sender[$k]['receive_user'] = $receiver_tmp[0]['center_name'];
				$result_sender[$k]['center']       = $receiver_tmp[0]['center_name'];
			}
			else
			{
				$result_sender[$k]['receive_user'] = $receiver_tmp[0]['nick_name'];
			}


			$result_sender[$k]['content']  = $v['content'];
			$result_sender[$k]['datetime'] = $v['datetime'];
			$result_sender[$k]['status']   = $v['status'];
			$result_sender[$k]['type']     = 0;

		}

		return $this->ok(list_sort_by(array_unique(array_merge(array_values($result_sender), array_values($result_receive)), SORT_REGULAR), "id", "desc"), 200, '获取消息成功', 1);
	}

	//后台用发送消息服务
	public function sendMessage()
	{
//		$userRes = verify();
//		if ($userRes['status'] == 0)
//		{
//			return $userRes;
//		}
//		else
//		{
//			$user_id = $userRes['data']['user_id'];
//			$center_id=$userRes['data']['center_id'];
//
//		}

		$center_id = input('param.center_id', 1);
		$sender    = input('param.sender', 1);
		$receiver  = input('param.receiver', 1);
		$content   = input('param.content', 1, "trim");
		$Db        = new \think\Db;
		//$Db::query("select * from mooc_center where id=".$sender)[0]['center_name'];
		$ret = $Db::query("INSERT INTO message SET center_id={$center_id}, sender={$center_id},receiver={$receiver},content='{$content}',datetime=" . time());
		return $this->ok('', 200, '发送成功', 1);
	}
}