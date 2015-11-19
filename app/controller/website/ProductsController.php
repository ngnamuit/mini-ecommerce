<?php
namespace App\Controller\website;

use Sifoni\Controller\Base;
use App\Model\website\Products;
use App\Model\website\Category;
use App\Model\website\Download;
use App\Model\website\Contact;

class ProductsController extends Base
{
    public function viewAction($cate,$product) {

        $data['Product'] = Products::getProductsByAlias($product);
        if(isset($data['Product']->id)==false){
            $data['notification'] = 'Sản phẩm không tồn tại';
        }
        return $this->render('default/Post/view.html.twig', $data);
    }
    public function searchAction($tag = null) {
        $data=$this->data;
        $input=$this->getProductsData();
        $data['search']=Products::Search($input['search']);
        return $this->render('default/Products/search.html.twig', $data);
    }
    public function contactAction() {
        $data=$this->data;
        if($this->getProductsData()){
           $input=$this->getProductsData();
           $captcha = md5($input['captcha']);
           if ($captcha == $this->app['session']->get('captcha_hash','null')){
               $getData=array(
                    'name'=>strip_tags($input['txtName']),
                    'address'=>strip_tags($input['txtAdd']),
                    'phone'=>$input['txtPhone'],
                    'email'=>strip_tags($input['txtEmail']),
                    'title'=>strip_tags($input['txtTitle']),
                    'content'=>$input['txtContent'],
                    'status'=>'1',
                );
               if(Contact::add($getData)==true){
                     $this->app['session']->getFlashBag()->add('message', 'Success');    
                     return $this->redirect('contact');
               }else{
                    $data['notification']='Erro';
                   
               }
            }else{
                    $data['notification']='Erro';
            
            }
        }
        //var_dump($data['lang']);die();
        return $this->render('default/Products/contact.html.twig', $data);
    }
}
