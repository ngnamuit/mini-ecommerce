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
    	$data['products'] = $shopcart =  $this->app['session']->get('cart_'.$user,'');
    	dump($data['products']);
    	return $this->render('default/pay/cart.html.twig',$data);
    }
    public function AddCartAction(){
    	$user = $this->app['session']->get('user','');
    	$shopcart = $this->app['session']->get('cart_'.$user,'');
    	if($shopcart=='') 
    		$shopcart=array();
    	$iss='';
    	if($input=$this->getPostData()){
            $total_price = $input['total_price'] ;
    		for($i=0;$i<count($shopcart);$i++){
    			if($input['id_']==$shopcart[$i]['id']){
    				$shopcart[$i]['quantity']++;
                    $shopcart[$i]['total'] = $shopcart[$i]['quantity'] * $shopcart[$i]['price'];
                    $shopcart[$i]['total_price'] = $total_price = $shopcart[$i]['total_price'] + $shopcart[$i]['price'];
    				$iss=true;
    			}else{
                    $shopcart[$i]['total_price'] = $total_price = $total_price + $shopcart[$i]['total'];
                }
    		}
    		if($iss==''){
    				$pro =  Model::getById('products',$input['id_']);
                    $total_price = $total_price + $pro->price;
    				$cart = array(
			    		'id' => $pro->id,
			    		'images' => $pro->images,
			    		'price' => $pro->price,
                        'total' => $pro->price,
			    		'name' => $pro->name,
			    		'num' => $pro->num,
			    		'quantity' => 1,
                        'total_price' => $total_price,
			    	);
	    			array_push($shopcart, $cart);
	    	}
            $data['total_price'] = $total_price ;
	    	$this->app['session']->set('cart_'.$user,$shopcart);
	    	echo ($pro['id']);
	        exit();
    	}
    }
    public function RemoveCartAction(){
        $user = $this->app['session']->get('user','');
        $pros = $this->app['session']->get('cart_'.$user,'');
        if($input = $this->getPostData()){
            $id = $input['id_'];
            $pros=$this->removeElementWithValue($pros,'id',$id);  
            $this->app['session']->set('cart_'.$user,$pros);
            
        }
        exit();
    }
    public function UpdateCartAction(){
        $user = $this->app['session']->get('user','');
        $shopcart = $this->app['session']->get('cart_'.$user,'');
        if($input = $this->getPostData()){           
            for($i=0;$i<count($shopcart);$i++){
                if($input['name_'] == $shopcart[$i]['name']){     
                    $shopcart[$i]['quantity'] = $input['quantity_'];
                    $shopcart[$i]['total'] = $shopcart[$i]['quantity'] * $shopcart[$i]['price'];
                    $shopcart[$i]['total_price'] = $total_price = $shopcart[$i]['total_price'] + $shopcart[$i]['price'];
                } 
            }
            $this->app['session']->set('cart_'.$user,$shopcart);
        }
        exit();   
    }
    public function SaveShopCartAction(){
        
    }
    function removeElementWithValue($array, $key, $value){
        foreach($array as $subKey => $subArray){
            if($subArray[$key] == $value){
                unset($array[$subKey]);
            }
        }
        return $array;
    }	
}
