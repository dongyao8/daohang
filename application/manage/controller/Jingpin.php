<?php

namespace app\manage\controller;


class Jingpin extends Base
{
    /**
     * 显示网址列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $link = db('link_jp')->order('l_sort desc')->paginate(15);
        $this->assign('link',$link);
        return $this->fetch();
    }

    /**
     * 显示创建网址表单页.
     *
     */
    public function create()
    {
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
        // 上传LOGO图
        if(!$_FILES['l_pic']['tmp_name']){
            $this->error('二维码不能为空');
        }
        $file = request()->file('l_pic');
        $file_info = $file->validate(['size'=>2048000,'ext'=>'jpg,png,gif'])->move( '../public/static/LOGO'); //保存LOGO图
        if($file_info){
            $info['l_pic'] = $file_info->getSaveName();
        }else{
            $this->error($file->getError());
        }

        $creat_fenlei = db('link_jp')->insert($info);
        if($creat_fenlei){
            $this->success('创建成功','Jingpin/index');
        }else{
            $this->error('创建失败');
        }
    }

    /**
     * 显示编辑网址表单页.
     */
    public function edit($id)
    {
        $link = db('link_jp')->where('lid',$id)->find();
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
        if($_FILES['l_pic']['tmp_name']){
            
            $file = request()->file('l_pic');
            $file_info = $file->validate(['size'=>2048000,'ext'=>'jpg,png,gif'])->move( '../public/static/LOGO'); //保存LOGO图
            if($file_info){
                $info['l_pic'] = $file_info->getSaveName();
            }else{
                $this->error($file->getError());
            }
        }
        $creat_fenlei = db('link_jp')->where('lid',$id)->update($info);
        if($creat_fenlei){
            $this->success('修改成功','Jingpin/index');
        }else{
            $this->error('操作失败');
        }
    }

    /**
     * 删除指定网址
     */
    public function delete($id)
    {
        $shanchu = db('link_jp')->where('lid',$id)->delete();
        if($shanchu){
            $this->success('删除成功');
        }else{
            $this->error('操作失败');
        }
    }
}
