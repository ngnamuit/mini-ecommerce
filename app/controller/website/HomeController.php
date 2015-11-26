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
        // dump($this->app['session']->get('re',''));
        return $this->render('default/home/home.html.twig', $data);
    }
    
}
