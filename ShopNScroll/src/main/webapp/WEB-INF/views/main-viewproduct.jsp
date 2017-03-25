<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<div class="body-area container-fluid">



<div ng-app="SiteAppAJS" ng-controller="viewProductControllerAJS">


<ul class="breadcrumb sns-breadcrumb">
  <li><a class="sns-crumb" href="home">Home</a></li>
  <li><a class="sns-crumb" href="searchby-{{thisproduct.category.categoryName}}">{{thisproduct.category.categoryName}}</a></li>
  <li><a class="sns-crumb" href="searchby-{{thisproduct.subCategory.subCategoryName}}">{{thisproduct.subCategory.subCategoryName}}</a></li>
  <li><a class="sns-current-crumb" href="#">{{thisproduct.productName}}</a></li>
</ul>

<div class="row">

<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 well-sm" width="500">

<div style="background-color: rgba(255,255,255,0.5)">
<center>
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" class="well-sm" width="100%"/>
</center>

</div>

</div>

<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 well-sm" style="background-color: rgba(255,255,255,0.5)">
<div>
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" width="20%" style="border-style:double; ;border-color:green;border-width: medium;"/>
</div>

<h1><b>{{thisproduct.productName}}</b></h1>
<h2 style="color:blue">{{thisproduct.brand.brandName}}</h2>
<h3 style="color:red"><b>&#8377 {{amount}}</b></h3>
<h4>&#8377<span style="text-decoration: line-through;color:orange;">{{thisproduct.price}}</span>
<span style="color:green">{{thisproduct.discount}}% off</span></h4>
<h4><b>Seller: </b><span>{{thisproduct.supplier.supplierFirmName}}</span></h4>
<h4><b>Description: </b><span>{{thisproduct.description}}</span></h4>
<div class="row">
<div class="col-md-3">
<h4><b>Quantity:</b></h4>
</div>

<div class="col-md-3">
<input type="number" class="form-control" min="1" max="3" value="{{quantity}}" width="100px" ng-model="quantity"/>
<br>
</div>

</div>

<a href="addtowishlist-{{thisproduct.productId}}">
<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Add To Wishlist"><i class="glyphicon glyphicon-heart"></i>Add to WishList</button>
</a>

<a href="addtocart-{{thisproduct.productId}}-{{quantity}}">
<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i>Add To Cart</button>
</a>

<a href="buynow-{{thisproduct.productId}}-{{1}}">
<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Buy Now"><i class="glyphicon glyphicon-shopping"></i>Buy Now</button>
</a>

</div>
</div>

</div>
</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>