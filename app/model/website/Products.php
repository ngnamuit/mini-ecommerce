<?php
namespace App\Model\website;

use Sifoni\Model\Base;
use App\Model\website\Category;
use App\Model\website\User;
class Products extends Base
{
    protected $table = "products";
    protected $primarykey = "id";
    public $timestamps = false;

    // lay Products theo id
    public function getProducts($id) {
        $Products = Products::where('id', '=', $id)->where('status', '=', 1)->get();
        if ($Products) return $Products;
        return false;
    }
    public function getAll() {
        $Products = Products::get();
        if ($Products) return $Products;
        return false;
    }
    public function getProductsByAlias($alias) {
        $Products = Products::where('target', '=', $alias)->first();
        if ($Products) return $Products;
        return false;
    }
    // lay tin Hot
    public function getProductsHot($limit=5) {
        $limit = 5;
        $Products = Products::orderBy('viewed', 'desc')->where('status', '=', 1)->skip(0)->take($limit)->get();
        if ($Products) {
            return $Products;
        }
        return false;
    }

    // lay tin mới
    public function getProductsNew($limit=5) {
        $Products = Products::orderBy('updated', 'desc')->where('status', '=', 1)->skip(0)->take($limit)->get();
        if ($Products) {
            return $Products;
        }
        return false;
    }

    public function getslider(){
        $Products = Products::select('*')->where("slider","=",1)->where('status', '=', 1)->orderBy('updated', 'desc')->get();
        if($Products){return $Products;}
        return false;
    }
    public function add($ProductsData) {
        $add = Products::insert($ProductsData);
        if ($add) {
            return true;
        }
        return false;
    }
    // lay Products theo category ID
    public function getAllProductsById($id,$par=0,$limit=5) {
        if($par==0){
            $Products = Products::where('category', '=', $id)->where('status', '=', 1)->orderBy('updated', 'desc')->skip(0)->take($limit)->get();
        }
        else{
            $Products = Products::where('category', '=', $id)->where('status', '=', 1)->orderBy('updated', 'desc')->skip(($par-1)*$limit)->take($limit)->get();
        }

        if ($Products) return $Products;
        return false;
    }

    // LẤY Products THEO IDcate
    public function getProductsChil($id, $limit = 0, $par = 0) {
        if ($limit == 0) {
            $Products = Products::where('category', '=', $id)->where('status', '=', 1)->orderBy('updated', 'desc')->skip(($par - 1) * $limit)->take(10)->get();
        }
        else {
            $Products = Products::where('category', '=', $id)->where('status', '=', 1)->orderBy('updated', 'desc')->skip(($par - 1) * $limit)->take($limit)->get();
        }
        if ($Products) return $Products;
        return false;
    }
    public function getAllProductsbyIdCate($idcate, $limit = 0, $par = 0, $parent_id = 0) {
        if ($parent_id != 0) {
            if ($limit == 0) {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                ->where('category.parent_id', '=', $idcate)->get();
            }
            else {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                ->select('Products.id', 'Products.category', 'Products.title', 'Products.images', 'Products.content', 'Products.content_short', 'Products.updated', 'Products.user', 'Products.keywords', 'Products.description','Products.alias','category.name')
                ->where('category.parent_id', '=', $idcate)
                ->skip(($par - 1) * $limit)->take($limit)
                ->get();
            }
        }
        else {
            if ($limit == 0) {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                ->where('category.id', '=', $idcate)
                ->get();
            }
            else {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                ->select('Products.id', 'Products.category', 'Products.title', 'Products.images', 'Products.content', 'Products.content_short', 'Products.updated', 'Products.user', 'Products.keywords', 'Products.description','Products.alias','category.name')
                ->where('category.id', '=', $idcate)
                ->skip(($par - 1) * $limit)
                ->take($limit)
                ->get();
            }
        }

        if ($Products) {
            return $Products;
        }
        return false;
    }
    public function Search($keyword,$lang, $date = '', $limit = 4, $par = 0) {
        if ($date == '') {
            $Products = Products::where('title_'.$lang, 'like', '%'.$keyword . '%')->where('status', '=', 1)->orderBy('updated', 'desc')->skip(($par - 1) * $limit)->take($limit)->get();
        }
        else {
            $Products = Products::where('title_'.$lang, 'like', '%'.$keyword . '%')->where('status', '=', 1)->orderBy('updated', 'desc')->where('updated', '=', $date)->orwhere('content_'.$lang, 'like', $keyword . '%')->skip(($par - 1) * $limit)->take($limit)->get();
        }
        if ($Products) return $Products;
        return false;
    }

    //lay toan bo thong tin Products bao gom ca thong tin nguoi up
    public function getAllAboutProductsbyIdCate($idcate, $limit = 0, $par = 0, $parent_id = 0, $count = 0) {

        //truong hop load tin theo danh danh muc khong co thu muc con
        if ($parent_id == 0) {
            //truong hop load tin theo danh danh muc cha khong co thu muc con
            if ($count == 0) {
                if ($limit == 0) {
                    $Products = Products::join('category', 'Products.category', '=', 'category.id')
                    ->where('category.id', '=', $idcate)
                    ->skip(($par - 1) * $limit)
                    ->orderBy('updated', 'desc')
                    ->take(10)
                    ->get();
                }
                else {
                    $Products = Products::join('category', 'Products.category', '=', 'category.id')
                    ->where('category.id', '=', $idcate)
                    ->skip(($par - 1) * $limit)
                    ->orderBy('updated', 'desc')
                    ->take($limit)
                    ->get();
                }
            }
            //truong hop load tin theo danh danh muc cha co thu muc con
            else{
                if ($limit == 0) {
                    $Products = Products::join('category', 'Products.category', '=', 'category.id') 
                    ->where('category.parent_id', '=', $idcate)
                    ->orderBy('category', 'desc')
                    ->skip(($par - 1) * $limit)
                    ->take(10)
                    ->get();
                }
                else {
                    
                    $Products = Products::join('category', 'Products.category', '=', 'category.id')
                    
                    
                    ->where('category.parent_id', '=', $idcate)
                    ->orderBy('category', 'desc')
                    ->skip(($par - 1) * $limit)
                    ->take($limit)
                    ->get();
                }
            }
        }
        //truong hop lop load tat ca tin theo danh muc co thu muc con
        if ($parent_id != 0)  {
            if ($limit == 0) {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                
                ->where('category.id', '=', $parent_id)
                ->orderBy('updated', 'desc')
                ->skip(($par - 1) * $limit)
                ->take(10)
                ->get();
            }
            else {
                $Products = Products::join('category', 'Products.category', '=', 'category.id')
                
                ->where('category.id', '=', $parent_id)
                ->orderBy('updated', 'desc')
                ->skip(($par - 1) * $limit)
                ->take($limit)
                ->get();
            }
        }
        if ($Products) {
            return $Products;
        }
        return false;
    }
    public function getProducts_relative($cateid,$id, $par = 0, $limit = 0) {
        if ($limit == 0) {
            $Products = Products::where('category', '=', $cateid)->where('status', '=', 1)->where('id', '!=', $id)->orderBy('updated', 'desc')->skip(($par - 1) * $limit)->take(10)->get();
        }
        else {
            $Products = Products::where('category', '=', $cateid)->where('status', '=', 1)->where('id', '!=', $id)->orderBy('updated', 'desc')->skip(($par - 1) * $limit)->take($limit)->get();
        }
        if ($Products) return $Products;
        return false;
    }
}
?>
