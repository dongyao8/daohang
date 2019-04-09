<?php

namespace app\manage\controller;


class User extends Base
{
    /**
     * 用户列表【待开发，半成品暂不开放】
     *
     * @return \think\Response
     */
    public function index($state = 0)
    {
        $user = db('user')->where('state',$state)->paginate(15);
        $this->assign('user',$user);
        return $this->fetch();
    }

    /**
     * 通过用户审核.
     *
     */
    public function tongguo()
    {
        $uid = input('uid');
        $tongguo = db('user')->where('uid',$uid)->update(['state'=>1]);
        if($tongguo){
            $this->success('用户已恢复正常状态');
        }else{
            $this->error('系统错误');
        }
    }

    /**
     * 拒绝用户审核
     *
     */
    public function jujue()
    {
        $uid = input('uid');
        $jujue = db('user')->where('uid',$uid)->update(['state'=>'-1']);
        if($jujue){
            $this->success('用户已被冻结');
        }else{
            $this->error('系统错误');
        }
    }
}
