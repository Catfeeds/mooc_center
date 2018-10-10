<?php
/**
 * 消息错误码
 */
return [
    //http常见错误码
    '200' => '请求已完成',
    '404'=>'找不到 — 服务器找不到给定的资源；文档不存在',
    '1000'=>'验证错误',

    /**
     * 系统基本消息编号规则
     *编号：20|0|01
     * 1-2：控制器编号 20-99
     * 3：status状态编号 0 失败 1 成功
     * 4-5：消息编号 01-99
     **/

    /**  控制器Index  20  **/
    //success
    '20101'=>'成功',

    //failed
    '20001'=>'失败',
    '20002'=>'越权操作',

    /**  控制器Course  21  **/
    //success
    '21101'=>'成功',

    //failed
    '21001'=>'失败',
    '21002'=>'查询内容不存在',
    '21003'=>'老师ID错误',
    '21004'=>'课程ID错误',

    /**  控制器Course  22 **/
    //success
    '22101'=>'成功',

    //failed
    '22001'=>'失败',
    '22002'=>'查询内容不存在',
    '22003'=>'老师ID错误',
    '22004'=>'该用户不存在',
    '22005'=>'密码长度必须是6-20位',
    '22006'=>'非法操作',
    '22007'=>'无更新',

    /**  控制器MoocCenter  23  **/
    //success
    '23101'=>'成功',

    //failed
    '23001'=>'失败',

    /**  控制器Teacher  24**/
    //success
    '24101'=>'成功',

    //failed
    '24001'=>'失败',
    '24002'=>'查询内容不存在',
    '24003'=>'老师ID错误',
    '24004'=>'该用户不存在',
    '24005'=>'密码长度必须是6-20位',
    '24006'=>'场馆ID错误',




];