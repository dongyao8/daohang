<?php

namespace app\index\controller;

use think\Controller;
use think\Request;

class Base extends Controller
{
    protected function initialize()
    {
        $sys_info = db('system')->find();
        $this->assign('sys_info',$sys_info);
    }

}
