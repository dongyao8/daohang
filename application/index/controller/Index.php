<?php
namespace app\index\controller;
use think\Controller;

class Index extends Base
{
    public function index()
    {
        // 一级导航
        $fenlei = db('fenlei')->order('f_sort desc')->select();
        $this->assign('fenlei',$fenlei);

        // 友情链接
        $friend = db('friend')->order('l_sort desc')->limit(8)->select();
        $this->assign('friend',$friend);
        // 精品网站
        $jingpin = db('link_jp')->order('l_sort desc')->limit(24)->select();
        $this->assign('jingpin',$jingpin);
        return $this->fetch();
    }
    
    public function test(){
        return $this->fetch();
    }

}
