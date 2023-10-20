<?php

namespace App\Http\Controllers;
use App\Models\Product;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\User;
use Image;

class ProductController extends Controller
{
    public function index()
    {
        $products=Product::all();
        return view('admin.products.index',compact('products'));
    }
    public function create()
    {
        $activeVendor=User::where('status','active')->where('role','vendor')->latest()->get();
        $brands=Brand::latest()->get();
        $categories=Category::latest()->get();
        return view('admin.products.create',compact('brands','categories','activeVendor'));
        // 
    }
    public function store(Request $request)
    {
        $image= $request->file('product_image');
        $fileName=hexdec(uniqid()).'.'.
            $image->getClientOriginalExtension();
            'Image'::make($image)->resize(300,300)->save('upload/product/'.$fileName);
        $save_url='upload/product/'.$fileName;
        Product::create([
           'brand_id'=>$request->brand_id, 
           'category_id'=>$request->category_id, 
           'product_name'=>$request->product_name, 
           'product_slug'=>strtolower(str_replace('','-',$request->product_name)), 
           'product_code'=>$request->product_code,
           'product_qty'=>$request->product_qty,
           'product_tags'=>$request->product_tags,
           'product_size'=>$request->product_size,
           'product_color'=>$request->product_color,
           'selling_price'=>$request->selling_price,
           'discount_price'=>$request->discount_price,
           'short_descp'=>$request->short_descp,
           'long_descp'=>$request->long_descp,
           'hot_deals'=>$request->hot_deals,
           'featured'=>$request->featured,
           'special_offer'=>$request->special_offer,
           'special_deals'=>$request->special_deals,
           'vendor_id'=>$request->vendor_id,
           'status'=>1,
           'product_image'=>$save_url,
           'created_at'=>Carbon::now()

        ]);
        return redirect()->route('products.index');
    }
    public function show(Product $product)
    {
        return view('admin.products.show',[
            'product'=>$product
        ]);
    }
    public function edit(Product $product)
    {
        $activeVendor=User::where('status','active')->where('role','vendor')->latest()->get();
        $brands=Brand::latest()->get();
        $categories=Category::latest()->get();
        return view('admin.products.edit',['product'=>$product],compact('brands','categories','activeVendor'));


        // return view('admin.products.edit',[
        //     'product'=>$product
        // ],compact('brands','categories','activeVendor'));
    }
    public function update(Request $request, Product $product)
    {
        $image= $request->file('product_image');
        $fileName=hexdec(uniqid()).'.'.
            $image->getClientOriginalExtension();
            'Image'::make($image)->resize(300,300)->save('upload/product/'.$fileName);
        $save_url='upload/product/'.$fileName;
        $product->update([
            'product_name'=>$request->product_name,
            'brand_id'=>$request->brand_id, 
            'product_slug'=>strtolower(str_replace('','-',$request->product_name)),
            'long_descp'=>$request->long_descp,
            'special_offer'=>$request->special_offer,
            'product_image'=>$save_url,
        ]);
        return redirect()->route('products.index');
    }
    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('products.index');
    }
    public function ProductInactive($id)
    {
        Product::findorFail($id)->update(['status'=>0]);
        return redirect()->route('products.index');
    }
    public function ProductActive($id)
    {
        Product::findorFail($id)->update(['status'=>1]);
        return redirect()->route('products.index');
    }
    public function ProductSearch(Request $request){
        $data=Product::where('product_name','like','%'.$request->input('search').'%')->get();
        return view('frontend.searchproduct',['products'=>$data]);

    }
}
