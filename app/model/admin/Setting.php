<?php
namespace App\Model\admin;
use Sifoni\Model\Base;
use DB;
class Setting extends Base
{ 
	protected $table = "setting";
    protected $primarykey = "id";
    public $timestamps = false;
    public function getData(){
    	$config = Setting::get();
        return $config;
    }
    public function updateData($data){
        $update = Setting::where('id','=',1)->update(array(
            'page_name' => $data['page_name'],
            'keywords' => $data['keywords'], 
            'description' => $data['description'], 
            ));
        if($update){
            return true;
        }
        return false;
    }
}
