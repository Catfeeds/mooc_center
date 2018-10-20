<?php
/**
 * Created by PhpStorm.
 * User: jxbx
 * Date: 2018/9/18
 * Time: 17:10
 */

namespace app\v1\controller;

use app\v1\model\Question;
use app\v1\model\Like;
use app\v1\model\MoocUser;
use app\v1\model\Section;
use app\v1\model\SectionNote as SectionNotes;
use app\v1\model\Chapter;
use app\v1\model\SectionNoteReply;
use app\v1\model\Course as CourseModel;

class Circle extends Core {
	/**
	 * 获取交流圈数据
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
			$user_id = $userRes['data']['user_id'];
			$center_id=$userRes['data']['center_id'];
		}
//		$user_id   = 62;
//		$center_id = 1;
		$Db        = new \think\Db;
		//获取笔记列表
		//$center_id = input('param.center_id', 0, 'intval');
		$page  = input('param.page', 1, 'intval');
		$len   = input('param.len', 10, 'intval');
		$order = input('param.order', 0, 'intval');

		$result_note = [];
		$result_qa   = [];

		$where_note                  = [];
		$where_note['n.center_id']   = $center_id;
		$where_note['n.delete_time'] = 0;
		$noteModel                   = new SectionNotes();
		//获取笔记列表
		$noteList = $noteModel
			->alias('n')
			->join('mooc_user mu', 'mu.id=n.user_id')
			->join('section s', 's.id=n.section_id', 'left')
			->join('section_note sn', 's.id=sn.section_id', 'left')
			->join('chapter c', 'c.id=s.chapter_id', 'left')
			->join('comment cm', 'cm.course_id=c.course_id and cm.center_id=n.center_id', 'left')
			->where($where_note)
			->field('n.id,n.section_id,n.title,n.create_time,n.like_num,n.content,n.create_time,n.user_id,n.course_id,s.section_title,c.chapter_title,mu.nick_name,mu.avatar,count(cm.id) as comment_num,0 as is_comment,0 as is_like')
			->group('n.id')
			->select();

		//获取笔记列表服务
		foreach (\collection($noteList)->toArray() as $key => $value)
		{
			$result_note[$key]['id']          = $value['id'];
			$result_note[$key]['section_id']  = $value['section_id'];
			$result_note[$key]['user_id']     = $value['user_id'];
			$result_note[$key]['nick_name']   = $value['nick_name'];
			$result_note[$key]['avatar']      = $value['avatar'];
			$result_note[$key]['comment_num'] = $value['comment_num'];
			$result_note[$key]['like_num']    = $value['like_num'];
			$result_note[$key]['title']       = $value['title'];
			$result_note[$key]['create_time'] = $value['create_time'];
			$result_note[$key]['content']     = $value['content'];
			$is_follows                       = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $value['user_id']);

			if (empty($is_follows))
			{
				$result_note[$key]['is_follow'] = 0;
			}
			else
			{
				$result_note[$key]['is_follow'] = 1;
			}

			//判断是否点赞笔记
			$is_like_note = $Db::query("select * from `like` where `type`=2 and resource_id=" . $value['id'] . " and user_id=" . $user_id);
			if (empty($is_like_note))
			{
				$result_note[$key]['is_like'] = 0;
			}
			else
			{
				$result_note[$key]['is_like'] = 1;
			}
			$replies_tmp = $Db::query("select * from section_note_reply where note_id=" . $value['id']);
			$replies     = [];
			if ( ! empty($replies_tmp))
			{
				foreach ($replies_tmp as $k_replies => $v_replies)
				{
					$replies[$k_replies]['id']             = $v_replies['id'];
					$replies[$k_replies]['note_id']        = $v_replies['note_id'];
					$replies[$k_replies]['reply_id']       = $v_replies['reply_id'];
					$replies[$k_replies]['content']        = $v_replies['content'];
					$replies[$k_replies]['create_time']    = $v_replies['create_time'];
					$replies[$k_replies]['delete_time']    = $v_replies['delete_time'];
					$replies[$k_replies]['reply_userinfo'] = current($Db::query("select * from `mooc_user` where id=" . $v_replies['user_id']));
					$is_follows                            = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $v_replies['user_id']);

					if (empty($is_follows))
					{
						$replies[$k_replies]['reply_userinfo']['is_follow'] = 0;
					}
					else
					{
						$replies[$k_replies]['reply_userinfo']['is_follow'] = 1;
					}

					//判断是否点赞评论
					$is_like_note = $Db::query("select * from `like` where `type`=1 and resource_id=" . $v_replies['id'] . " and user_id=" . $user_id);
					if (empty($is_like_note))
					{
						$replies[$k_replies]['is_like'] = 0;
					}
					else
					{
						$replies[$k_replies]['is_like'] = 1;
					}
				}
			}
			$result_note[$key]['replies'] = $replies;

			//获取课程信息服务
			$course_info = (new CourseModel())
				->alias('c')
				->join('__CENTER_COURSE__ cc', 'c.id=cc.course_id ')
				->join('__COMMENT__ cm', 'c.id=cm.course_id and cm.center_id = cc.center_id', 'left')
				->fieldRaw('c.*,cc.id as real_id,cc.recommend,cc.create_time as add_time,cc.center_id,cc.play_num,cc.status,count(cm.id) as comment_num,ceil(avg(cm.practical_score+cm.concise_score+cm.clear_score)/3) as score')
				->where(['c.id' => $value['course_id']])
				->group('c.id')
				->select();

			$course_info = \collection($course_info)->toArray();

			$result_note[$key]['course_info'] = $course_info;


			$result_note[$key]['type'] = 1;//笔记标识


		}

		$where_qa                  = [];
		$where_qa['q.center_id']   = $center_id;
		$where_qa['q.delete_time'] = 0;
		$questionModel             = new Question();
		$question                  = $questionModel
			->alias('q')
			->join('mooc_user mu', 'mu.id=q.user_id', 'left')
			->join('section s', 's.id=q.section_id', 'left')
			->join('chapter c', 's.chapter_id=c.id', 'left')
			->where($where_qa)
			->field('q.*,mu.avatar,mu.nick_name,mu.type as user_type,c.id as chapter_id,c.chapter_title,s.id as section_id,s.section_title,1 as show_num')
			->group('q.id')
			->select();


		foreach (\collection($question)->toArray() as $key => $item)
		{
			$result_qa[$key]['id']          = $item['id'];
			$result_qa[$key]['section_id']  = $item['section_id'];
			$result_qa[$key]['chapter_id']  = $item['chapter_id'];
			$result_qa[$key]['user_id']     = $item['user_id'];
			$result_qa[$key]['nick_name']   = $item['nick_name'];
			$result_qa[$key]['avatar']      = $item['avatar'];
			$result_qa[$key]['comment_num'] = $Db::query("select count(*) as cnt from answer where question_id=" . $item['id'])[0]['cnt'];
			$result_qa[$key]['like_num']    = $item['like_num'];
			$result_qa[$key]['title']       = $item['title'];
			$result_qa[$key]['create_time'] = $item['create_time'];
			//$result_qa[$key]['replies']     = $Db::query("select * from answer where question_id=" . $item['id']);

			$is_follows = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $item['user_id']);
			if (empty($is_follows))
			{
				$result_qa[$key]['is_follow'] = 0;
			}
			else
			{
				$result_qa[$key]['is_follow'] = 1;
			}

			//判断是否点赞评论
			$is_like_note = $Db::query("select * from `like` where `type`=3 and resource_id=" . $item['id'] . " and user_id=" . $user_id);
			if (empty($is_like_note))
			{
				$result_qa[$key]['is_like'] = 0;
			}
			else
			{
				$result_qa[$key]['is_like'] = 1;
			}
			$replies_tmp = $Db::query("select * from answer where question_id=" . $item['id']);
			$replies     = [];
			if ( ! empty($replies_tmp))
			{
				foreach ($replies_tmp as $k_replies => $v_replies)
				{
					$replies[$k_replies]['id']             = $v_replies['id'];
					$replies[$k_replies]['reply_id']       = $v_replies['reply_id'];
					$replies[$k_replies]['content']        = $v_replies['content'];
					$replies[$k_replies]['create_time']    = $v_replies['create_time'];
					$replies[$k_replies]['delete_time']    = $v_replies['delete_time'];
					$replies[$k_replies]['reply_userinfo'] = current($Db::query("select * from `mooc_user` where id=" . $v_replies['user_id']));
					$is_follows                            = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $item['user_id']);

					if (empty($is_follows))
					{
						$replies[$k_replies]['reply_userinfo']['is_follow'] = 0;
					}
					else
					{
						$replies[$k_replies]['reply_userinfo']['is_follow'] = 1;
					}
				}
			}
			$result_qa[$key]['answer'] = $replies;
			//获取课程id
			$course_id = $Db::query("select * from `chapter` where id=" . $result_qa[$key]['chapter_id'])[0]['course_id'];

			//获取课程信息服务
			$course_info = (new CourseModel())
				->alias('c')
				->join('__CENTER_COURSE__ cc', 'c.id=cc.course_id ')
				->join('__COMMENT__ cm', 'c.id=cm.course_id and cm.center_id = cc.center_id', 'left')
				->fieldRaw('c.*,cc.id as real_id,cc.recommend,cc.create_time as add_time,cc.center_id,cc.play_num,cc.status,count(cm.id) as comment_num,ceil(avg(cm.practical_score+cm.concise_score+cm.clear_score)/3) as score')
				->where(['c.id' => $course_id])
				->group('c.id')
				->select();

			$course_info = \collection($course_info)->toArray();

			$result_qa[$key]['course_info'] = $course_info;

			$result_qa[$key]['type'] = 2;//问答标识
		}

		if ($order == 0)//默认按最新排序
		{
			$newarr = array_slice(list_sort_by(array_merge($result_note, $result_qa), "create_time", "desc"), ($page - 1) * $len, $len);
		}
		elseif ($order == 1)//按关注排序
		{
			$newarr = array_slice(list_sort_by(array_merge($result_note, $result_qa), "like_num", "desc"), ($page - 1) * $len, $len);
		}
		else
		{
			$newarr = array_slice(list_sort_by(array_merge($result_note, $result_qa), "comment_num", "desc"), ($page - 1) * $len, $len);
		}

		return $this->ok($newarr, 20111, '获取成功');

	}


	//获取关注服务
	public function getFocususers()
	{
		$Db   = new \think\Db;
		$page = input('param.page', 1, 'intval');
		$len  = input('param.len', 10, 'intval');

		$result_note = [];
		$result_qa   = [];

		$userRes = verify();
		if ($userRes['status'] == 0)
		{
			return $userRes;
		}
		else
		{
			$user_id = $userRes['data']['user_id'];
		}

		$uids = $Db::query("select * from `follow` where `user_id`=" . $user_id);
		if ( ! empty($uids))
		{
			foreach ($uids as $k => $v)
			{
				$where_note                  = [];
				$where_note['n.center_id']   = $userRes['data']['center_id'];
				$where_note['n.delete_time'] = 0;
				$where_note['n.user_id']     = $v['follow_id'];
				$noteModel                   = new SectionNotes();
				//获取笔记列表
				$noteList = $noteModel
					->alias('n')
					->join('mooc_user mu', 'mu.id=n.user_id')
					->join('section s', 's.id=n.section_id', 'left')
					->join('section_note sn', 's.id=sn.section_id', 'left')
					->join('chapter c', 'c.id=s.chapter_id', 'left')
					->join('comment cm', 'cm.course_id=c.course_id and cm.center_id=n.center_id', 'left')
					->where($where_note)
					->field('n.id,n.section_id,n.title,n.create_time,n.like_num,n.content,n.create_time,n.user_id,n.course_id,s.section_title,c.chapter_title,mu.nick_name,mu.avatar,count(cm.id) as comment_num,0 as is_comment,0 as is_like')
					->group('n.id')
					->select();

				//获取问答服务
				foreach (\collection($noteList)->toArray() as $key => $value)
				{
					$result_note[$key]['id']          = $value['id'];
					$result_note[$key]['section_id']  = $value['section_id'];
					$result_note[$key]['user_id']     = $value['user_id'];
					$result_note[$key]['nick_name']   = $value['nick_name'];
					$result_note[$key]['avatar']      = $value['avatar'];
					$result_note[$key]['comment_num'] = $value['comment_num'];
					$result_note[$key]['like_num']    = $value['like_num'];
					$result_note[$key]['title']       = $value['title'];
					$result_note[$key]['create_time'] = $value['create_time'];
					$result_note[$key]['content']     = $value['content'];

					$is_follows = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $value['user_id']);
					if (empty($is_follows))
					{
						$result_note[$key]['is_follow'] = 0;
					}
					else
					{
						$result_note[$key]['is_follow'] = 1;
					}

					//判断是否点赞笔记
					$is_like_note = $Db::query("select * from `like` where `type`=2 and resource_id=" . $value['id'] . " and user_id=" . $user_id);
					if (empty($is_like_note))
					{
						$result_note[$key]['is_like'] = 0;
					}
					else
					{
						$result_note[$key]['is_like'] = 1;
					}
					$replies_tmp = $Db::query("select * from section_note_reply where note_id=" . $value['id']);
					$replies     = [];
					if ( ! empty($replies_tmp))
					{
						foreach ($replies_tmp as $k_replies => $v_replies)
						{
							$replies[$k_replies]['id']             = $v_replies['id'];
							$replies[$k_replies]['note_id']        = $v_replies['note_id'];
							$replies[$k_replies]['reply_id']       = $v_replies['reply_id'];
							$replies[$k_replies]['content']        = $v_replies['content'];
							$replies[$k_replies]['create_time']    = $v_replies['create_time'];
							$replies[$k_replies]['delete_time']    = $v_replies['delete_time'];
							$replies[$k_replies]['reply_userinfo'] = current($Db::query("select * from `mooc_user` where id=" . $v_replies['user_id']));
							$is_follows                            = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $v_replies['user_id']);

							if (empty($is_follows))
							{
								$replies[$k_replies]['reply_userinfo']['is_follow'] = 0;
							}
							else
							{
								$replies[$k_replies]['reply_userinfo']['is_follow'] = 1;
							}

							//判断是否点赞评论
							$is_like_note = $Db::query("select * from `like` where `type`=1 and resource_id=" . $v_replies['id'] . " and user_id=" . $user_id);
							if (empty($is_like_note))
							{
								$replies[$k_replies]['is_like'] = 0;
							}
							else
							{
								$replies[$k_replies]['is_like'] = 1;
							}
						}
					}
					$result_note[$key]['replies'] = $replies;

					//获取课程信息服务
					$course_info = (new CourseModel())
						->alias('c')
						->join('__CENTER_COURSE__ cc', 'c.id=cc.course_id ')
						->join('__COMMENT__ cm', 'c.id=cm.course_id and cm.center_id = cc.center_id', 'left')
						->fieldRaw('c.*,cc.id as real_id,cc.recommend,cc.create_time as add_time,cc.center_id,cc.play_num,cc.status,count(cm.id) as comment_num,ceil(avg(cm.practical_score+cm.concise_score+cm.clear_score)/3) as score')
						->where(['c.id' => $value['course_id']])
						->group('c.id')
						->select();

					$course_info = \collection($course_info)->toArray();

					$result_note[$key]['course_info'] = $course_info;


					$result_note[$key]['type'] = 1;//笔记标识


				}

				$where_qa                  = [];
				$where_qa['q.center_id']   = $userRes['data']['center_id'];
				$where_qa['q.delete_time'] = 0;
				$where_qa['q.user_id']     = $v['follow_id'];
				$questionModel             = new Question();
				$question                  = $questionModel
					->alias('q')
					->join('mooc_user mu', 'mu.id=q.user_id', 'left')
					->join('section s', 's.id=q.section_id', 'left')
					->join('chapter c', 's.chapter_id=c.id', 'left')
					->where($where_qa)
					->field('q.*,mu.avatar,mu.nick_name,mu.type as user_type,c.id as chapter_id,c.chapter_title,s.id as section_id,s.section_title,1 as show_num')
					->group('q.id')
					->select();


				foreach (\collection($question)->toArray() as $key => $item)
				{
					$result_qa[$key]['id']          = $item['id'];
					$result_qa[$key]['section_id']  = $item['section_id'];
					$result_qa[$key]['chapter_id']  = $item['chapter_id'];
					$result_qa[$key]['user_id']     = $item['user_id'];
					$result_qa[$key]['nick_name']   = $item['nick_name'];
					$result_qa[$key]['avatar']      = $item['avatar'];
					$result_qa[$key]['comment_num'] = $Db::query("select count(*) as cnt from answer where question_id=" . $item['id'])[0]['cnt'];
					$result_qa[$key]['like_num']    = $item['like_num'];
					$result_qa[$key]['title']       = $item['title'];
					$result_qa[$key]['create_time'] = $item['create_time'];

					$is_follows = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $item['user_id']);
					if (empty($is_follows))
					{
						$result_qa[$key]['is_follow'] = 0;
					}
					else
					{
						$result_qa[$key]['is_follow'] = 1;
					}

					//判断是否点赞评论
					$is_like_note = $Db::query("select * from `like` where `type`=3 and resource_id=" . $item['id'] . " and user_id=" . $user_id);
					if (empty($is_like_note))
					{
						$result_qa[$key]['is_like'] = 0;
					}
					else
					{
						$result_qa[$key]['is_like'] = 1;
					}
					$replies_tmp = $Db::query("select * from answer where question_id=" . $item['id']);
					$replies     = [];
					if ( ! empty($replies_tmp))
					{
						foreach ($replies_tmp as $k_replies => $v_replies)
						{
							$replies[$k_replies]['id']             = $v_replies['id'];
							$replies[$k_replies]['reply_id']       = $v_replies['reply_id'];
							$replies[$k_replies]['content']        = $v_replies['content'];
							$replies[$k_replies]['create_time']    = $v_replies['create_time'];
							$replies[$k_replies]['delete_time']    = $v_replies['delete_time'];
							$replies[$k_replies]['reply_userinfo'] = current($Db::query("select * from `mooc_user` where id=" . $v_replies['user_id']));
							$is_follows                            = $Db::query("select * from follow where user_id=" . $user_id . " and follow_id=" . $item['user_id']);

							if (empty($is_follows))
							{
								$replies[$k_replies]['reply_userinfo']['is_follow'] = 0;
							}
							else
							{
								$replies[$k_replies]['reply_userinfo']['is_follow'] = 1;
							}
						}
					}
					$result_qa[$key]['answer'] = $replies;

					//获取问答服务

					$result_qa[$key]['answer'] = $Db::query("select * from `answer` where `question_id`=" . $result_qa[$key]['id']);

					//获取课程id
					$course_id = $Db::query("select * from `chapter` where id=" . $result_qa[$key]['chapter_id'])[0]['course_id'];

					//获取课程信息服务
					$course_info = (new CourseModel())
						->alias('c')
						->join('__CENTER_COURSE__ cc', 'c.id=cc.course_id ')
						->join('__COMMENT__ cm', 'c.id=cm.course_id and cm.center_id = cc.center_id', 'left')
						->fieldRaw('c.*,cc.id as real_id,cc.recommend,cc.create_time as add_time,cc.center_id,cc.play_num,cc.status,count(cm.id) as comment_num,ceil(avg(cm.practical_score+cm.concise_score+cm.clear_score)/3) as score')
						->where(['c.id' => $course_id])
						->group('c.id')
						->select();

					$course_info = \collection($course_info)->toArray();

					$result_qa[$key]['course_info'] = $course_info;

					$result_qa[$key]['type'] = 2;//问答标识
				}


			}
		}

		$newarr = array_slice(list_sort_by(array_merge($result_note, $result_qa), "create_time", "desc"), ($page - 1) * $len, $len);

		return $this->ok($newarr, 20111, '获取成功');
	}

}
