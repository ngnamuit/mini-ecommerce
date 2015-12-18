<?php
namespace App\Controller\admin;

use Sifoni\Controller\Base;
use App\Model\space\Model;
use App\Model\admin\Auth;

class ProductsController extends Base
{   
    public function __construct(){
        parent::__construct();
        $data['fullname'] = $nameAdmin = $this->app['session']->get('admin', '1');
        if ($nameAdmin == 1) {
            return $this->redirect('logout-admin');
        }
    }
    public function indexAction($idcate) {
        $data['Products'] = Model::getListProductById('products',$idcate);
        $data['idcate'] = $idcate;
        $data['title'] = 'Danh sach san pham';
        $data['fullname'] = $nameAdmin = $this->app['session']->get('admin', '');
        return $this->render('admin/post/list.html.twig', $data);
    }
    public function FormAction($idcate,$id='') {
        //
        if($id!=''){
            $data['action'] = 'update';
            $action = 'Cập nhật';
            $data['product'] = Model::getById('products',$id);
        }else{
            $data['action'] = 'add';
            $action = 'Thêm mới';
        }
        $data['title'] = $action.' sản phẩm ';
        $data['fullname'] = $this->app['session']->get('admin', '');
        //
        if($input=$this->getPostData()){
           $url= $this->app['slugify']->slugify($input['name']);
           $input=array(
                'name' => $input['name'],
                'images' =>$input['images'],
                'target' => $url,
                'cate'=>$idcate,
                'made'=>$input['made'],
                'num'=>$input['num'],
                'price'=>$input['price'],
            );
            if($data['action'] == 'add')
                $product = Model::add('products',$input);
            else
                $product = Model::update('products',$input,$id);
            if($product==true)
                return $this->redirect('list_Products',array('idcate' => $idcate));
            else
                $data['notification']='co loi xay ra';       
        }
        return $this->render('admin/post/form.html.twig', $data);
    }
    public function DeleteAction($idcate,$id) {
        $data['title'] = 'Xóa Tin Tức';
        $data['fullname'] = $this->app['session']->get('adminName', '1');
        $cate = Model::delete('products',$id);
        if ($cate == false) {
            $this->app['session']->getFlashBag()->add('message', 'không thành công');
        }      
        return $this->redirect('list_Products', array('idcate' => $idcate));
    }
   
}
