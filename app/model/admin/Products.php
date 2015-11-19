<?php

namespace App\Model\admin;
use Sifoni\Model\Base;
use DB;
class Products extends Base {
  protected $table="products";
  protected $primarykey="id";
  public $timestamps = false;
  public function getlist($idcate){
    $Products = Products::select('*')->where("cate","=",$idcate)->orderby('sort','asc')->get();
    if($Products){return $Products;}
    return false;
  }
  public function getslider(){
    $Products = Products::select('*')->where("slider","=",1)->orderby('sort','asc')->get();
    if($Products){return $Products;}
    return false;
  }
  public function getProducts($id){
    $Products = Products::where("id","=",$id)->get();
    if($Products){return $Products;}
    return false;
  }
  public function update($data,$id){
    $Products = Products::where("id","=",$id)->update($data);
    if($Products){return true;}
    return false;
  }
  public function delete($id){
    $Products = Products::where("id","=",$id)->delete();
    if($Products){return true;}
    return false;
  }
  public function add($ProductsData){
    $Products = Products::insert($ProductsData);
   if($Products){return true;}
    return false;
  }
}
