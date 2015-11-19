<?php
namespace App\Controller\admin;

use Sifoni\Controller\Base;
use App\Model\admin\Category;
use App\Model\admin\Post;
use App\Model\admin\Auth;
use App\Model\space\Model;
class CategoryController extends Base
{
    public function indexAction() {
        $data['title'] = 'Quản lý danh mục';
        $data['fullname'] = $this->app['session']->get('admin', '');
        $data['control'] = 'Quản lý danh mục tin tức';
        $data['category'] = Category::getList();
        return $this->render('admin/category/list.html.twig', $data);
    }
    public function listParAction($idcate) {
        $nameAdmin = $this->app['session']->get('admin', '');
        if ($nameAdmin == 1) {
            return $this->redirect('login-admin');
        }
        $this->app['session']->remove('message');
        $data['category'] = Category::getList($idcate);
        $data['test']=$cate = Category::getByCate($idcate);
        foreach ($cate as $category) {
            $category=$category->name_vi;
        }     
        $data['title'] = 'Quản lý '.$category;
        $data['fullname'] = $this->app['session']->get('admin', '');
        $data['control'] =  'Quản lý '.$category;
        return $this->render('admin/category/list.html.twig', $data);
    }
    public function FormAction($id='') {
        //set
        if($id!=''){
            $action = 'update';
            $data['action'] = 'update';
            $data['category'] = Model::getById('cate',$id);            
        }
        else{
            $action='add';
        }
        $data['title']='';
        $data['fullname']='';
        //enter
        if ($input=$this->getPostData()) {
            $url= $this->app['slugify']->slugify($input['name']);     
            $post = array(
                'name' => $input['name'],
                'target' => $url,
            );
            if($action=='update')
                $cate=Model::update('cate',$post, $id);
            else
                $cate=Model::add('cate',$post);

            //check
            if($cate == true )
                 return $this->redirect('list_category');
            else
             $data['notification']='Co loi xay ra';
                        
        }
        return $this->render('admin/category/form.html.twig', $data);
    }    
    public function DeletedAction($id) {
        $nameAdmin = $this->app['session']->get('admin', '');
        if ($nameAdmin == '') {
            return $this->redirect('login-admin');
        }
        $data['title'] = 'Quản lý danh mục tin tức';
        $data['fullname'] = $this->app['session']->get('adminName', '');
        if (Category::delete($id) == true) {
            $this->app['session']->remove('message');
            $this->app['session']->getFlashBag()->add('message', 'Xóa thành công');
            return $this->redirect('list_category');
        }
        $this->app['session']->getFlashBag()->add('message', 'Không thành công');
        return $this->redirect('list_category');
    }
    
}
