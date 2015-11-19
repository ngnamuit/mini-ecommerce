<?php
namespace App\Model\website;
use Sifoni\Model\Base;

class Category extends Base{
  protected $table = "cate";
  protected $primarykey = "id";
  public $timestamps = false;
  public function getTreeMenu() {
    $cats = Category::where('status','=','1')->get()->toArray();
    $tree = buildTree($cats);
    return $tree;
  }
  public function getAll() {
    $cats = Category::get();
    return $cats;
  }
  public function getCateParent(){
    $Cate=Category::where('status','=','1')->where('parent_id','=',0)->orderby('sort','asc')->get();
    if($Cate)
      return $Cate;
    return false;
  }
  public function getCateChild(){
    $Cate=Category::where('status','=','1')->where('parent_id','!=',0)->orderby('sort','asc')->get();
    if($Cate)
      return $Cate;
    return false;
  }
  public function getByAlias($target){
    return Category::where('target', '=', $target)->firstOrFail();
  }
  public function getCateByID($id){
    $Cate=Category::where('status','=','1')->where('id','=',$id)->get();
    if($Cate)
      return $Cate;
    return false;
  }
  public function CountParent_IDByCateID($id){
    $count=Category::where('status','=','1')->where('parent_id','=',$id)->count();
    if($count)
      return $count;
    return 1;
  }
  public function getCateChilByID($id){
    $Cate=Category::where('status','=','1')->where('parent_id','=',$id)->get();
    if($Cate)
      return $Cate;
    return false;
  }
  public function getPostByTar($target){
    $Cate=Category::where('status','=','1')->where('target','=',$target)->get();
    if($Cate)
      return $Cate;
    return false;
  }

}
?>
