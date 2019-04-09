<?php

namespace app\manage\controller;

class Main extends Base
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        
        return $this->fetch();
    }

    /**
     * 系统设置.
     */
    public function system()
    {
        $sys = db('system')->find();
        $this->assign('sys',$sys);
        return $this->fetch();
    }

    /**
     * 保存新的系统配置
     */
    public function edit_sys()
    {
       $con = input('post.');

       $xiugai = db('system')->where('sid',1)->update($con);
       if($xiugai){
            $this->success('修改成功');
       }else{
            $this->error('修改失败');
       }
    }

}
