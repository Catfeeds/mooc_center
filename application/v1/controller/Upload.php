<?php
/**
 * Created by PhpStorm.
 * User: tony
 * Date: 2018/7/20
 * Time: 10:43
 */

namespace app\v1\controller;

use app\v1\model\WeedModel;
class Upload extends Core
{

    //上传
    public function upload()
    {

//        header("Access-Control-Allow-Origin:http://demo-mooc.com");
//        header("Access-Control-Request-Headers:token, uid");
        header("Access-Control-Allow-Headers:X-Requested-With");
        header("Access-Control-Allow-Credentials:true");
        header("Access-Control-Allow-Headers:Origin, X-Requested-With, Content-Type, Accept, Z-Key");
        header("Content-Type:application/json");
        header("Access-Control-Allow-Methods:GET, POST, PUT, DELETE, OPTIONS");

        if ($this->request->isPost()) {
            $file = $this->request->file('file');
            $user_token = $this->request->param('user_token');
            if ($user_token) {
                $res = checkUserToken($user_token);
                if (true !== $res) {
                    return $res;
                }
            } else {
                $center_token = $this->request->param('center_token');
                $res = checkCenterToken($center_token);
                if (true !== $res) {
                    return $res;
                }
            }
            
            if ($file) {
                $info = $file->move(config('upload_dir'));
                if ($info) {
                    $result['file_path'] = $info->getSaveName();
                    $result['file_url'] = config('upload_server') . $info->getSaveName();
                    //图片上传到文件服务器
                    if(in_array($info->getExtension(), ['jpg', 'png', 'jpeg'])){
                        $file_path = config('upload_dir') . $info->getSaveName();
                        $weedModel = new WeedModel();
                        $fileKey = $weedModel->getFileKey();
                        $weedModel->createTask($fileKey, [
                            "filePath" => $file_path,
                            "file_store_key" => $fileKey,
                            "fileKey" => $fileKey,
                            "file_type" => $info->getExtension(),
                            "task" => "storeFile"
                        ]);
                        $result['img_key'] = $fileKey;
                        $result['img_url'] = $weedModel->weedVolume . DIRECTORY_SEPARATOR . $fileKey;
//                        echo $result['img_url'];die;
                    }else if(in_array($info->getExtension(), ['mp4'])){
                        $total_time = exec("ffmpeg -i ".dirname(dirname(dirname(dirname(__FILE__))))."/public/upload/".$result['file_path']." 2>&1 | grep 'Duration' | cut -d ' ' -f 4 | sed s/,//");
                        $arr_duration = explode(':', $total_time);
                        $result['total_time'] = $arr_duration[0] * 3600 + $arr_duration[1] * 60 + $arr_duration[2];
                        $img_path = config('upload_dir').time() .'.png';
                        $cmdImg = "ffmpeg -y -ss 10 -i " .dirname(dirname(dirname(dirname(__FILE__))))."/public/upload/".$result['file_path'].
                            " -vframes 1 -f image2 -s 120*120 " . $img_path;
                        exec($cmdImg, $outputImg, $errorImg);
                        $file_path = $img_path;
                        $weedModel = new WeedModel();
                        $fileKey = $weedModel->getFileKey();
                        $weedModel->createTask($fileKey, [
                            "filePath" => $file_path,
                            "file_store_key" => $fileKey,
                            "fileKey" => $fileKey,
                            "file_type" => 'png',
                            "task" => "storeFile"
                        ]);
                        $result['img_key'] = $fileKey;
                        $result['img_url'] = $weedModel->weedVolume . DIRECTORY_SEPARATOR . $fileKey;
                    }

                    return ok($result, 28101, '上传成功');
                } else {
                    return fail(28001, $info->getError());
                }
            } else {
                return fail(28002, '上传失败');
            }
        }
    }

    //获取视频时长服务
	public function getVideoDuration(){
    	$url=$this->request->param('url');
        if(strpos($url,'mp4')===false){
            return ok(0, 28101, '获取成功');
        }
		$total_time = exec("ffmpeg -i ".$url." 2>&1 | grep 'Duration' | cut -d ' ' -f 4 | sed s/,//");
		$arr_duration = explode(':', $total_time);
		return ok($arr_duration[0] * 3600 + $arr_duration[1] * 60 + $arr_duration[2], 28101, '获取成功');
	}

}