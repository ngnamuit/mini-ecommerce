<?php

namespace App\Controller\admin;
use Sifoni\Controller\Base;
use App\Model\admin\Auth;
class ControllerAdminController extends Base 
{
	pulic function __construct(){
		parent::__construct();
		$nameAdmin=$this->app['session']->get('adminName','');
        if($nameAdmin==''){
            return $this->redirect('login-admin');
        }
	}
}