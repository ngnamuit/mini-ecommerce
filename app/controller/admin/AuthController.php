<?php
namespace App\Controller\admin;
use Sifoni\Controller\Base;
use App\Model\admin\Auth;
use App\Model\space\Model;
class AuthController extends Base
{
    public function CheckAction(){
        if($this->app['session']->get('admin','') == ''){return $this->LoginAction();}
        else{return $this->redirect('admin-home');}
    }
    public function LoginAction(){
        $data['title']='Đăng nhập vào hệ thống';
        $data['notification']='Đăng nhập vào hệ thống';
        if($input=$this->getPostData()){
            $user=Model::CheckUserAdmin('user',$input['username'],$input['password']);
            if($user){
                $this->app['session']->set('admin',$input['username']);
                return $this->redirect('admin-home');
            }
            else{
                $data['notification']='Username hoặc password không đúng';
            }
        }
        return $this->render('admin/auth/login.html.twig',$data);
    }
    public function LogoutAction(){
        $this->app['session']->remove('admin'); 
        return $this->CheckAction();
    }
}
