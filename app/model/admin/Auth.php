<?php
namespace App\Model\admin;
use Sifoni\Model\Base;
use DB;
class Auth extends Base
{
    protected $table = "user";
    protected $primarykey = "id";
    public $timestamps = false;
    public function checkLogin($postData) {
        $username = $postData['username'];
        $password = $postData['password'];
        $user = Auth::where('username', '=', $username)->first();

        if ($user && $user->password == md5($password) && $user->permittion == 'admin') {
            return $user;
        }
        return false;
    }
    public function changePassword($postData) {
        $username = $postData['txtUsername'];
        $password = md5($postData['txtPass']);
        $name=$postData['fullname'];

        $change = Auth::where('username', '=', $username)->update(array('password' => $password,'fullname' =>$name,));
        if ($change) {
                    return True;
                }
        else{
             return false;
        }
    }
    public function listUser() {
        $user = Auth::get();
        if($user){return $user;}
        return false;
    }
    public function getIDbyUsername($username){
        $id=Auth::where('username','=',$username)->first();
        if($id){return $id->id;}
        return false;
    }
    public function getDetailbyId($id){
        $detail=Auth::where('id','=',$id)->get();
        if($detail){return $detail;}
        return false;
    }
    public function deleteUserById($id){
         $user = Auth::where("id","=",$id)->delete();
        if($user){return true;}
        return false;
    }
}
