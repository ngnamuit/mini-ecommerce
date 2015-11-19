<?php
namespace App\Controller\website;
use Sifoni\Controller\Base;
use App\Model\Post;
use App\Model\Category;
use App\Model\Download;
use Sifoni\Model\DB;
class BlockController extends Base
{
	public function MenuAction(){
		$data['title2']='';
		return $this->render('default/block/menu.html.twig',$data);
	}
	public function sidebarAction(){
		$data['title2']='';
		return $this->render('default/block/sidebar.html.twig',$data);
	}
	public function footerAction(){
		$data['title2']='';
		return $this->render('default/block/footer.html.twig',$data);
	}
	public function headertopAction(){
		$data['title2']='';
		return $this->render('default/block/headertop.html.twig',$data);
	}
	public function headermidAction(){
		$data['user'] = $this->app['session']->get('user','');
		return $this->render('default/block/headermid.html.twig',$data);
	}
}