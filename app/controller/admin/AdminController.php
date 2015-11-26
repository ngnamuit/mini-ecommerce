<?php
namespace App\Controller\admin;
use App\Controller\admin\AuthController;
use App\Model\admin\Auth;
class AdminController extends AuthController {
    function __construct(){
        parent::__construct();
    }
    public function indexAction() {
        return $this->redirect('login-admin');
    }
    public function homeAction(){
        $data['title']='Quản trị hệ thống';
        $data['fullname']=$this->app['session']->get('admin','');
    	return $this->render('admin/home/index.html.twig',$data);
    }

}
