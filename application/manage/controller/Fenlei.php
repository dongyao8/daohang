<?php

namespace app\manage\controller;

class Fenlei extends Base
{
    /**
     * 显示分类
     *
     * @return \think\Response
     */
    public function index()
    {
        $fenlei = db('fenlei')->order('f_sort desc')->paginate(15);
        $this->assign('fenlei',$fenlei);
        return $this->fetch();
    }

    /**
     * 显示创建分类表单页.
     */
    public function create()
    {
        return $this->fetch();
    }

    /**
     * 保存分类资源
     */
    public function save()
    {
        $name = input('f_name');
        $sort = input('f_sort');
        if($name==""){
            $this->error('分类名称不能为空');
        }
        // 判断分类名是否重复
        $fenlei_name = db('fenlei')->where('f_name',$name)->find();
        if($fenlei_name){
            $this->error('该分类已经存在');
        }
        // 创建分类
        $creat_fenlei = db('fenlei')->insert(['f_name'=>$name,'f_sort'=>$sort]);
        if($creat_fenlei){
            $this->success('创建成功','Fenlei/index');
        }else{
            $this->error('创建失败');
        }
    }


    /**
     * 显示编辑分类表单页.
     *
     */
    public function edit($id)
    {
       $fenlei = db('fenlei')->where('fid',$id)->find();
       $this->assign('fenlei',$fenlei);
       return $this->fetch();
    }

    /**
     * 保存更新的资源
     *
     */
    public function update($id)
    {
        $name = input('f_name');
        $sort = input('f_sort');
        if($name==""){
            $this->error('分类名称不能为空');
        }
        // 判断分类名是否重复
        $fenlei_name = db('fenlei')->where('f_name',$name)->find();
        if($fenlei_name){
            if($fenlei_name['fid'] != $id){
                $this->error('该分类已经存在');
            }
        }
        // 创建分类
        $creat_fenlei = db('fenlei')->where('fid',$id)->update(['f_name'=>$name,'f_sort'=>$sort]);
        if($creat_fenlei){
            $this->success('修改成功','Fenlei/index');
        }else{
            $this->error('操作失败');
        }
    }

    /**
     * 删除指定资源
     *
     */
    public function delete($id)
    {
        // 先判断该分类下是否有网址
        $link = db('link')->where('fid',$id)->count();
        if($link != 0){
            $this->error('该分类下还有'.$link.'条网址未删除，请删除后再清理分类');
        }
        // 分类下无网址再执行删除
        $shanchu = db('fenlei')->where('fid',$id)->delete();
        if($shanchu){
            $this->success('删除成功');
        }else{
            $this->error('操作失败');
        }
    }
}
