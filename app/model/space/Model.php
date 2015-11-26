<?php
namespace App\Model\space;
use Sifoni\Model\Base;
use Sifoni\Model\DB;
class Model extends Base
{
    protected $table = "user";
    protected $primarykey = "id";
    public $timestamps = false;
    public function CheckUserAdmin($table,$user,$pass){
        $pass=md5($pass);
        $user = DB::table($table)->where('username','=',$user)->where('permittion','=','admin')->first();
        if($user->password==$pass&&$user->password!='')
            return true;
        return false;
    }
    public function CheckUser($table,$user,$pass){
        $pass=md5($pass);
        $user = DB::table($table)->where('username','=',$user)->first();
        if($user->password==$pass&&$user->password!='')
            return true;
        return false;
    }
    public function issetUser($table,$user){
        $user = DB::table($table)->where('username','=',$user)->first();
        if(isset($user->id))
            return true;
        return false;
    }
    public function update($table,$data,$id){
        $Products = DB::table($table)->where("id","=",$id)->update($data);
        if($Products){return true;}
        return false;
    }
    public function delete($table,$id){
        $Products = DB::table($table)->where("id","=",$id)->delete();
        if($Products){return true;}
        return false;
    }
    public function add($table,$ProductsData){
        $Products = DB::table($table)->insert($ProductsData);
        if($Products){return true;}
        return false;
    }
    public function getById($table,$id){
        $Products = DB::table($table)->where("id","=",$id)->first();
        if($Products){return $Products;}
        return false;
    }
    public function getAll($table){
        $Products = DB::table($table)->get();
        if($Products){return $Products;}
    return false;
    }
    public function getListProductById($table,$idcate){
        $Products = DB::table($table)->where("cate","=",$idcate)->orderby('sort','asc')->get();
        if($Products){return $Products;}
        return false;
    }
}