<?php
  namespace App\Model\admin;
  use Sifoni\Model\Base;
  use DB;
  class Adv extends Base
  {
    protected $table = "adv";
    protected $primarykey = "id";
    public $timestamps = false;
    public function getlist(){
      $adv=Adv::orderby('sort','desc')->get();
      if($adv){
        return $adv;
      }
      return false;
    }
    public function getlistbyid($id){
      $adv=Adv::where('id','=',$id)->get();
      if($adv){
        return $adv;
      }
      return false;
    }
    public function add($data){
      $category = Adv::insert($data);
      if($category){
        return true;
      }
      return false;
    }
    public function update($data,$id){
      $category = Adv::where("id","=",$id)->update($data);
      if($category){
        return true;
      }
      return false;
    }
    public function del($id) {
      $del = Adv::where("id","=",$id)->delete();
      if($del){
        return true;
      }
      return false;
    }
  }
?>
