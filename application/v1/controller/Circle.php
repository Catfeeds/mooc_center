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

class Circle extends Core {
	/**
	 * 获取交流圈数据
	 */
	public function index()
	{
		$Db = new \think\Db;
		//获取笔记列表
		$center_id = input('param.center_id', 0, 'intval');
		$page      = input('param.page', 1, 'intval');
		$len       = input('param.len', 10, 'intval');
		$order     = input('param.order', 0, 'intval');


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
			->field('n.id,n.section_id,n.title,n.create_time,n.like_num,n.content,n.create_time,n.user_id,s.section_title,c.chapter_title,mu.nick_name,mu.avatar,count(cm.id) as comment_num,0 as is_comment,0 as is_like')
			->group('n.id')
			->select();

//		print_r(\collection($noteList)->toArray());
//		die;
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
			$result_note[$key]['replies']     = $Db::query("select * from section_note_reply where note_id=" . $value['id']);
			$result_note[$key]['type']        = 1;//笔记标识


		}

		$where_qa                  = [];
		$where_qa['q.center_id']   = $center_id;
		$where_qa['q.delete_time'] = 0;
		$questionModel             = new Question();
		$question                  = $questionModel
			->alias('q')
			->join('mooc_user mu', 'mu.id=q.user_id')
			->join('section s', 's.id=q.section_id', 'left')
			->join('chapter c', 's.chapter_id=c.id', 'left')
			->where($where_qa)
			->field('q.id,q.*,mu.avatar,mu.nick_name,mu.type as user_type,c.chapter_title,s.section_title,1 as show_num')
			->group('q.id')
			->select();

		foreach (\collection($question)->toArray() as $key => $item)
		{
			$result_qa[$key]['id']          = $value['id'];
			$result_qa[$key]['section_id']  = $value['section_id'];
			$result_qa[$key]['user_id']     = $value['user_id'];
			$result_qa[$key]['nick_name']   = $value['nick_name'];
			$result_qa[$key]['avatar']      = $value['avatar'];
			$result_qa[$key]['comment_num'] = $Db::query("select count(*) as cnt from answer where question_id=" . $value['id'])[0]['cnt'];
			$result_qa[$key]['like_num']    = $value['like_num'];
			$result_qa[$key]['title']       = $value['title'];
			$result_qa[$key]['create_time'] = $value['create_time'];
			$result_qa[$key]['replies']     = $Db::query("select * from answer where question_id=" . $value['id']);
			$result_qa[$key]['type']        = 2;//问答标识
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

}
