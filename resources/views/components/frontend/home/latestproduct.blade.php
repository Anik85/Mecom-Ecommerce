@php
    $products= App\Models\Product::where('status',1)->orderBy('id','ASC')->limit(7)->get();

@endphp


<div class="wrap-show-advance-info-box style-1">
    <h3 class="title-box">Latest Products</h3>
    <div class="wrap-top-banner">
        <a href="#" class="link-banner banner-effect-2">
            <figure><img src="{{asset('ui/frontend/assets/images/digital-electronic-banner.jpg')}}" width="1170" height="240" alt=""></figure>
        </a>
    </div>
    <div class="wrap-products">
        <div class="wrap-product-tab tab-style-1">
            <div class="tab-contents">
                <div class="tab-content-item active" id="digital_1a">
                    <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >
                        @foreach($products as $product)

                        <div class="product product-style-2 equal-elem ">
                            <div class="product-thumnail">
                                <a href="detail.html" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                    <figure><img src="{{$product->product_image}}" width="800" height="800" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                </a>
                                @php 
                                    $amount=$product->selling_price-$product->discount_price;
                                    $discount=($amount/$product->selling_price)*100;
                                @endphp
                                <div class="group-flash">
                                    @if($product->discount_price==NULL)
                                        <span class="flash-item new-label">new</span>
                                    @else
                                        <span class="flash-item new-label">{{round($discount)}}%</span>
                                    @endif
                                </div>
                                <div class="wrap-btn">
                                    <a href="{{url('product/details/'.$product->id.'/'.$product->product_slug)}}" class="function-link">Details</a>
                                </div>
                            </div>
                            <div class="product-info">
                                <a href="#" class="product-name"><span>{{$product->product_name}}</span></a>
                                <div class="wrap-price"><span class="product-price">{{$product->selling_price}}</span></div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
