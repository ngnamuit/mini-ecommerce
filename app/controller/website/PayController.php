<?php
namespace App\Controller\website;
use Sifoni\Controller\Base;
use App\Model\space\Model;
use Sifoni\Model\DB;
class PayController extends base
{
    public function cartAction(){
    	$data['a'] = '' ;   	
    	$user = $this->app['session']->get('user','');
    	$data['products'] = $this->app['session']->get('cart_'.$user,'');
    	
    	return $this->render('default/pay/cart.html.twig',$data);
    }
    public function AddCartAction(){
    	$user = $this->app['session']->get('user','');
    	$shopcart = $this->app['session']->get('cart_'.$user,'');
    	if($shopcart=='') 
    		$shopcart=array();
    	$iss='';
    	if($input=$this->getPostData()){
    		for($i=0;$i<count($shopcart);$i++){
    			if($input['id_']==$shopcart[$i]['id']){
    				$shopcart[$i]['quantity']++;
    				$iss=true;
    			}
    		}
    		if($iss==''){
    				$pro =  Model::getById('products',$input['id_']);
    				$cart = array(
			    		'id' => $pro->id,
			    		'images' => $pro->images,
			    		'price' => $pro->price,
			    		'name' => $pro->name,
			    		'num' => $pro->num,
			    		'quantity' => 1,
			    	);
	    			array_push($shopcart, $cart);
	    	}
	    	$this->app['session']->set('cart_'.$user,$shopcart);
	    	echo ($pro['id']);
	        exit();
    	}
    }	
}
