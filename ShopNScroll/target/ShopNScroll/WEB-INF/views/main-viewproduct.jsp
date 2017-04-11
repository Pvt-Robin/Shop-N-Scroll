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

<div class="row">

<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 well-lg" width="500">

<div style="background-color: rgba(255,255,255,0.5)" class="login-signup-panels text-center well-lg">
<img id="product-view-image" src="resources/data/PRDT-{{thisproduct.productId}}.jpg" class="well-sm" style="width:100%;" data-zoom-image="resources/data/PRDT-{{thisproduct.productId}}.jpg"/>
</div>

</div>

<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 well-sm" style="background-color: rgba(255,255,255,0.5)">
<div class="login-signup-panels" style="margin: 10px 10px 10px 10px;">
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" width="20%" style="margin:10px 10px 10px 10px;"/>
</div>
<div class="login-signup-panels" style="padding: 30px 30px 30px 30px;">
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

<a href="buynow-{{pd.productId}}">
<button class="btn btn-good btn-lg" data-toggle="tooltip" title="Buy Now"><i class="fa fa-shopping-bag"></i>&nbsp Buy It</button>
</a>

</div>
</div>
</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>