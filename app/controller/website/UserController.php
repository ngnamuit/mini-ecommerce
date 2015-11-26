<?php
namespace App\Controller\website;
use Sifoni\Controller\Base;
use App\Model\space\Model;
use App\Controller\website\PaymentController;
class UserController extends Base
{
	public function loginAction(){
 		$data['null']='';
 		if($this->getPostData('login')){
 			$input=$this->getPostData();
 			if(Model::CheckUser('user',$input['name'],$input['password'])){
 				$data['user'] = $this->app['session']->set('user',$input['name']);
 				return $this->redirect('index');
 			}
 			else
 				$data['notification_login'] = "Username hoac mat khau khong dung";
 		}
    	return $this->render('default/home/login.html.twig',$data);
    }
    public function logoutAction(){
    	$this->app['session']->remove('user');
    	return $this->redirect('index');
    }
    public function registerAction(){
    	$data['null']='';
 		if($this->getPostData('register')){
 			$input = $this->getPostData();
 			if( Model::issetUser('user',$input['user']) ){
                $data['notification'] = 'User đã tồn tại';
                return $this->render('default/home/login.html.twig',$data);
            }else{
                $input = array (
                    'username' => $input['user'],
                    'email'    => $input['email'],
                    'password' => md5($input['password']),
                );
                if(Model::add('user',$input)){
                    return $this->redirect('index');
                }else{
                    $data['notification'] = 'Có lỗi xảy ra';
                    return $this->render('default/home/login.html.twig',$data);
                }
            }
 		}
    	return $this->render('default/home/login.html.twig',$data);
    }
}