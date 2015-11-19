<?php
return array(
    '/quanly' => array(
        '/' => 'admin\AdminController:index:admin',
        '/home.html'=>'admin\AdminController:home:admin-home',
        '/login.html'=>'admin\AuthController:check:login-admin',
        '/logout.html'=>'admin\AuthController:logout:logout-admin',
        '/auth/deleted/{id}'=>'admin\AuthController:delete:delete-user:id=null',
        '/auth/updated/{id}'=>'admin\AuthController:update:update-user:id=null',
        '/changepass.html' => 'admin\AuthController:changepass:changepass',

        '/category.html'=>'admin\CategoryController:index:list_category',
        '/category/add.html'=>'admin\CategoryController:form:Add_category',
        '/category/deleted/{id}'=>'admin\CategoryController:Deleted:Deleted_category',
        '/category/updated/{id}'=>'admin\CategoryController:form:Updated_category',
        
        '/download.html'=>'admin\DownloadController:download:download',
        '/download/add.html'=>'admin\DownloadController:add:add_down',
        '/download/updated/{id}'=>'admin\DownloadController:updated:up_down',
        '/download/deleted/{id}'=>'admin\DownloadController:deleted:del_down',

        '/adv.html'=>'admin\AdvController:adv:adv',
        '/adv/add.html'=>'admin\AdvController:add:add_adv',
        '/adv/updated/{id}'=>'admin\AdvController:updated:up_adv',
        '/adv/deleted/{id}'=>'admin\AdvController:deleted:del_adv',

        '/Products/{idcate}/add.html'=>'admin\ProductsController:form:Add_Products',
        '/Products/{idcate}'=>'admin\ProductsController:index:list_Products',
        '/Products/{idcate}/update/{id}'=>'admin\ProductsController:form:update_Products',
        '/Products/{idcate}/delete/{id}'=>'admin\ProductsController:Delete:delete_Products',

        '/slider.html'=>'admin\ProductsController:Slider:slider',
        '/config.html'=>'admin\ConfigController:index:config',
        '/setting.html'=>'admin\SettingController:index:setting',


    ),
    '/' => array(
        '/' => 'website\HomeController:index:index',

        'pay/cart' => 'website\PayController:cart:cart',
        'pay/addcart.php' => 'website\PayController:AddCart:addcart',

        'block/menu' => 'website\BlockController:menu:menu_main',
        'block/sidebar' => 'website\BlockController:sidebar:sidebar',
        'block/footer' => 'website\BlockController:footer:footer',
        'block/headertop' => 'website\BlockController:headertop:headertop',
        'block/headermid' => 'website\BlockController:headermid:headermid',

        '/login' => 'website\HomeController:login:login',
        '/logout' => 'website\HomeController:logout:logout',

        '/{cate}/{product}'=>'website\ProductsController:view:view_Products',

        

    ),
    
);
?>
