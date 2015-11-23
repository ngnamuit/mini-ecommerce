<?php
namespace App\Controller\website;
use Sifoni\Controller\Base;
use App\Model\space\Model;
use App\Controller\website\PaymentController;
class HomeController extends Base
{
    public function indexAction()
    {
        $data['products'] = Model::getAll('products');
        $data['cate']= Model::getAll('cate');
        $data['user'] = $this->app['session']->get('user','');
        // $this->app['session']->remove('cart_'.$data['user']);
        dump($this->app['session']->get('re',''));
        return $this->render('default/home/home.html.twig', $data);
    }
    public function ThanhToanAction(){
        $thantoan = new PaymentController;
        return $thantoan->createRequestUrlAction();
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
