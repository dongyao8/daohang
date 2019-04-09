<?php

namespace app\manage\controller;

use think\Controller;
use think\Request;

class Base extends Controller
{
    /**
     * 初始化控制器
     *
     * @return \think\Response
     */
    public function initialize()
    {
        $system = db('system')->find();
        config('system.web_name',$system['title']);
        config('system.web_url',$system['url']);
    }

}
