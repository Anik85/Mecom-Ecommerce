<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Cart;
use Carbon\Carbon;
use App\Models\User;
use Image;

class CartController extends Controller
{
    public function addToCart(Request $request,$product_id){
        $check=Cart::where('product_id',$product_id)->first();
        if($check){
            Cart::where('product_id',$product_id)->increment('product_qty');
        }else{
            Cart::insert([
                'product_id'=>$product_id,
                'product_qty'=>1,
                'price'=>$request->price,
                'user_ip'=>request()->ip(),
            ]);
            
        }
        return redirect()->back()->with('success','add to cart successful');
        
        
    }
    public function remove(Request $request){
        if($request->id){
            $cart=session()->get('cart');
            if(isset($cart[$request->id])){
                unset($cart[$request->id]);
                session()->put('cart',$cart);
            }
            session()->flash('success','product successfully removed');
        }
    }
}
