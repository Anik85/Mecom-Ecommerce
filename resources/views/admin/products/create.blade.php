<x-admin.layouts.admin_master>
<div class="container-fluid p-0">
        <form action="{{route('products.store')}}" method="post" enctype="multipart/form-data">
            @csrf
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Name
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_name"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Code
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_code"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Qty
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_qty"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Tags
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_tags"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Size
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_size"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Color
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="product_color"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Selling Price
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="selling_price"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Discount Price
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="discount_price"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Short Description
                </label>
                <div class="col-sm-9">
                    <input type="text"
                    class="form-control"
                    id="inputTitle"
                    name="short_descp"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="mytextarea" class="col-sm-3 col-form-label">
                    Long Description
                </label>
                <textarea class="from-control col-sm-9"
                placeholder="leave a comment here" id="mytextarea" name="long_descp">
                </textarea>
            </div>
 
            <div class="mb-3 row">
                <div class="col-sm-1 offset-sm-2">
                    <input type="checkbox"
                    class="form-check-input"
                    id="flexCheckDefault"
                    name="hot_deals"
                    value="1">
                </div>
                <label for="form-check-label" class="col-sm-9 col-form-label">
                    Hot Deals
                </label>
            </div>
 
            <div class="mb-3 row">
                <div class="col-sm-1 offset-sm-2">
                    <input type="checkbox"
                    class="form-check-input"
                    id="flexCheckDefault"
                    name="speacial_deals"
                    value="1">
                </div>
                <label for="form-check-label" class="col-sm-9 col-form-label">
                    Special Deals
                </label>
            </div>
 
            <div class="mb-3 row">
                <div class="col-sm-1 offset-sm-2">
                    <input type="checkbox"
                    class="form-check-input"
                    id="flexCheckDefault"
                    name="featured"
                    value="1">
                </div>
                <label for="form-check-label" class="col-sm-9 col-form-label">
                    Featured
                </label>
            </div>
 
            <div class="mb-3 row">
                <div class="col-sm-1 offset-sm-2">
                    <input type="checkbox"
                    class="form-check-input"
                    id="flexCheckDefault"
                    name="special_offer"
                    value="1">
                </div>
                <label for="form-check-label" class="col-sm-9 col-form-label">
                    Special Offer
                </label>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Brand Id
                </label>
                <div class="col-sm-9">
                    <select name="brand_id" class="form-select" aria-label="Brand select">
                        <option selected>Open this select menu</option>
                        @foreach ($brands as $brand)
                            <option value="{{ $brand->id }}">{{ $brand->brand_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Category Id
                </label>
                <div class="col-sm-9">
                    <select name="category_id" class="form-select" aria-label="Category select">
                        <option selected>Open this select menu</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Vendor Id
                </label>
                <div class="col-sm-9">
                    <select name="vendor_id" class="form-select" aria-label="Default select example">
                        <option></option>
                        @foreach($activeVendor as $vendor)
                            <option value="{{$vendor->vendor_id}}">{{$vendor->name}}</option>
                        @endforeach

                        <!-- <option selected>Open this select menu</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option> -->
                      </select>
                </div>
            </div>
 
 
 
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">
                    Picture
                </label>
                <div class="col-sm-9">
                    <input type="file"
                    class="form-control"
                    id="inputTitle"
                    name="product_image"
                    value="">
                </div>
            </div>
 
            <div class="mb-3 row">
                <div class="col-sm-9 offset-3">
                    <button type="submit" class="btn btn-info">
                        Submit
                    </button>
                </div>
            </div>
 
        </form>
    </div>
</x-admin.layouts.admin_master>