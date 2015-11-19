<?php

namespace App\Model;
use Sifoni\Model\Base;
use DB;
class Adv extends Base {
  protected $table="adv";
  protected $primarykey="id";
   public $timestamps = false;
  public function getadv(){
    $post = Adv::select('*')->get();
    if($post){return $post;}
    return false;
  }
  
}
?>