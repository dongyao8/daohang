<?php

// 循环网址列表
function get_link($fid){
    $link = db('link')->order('l_sort desc')->where('fid',$fid)->limit(6)->select();
    return $link;
}