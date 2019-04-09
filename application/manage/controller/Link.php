<?php

namespace app\manage\controller;


class Link extends Base
{
    /**
     * 显示网址列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $link = db('link')->order('l_sort desc')->paginate(15);
        $this->assign('link',$link);
        return $this->fetch();
    }

    /**
     * 显示创建网址表单页.
     *
     */
    public function create()
    {
        $fenlei = db('fenlei')->order('f_sort desc')->select();
        $this->assign('fenlei',$fenlei);
        return $this->fetch();
    }

    /**
     * 保存新建的网址
     *
     */
    public function save()
    {
        $info = input('post.');
        if($info['l_name']=="" || $info['l_url']=="" || $info['l_sort']==""){
            $this->error('请完整填写信息');
        }
        $info['l_state'] = 1;
        $info['l_num'] = 0; //网址热度，初始值为0
        // 新增网址
        $creat_fenlei = db('link')->insert($info);
        if($creat_fenlei){
            $this->success('创建成功','Link/index');
        }else{
            $this->error('创建失败');
        }
    }

    /**
     * 显示编辑网址表单页.
     */
    public function edit($id)
    {
        $link = db('link')->where('lid',$id)->find();
        $fenlei = db('fenlei')->order('f_sort desc')->select();
        $this->assign('fenlei',$fenlei);
        $this->assign('link',$link);
        return $this->fetch();
    }

    /**
     * 保存更新的网址
     */
    public function update($id)
    {
        $info = input('post.');
        if($info['l_name']=="" || $info['l_url']=="" || $info['l_sort']==""){
            $this->error('请完整填写信息');
        }
        // 更新数据
        $creat_fenlei = db('link')->where('lid',$id)->update($info);
        if($creat_fenlei){
            $this->success('修改成功');
        }else{
            $this->error('操作失败');
        }
    }

    /**
     * 删除指定网址
     */
    public function delete($id)
    {
        $shanchu = db('link')->where('lid',$id)->delete();
        if($shanchu){
            $this->success('删除成功');
        }else{
            $this->error('操作失败');
        }
    }
}
