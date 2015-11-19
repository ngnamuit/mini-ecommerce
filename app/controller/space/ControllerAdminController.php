<?php
namespace App\Controller\admin;

use Sifoni\Controller\Base;
use App\Model\admin\Model;

class ControllerAdminController extends Base
{
    public function indexAction() {
        $data['category'] = Category::getList();
        return $this->render('admin/category/list.html.twig', $data);
    }
    public function listParAction($idcate) {
        $nameAdmin = $this->app['session']->get('adminName', '1');
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
        $data['fullname'] = $this->app['session']->get('adminName', '1');
        $data['control'] =  'Quản lý '.$category;
        return $this->render('admin/category/list.html.twig', $data);
    }
    public function UpdatedAction($id) {
        $data['title'] = 'Update Tin Tức';
        $data['fullname'] = $this->app['session']->get('adminName', '1');
        $data['control'] = 'Tin Tức';
        $data['category'] = Category::getByCate($id);
        $data['cate'] = Category::getList();
        if ($input=$this->getPostData()) {
            $url= $this->app['slugify']->slugify($input['name']);     
            $post = array(
                'name' => $input['name'],
                'target' => $url,
            );
            if (Category::update($post, $id) == true) {
                $this->app['session']->getFlashBag()->add('category_update', 'Updated thành công');
                $this->app['session']->remove('message');
                return $this->redirect('list_category');
            }
            if (Category::update($data, $id) == false) {
                $data['notification'] = 'Có lỗi,vui lòng thử lại !';
            }
        }
        return $this->render('admin/category/updated.html.twig', $data);
    }
    
    public function DeletedAction($id) {
        $nameAdmin = $this->app['session']->get('adminName', '1');
        if ($nameAdmin == 1) {
            return $this->redirect('login-admin');
        }
        $data['title'] = 'Quản lý danh mục tin tức';
        $data['fullname'] = $this->app['session']->get('adminName', '1');
        if (Category::delete($id) == true) {
            $this->app['session']->remove('message');
            $this->app['session']->getFlashBag()->add('message', 'Xóa thành công');
            return $this->redirect('list_category');
        }
        $this->app['session']->getFlashBag()->add('message', 'Không thành công');
        return $this->redirect('list_category');
    }
    public function AddAction() {
        $nameAdmin = $this->app['session']->get('adminName', '1');
        if ($nameAdmin == 1) {
            return $this->redirect('login-admin');
        }
        $data['title'] = 'Thêm chuyên mục';
        $data['control'] = 'Tin Tức';
        $data['category'] = Category::getList();
        $data['fullname'] = $this->app['session']->get('adminName', '1');
        if ($this->getPostData('add')) {

            $input = $this->getPostData();
            $alias= $this->app['slugify']->slugify($input['name_vi']);
            $dataPost = array(
                'name_vi' => strip_tags($input['name_vi']), 
                'name_en' => strip_tags($input['name_en']),
                'name_ja' => strip_tags($input['name_ja']),
                'name_cn' => strip_tags($input['name_cn']),
                'parent_id' => $input['parent_id'], 
                'sort' => $input['sort'], 
                'status' => $input['status'], 
                'keywords' => $input['keywords'],
                'target'=>$alias,);

            if (Category::add($dataPost) == true) {
                $this->app['session']->getFlashBag()->add('message', 'Thêm thành công');
                $this->app['session']->remove('message');
                return $this->redirect('list_category');
            }
            if (Category::add($dataPost) == false) {
                $data['notification'] = 'Có lỗi,vui lòng thử lại !';
                return $this->render('admin/category/add.html.twig', $data);
            }
        }
        return $this->render('admin/category/add.html.twig', $data);
    }