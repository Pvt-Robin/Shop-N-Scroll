<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div ng-controller="universalProductControllerAJS">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<a href="productdisplay"  class="newpager"><button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Browse</button></a>
<button ng-if="browseWord" class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{browseWord}}</button>

<div class="pull-right" style="margin-right: 15px;">

<button class="btn btn-black" id="sort-button-popular" ng-click="sortByFame()">Popular</button>
<!-- <button class="btn btn-black" id="sort-button-popular" ng-click="sortByTime()">Latest</button> -->
<button class="btn btn-black" id="sort-button-popular" ng-click="sortByDiscount()">Discount</button>
<button class="btn btn-black" id="sort-button-popular" ng-click="sortByHigh()">Price(Low-High)</button>
<button class="btn btn-black" id="sort-button-popular" ng-click="sortByLow()">Price(High-Low)</button>

</div>
</div>
</div>

<div class="product-filter-area col-xs-12 col-sm-12 col-md-2 col-lg-2">
<div class="form-group">
<input type="text" name="browseword" ng-model="searchWord" class="form-control" placeholder="Search"/>
<h4 class="text-center">Filters</h4>
</div>
</div>

<div class="col-md-10" style="padding-top: 10px;">
<div class="row">

<div class="product-grid well-sm col-xs-12 col-sm-3 col-md-3 col-lg-3" ng-repeat="pd in productData | filter:searchWord || browseWord | orderBy:orderkeyword : orderflag">

				<div class="grid-padding">
				<a href="viewproduct-{{pd.productId}}">
				<div class="img-responsive carousel-inner">
				
					<img class="product-grid-img img-rounded" src="" style="background-image: url('resources/data/PRDT-{{pd.productId}}.jpg');" />
					
					<div class="product-grid-caption carousel-caption hidden-sm hidden-xs">
					<b><a href="productdisplay?browse={{pd.category.categoryName}}" class="sns-crumb">{{pd.category.categoryName}}</a>
					&nbsp;>>&nbsp;
					<a href="productdisplay?browse={{pd.subCategory.subCategoryName}}" class="sns-crumb">{{pd.subCategory.subCategoryName}}</a></b><br><br>
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"  data-toggle="tooltip"  data-placement="top" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow?item={{pd.productId}}" class="product-grid-button btn btn-good" role="button"  data-toggle="tooltip" data-placement="bottom" title="Buy Now">
					<i class="fa fa fa-shopping-bag icon icon icon-shopping-bag" aria-hidden="true"></i>&nbsp; Buy Now
					</a>
					</div>
					</div>
				
					<div class="">
					<h5><b>{{pd.productName}}</b><b class="pull-right"><a href="productdisplay?browse={{pd.brand.brandName}}" style="text-decoration: none;">{{pd.brand.brandName}}</a></b></h5>
					<h5><span class="pull-left" style="text-decoration: line-through;color:orange">&#8377 {{pd.price}}</span><span style="color:green">&nbsp- {{pd.discount}}% off </span>
					<b class="pull-right" style="font-size: large;color:red;">&#8377
					<b id="getamounthere">&nbsp
					{{pd.productAmount}}
					 &nbsp</b></h5>
					</div>
				
					<div class="product-grid-sm well-sm hidden-md hidden-lg">
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow?item={{pd.productId}}" class="product-grid-button btn btn-good pull-right" role="button">				
					<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</a>
					</div>
		</a>
		</div>
		</div>	
		</div>
		</div>
		
</div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>