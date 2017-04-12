<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div ng-controller="viewProductControllerAJS">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<a href="productdisplay"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Browse</button></a>
<a href="productdisplay?browse={{thisproduct.category.categoryName}}"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{thisproduct.category.categoryName}}</button></a>
<a href="productdisplay?browse={{thisproduct.subCategory.subCategoryName}}"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{thisproduct.subCategory.subCategoryName}}</button></a>
<a href="productdisplay?browse={{thisproduct.brand.brandName}}"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{thisproduct.brand.brandName}}</button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{thisproduct.productName}}</button>

</div>
</div>
<br>

<div class="container login-signup-panels">

<div class="row">

<!-- <div class="col-xs-2 col-sm--2 col-md-2 col-lg-2 well-lg" style=""> -->
<!-- <!-- <img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" class="well-lg" style="width: 100%; border: 2px solid green;background-color: rgba(255,255,255,1.0);"/> -->
<!-- <br> -->
<!-- </div> -->

<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 well-sm">

<div style="background-color: rgba(255,255,255,0.5)" class="text-center"  style="border: 2px solid black;">
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" class="well-sm" style="width:100%;"/>
</div>

</div>

<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 well-lg" style="background-color: rgba(255,255,255,0.5)">

<div class="login-signup-panels well-lg" style="padding: 30px 30px 30px 30px;background-color: rgba(244,121,37,0.1);border-color: 3px solid rgba(244,121,37,1.0);">
<h2><b>{{thisproduct.productName}}</b></h2>
<h3 style="color:blue;font-weight: bold;font-stretch: wider;">{{thisproduct.brand.brandName}}</h3>
<h4 style="color:red"><b>&#8377 {{thisproduct.productAmount}}</b></h4>
<h5>&#8377<span style="text-decoration: line-through;color:orange;">{{thisproduct.price}}</span>
<span style="color:green">{{thisproduct.discount}}% off</span></h5>
<h4><b><span style="color:green">{{thisproduct.stock}} in Stock</span></b></h4>
<h4><b>Seller: </b><span>{{thisproduct.supplier.supplierFirmName}}</span></h4>
<h4><b>Description: </b><span>{{thisproduct.description}}</span></h4>
<div class="row">
<div class="col-md-3">
<h4><b>Quantity:</b></h4>
</div>

<div class="col-md-3">
<input type="number" class="form-control" min="1" max="3" value="{{quantity}}" height="128px" ng-model="quantity"/>
<br>
</div>

</div>

<a href="addtowishlist-{{thisproduct.productId}}">
<button class="btn btn-nice btn-lg" data-toggle="tooltip" title="Add To Wishlist"><i class="glyphicon glyphicon-heart"></i>&nbsp Wish It</button>
</a>

<a href="addtocart-{{thisproduct.productId}}-{{quantity}}">
<button class="btn btn-sleek btn-lg" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i>&nbsp Cart It</button>
</a>

<a href="buynow?item={{thisproduct.productId}}">
<button class="btn btn-good btn-lg" data-toggle="tooltip" title="Buy Now"><i class="fa fa-shopping-bag"></i>&nbsp Buy It</button>
</a>

</div>
</div>
</div>
</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>