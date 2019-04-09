<?php

namespace app\manage\validate;

use think\Validate;

class Reg extends Validate
{
     /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
        'username'=> 'require|alphaNum|min:4',
        'password'=> 'require|length:6,28',
        'email' => 'require|email',
        '__token__' => 'require|token',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'username.min' => '用户名长度不能小于4位',
        'username.chsAlphaNum' => '用户名只能是字母和数字',
        'username.require' => '用户名不能为空',

        'password.require' => '密码不能为空',
        'password.length' => '密码长度不能小于6位',

        'email.require' => '邮箱不能为空',
        'email.email' => '邮箱不正确',

        '__token__.require' => '非法请求001',
        '__token__.token' => '非法请求002',
        
    ];

    protected $scene = [
        'login'  =>  ['username','password','__token__'],
        'reg' => ['username','password','email','__token__'],
    ];
}
