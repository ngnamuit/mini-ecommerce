<?php
namespace App\Controller\website;
use Sifoni\Controller\Base;
use App\Model\space\Model;

class HomeController extends Base
{
    public function indexAction()
    {
        $data['products'] = Model::getAll('products');
        $data['cate']= Model::getAll('cate');
        $data['user'] = $this->app['session']->get('user','');
        // $this->app['session']->remove('cart_'.$data['user']);
        return $this->render('default/home/home.html.twig', $data);
    }
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
}
