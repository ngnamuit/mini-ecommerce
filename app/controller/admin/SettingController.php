<?php
namespace App\Controller\admin;

use Sifoni\Controller\Base;
use App\Model\admin\Auth;
use App\Model\admin\Setting;
class SettingController extends Base
{
    public function indexAction() {
        $nameAdmin = $this->app['session']->get('adminName', '1');
        if ($nameAdmin == 1) {
            return $this->redirect('login-admin');
        }
        $data['title'] = 'Quản trị hệ thống';
        $data['fullname'] = $this->app['session']->get('adminName', 'Null');
        $data['control'] = 'Cài đặt thông tin website';
        if (Setting::getData()) {
            $data['social'] = Setting::getData();
        }
        if ($this->getPostData("update")) {
            $postData = $this->getPostData();
            if (Setting::updateData($postData) == True) {
                $this->app['session']->remove('message');
                $this->app['session']->getFlashBag()->add('message', 'Cập nhật thông tin thành công');
                return $this->redirect('setting');
            }
            if (Setting::updateData($postData) == false) {
                $this->app['session']->remove('message');
                $this->app['session']->getFlashBag()->add('message', 'Có lỗi xảy ra,vui lòng thử lại');
                return $this->redirect('setting');
            }
        }
        return $this->render('admin/setting/form.html.twig', $data);
    }
}
