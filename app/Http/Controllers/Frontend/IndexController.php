<?php

namespace App\Http\Controllers\Frontend;
use App\Models\Product;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function ProductDetails($id,$slug){
        $product=Product::findOrFail($id);
        return view('frontend.product.product_details',compact('product'));
    }
}
