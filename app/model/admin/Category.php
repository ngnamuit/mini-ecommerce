<?php
namespace App\Model\admin;
use Sifoni\Model\Base;
use DB;
class Category extends Base
{
    protected $table = "cate";
    protected $primarykey = "id";
    public $timestamps = false;
    public function getList($field='',$idcate=''){
      if($idcate == ''){
        if($field == '')
          $cate =  Category::get();
        else
          $cate =  Category::select($field)->get();
      }
      else{
        if($field == '')
          $cate =  Category::where('parent_id','=',$idcate)->get();
        else
          $cate =  Category::where('parent_id','=',$idcate)->select($field)->get();
      }
      return $cate;
    }

    public function getT($id) {
      $category = Category::select('id','parent_id')->where("id", "=", $id)->get();
      if($category){return $category;}
      return false;

    }
    public function getByCate($id) {
      $category = Category::where("id", "=", $id)->get();
      if($category){return $category;}
      return false;

    }
    public function getById($id) {
        $category = Category::select("id", "name")->where("id", "=", $id)->get();
        if($category){
        return $category;
      }
      return false;
    }
    public function update($data,$id){
      $category = Category::where("id","=",$id)->update($data);
      if($category){
        return true;
      }
      return false;
    }
    public function delete($id){
      $category = Category::where("id","=",$id)->delete();
      if($category){
        return true;
      }
      return false;
    }
    public function add($data){
      $category = Category::insert($data);
      if($category){
        return true;
      }
      return false;
    }
    
}
