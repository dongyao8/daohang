<?php

namespace app\manage\controller;

use think\Controller;
use think\Request;

class Index extends Controller
{
     /**
     * 系统信息初始化
     *
     * @return \think\Response
     */
    public function initialize()
    {
        $system = db('system')->find();
        config('system.web_name',$system['title']);
        config('system.web_url',$system['url']);
    }
    /**
     * 显示管理员登录页
     *
     * @return \think\Response
     */
    public function index()
    {
        return $this->fetch();
    }

    // 登录验证
    public function login(){
        $username = input('username');
        $password = input('password');
        $token = input('__token__');
        $data = [
            'username' => $username,
            'password' => $password,
            '__token__' => $token,
        ];

        $validate = new \app\manage\validate\Reg;
        if (!$validate->scene('login')->check($data)) {
            $this->error($validate->getError());
        }
        // 判断逻辑
        $password = md5($password);
        // 查找登录用户
        $checkUser = db('admin')->where('username',$username)->where('password',$password)->find();
        if($checkUser){
            if($checkUser['state']!=1){
                $this->error('账号正在审核，请联系管理员审核');
            }else{
                session('admin',$checkUser['aid']);
                $this->success('登录成功','Main/index');
            }
        }else{
            $this->error('用户不存在');
        }


    }

}
