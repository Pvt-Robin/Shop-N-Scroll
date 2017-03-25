<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<ul class="breadcrumb sns-breadcrumb">
  <li><a class="sns-crumb" href="home">Home</a></li>
  <li><a class="sns-crumb" href="#">Browse</a></li>
</ul>


<div class="container-fluid" ng-controller="universalProductControllerAJS">

<div class="product-filter-area col-md-2 well-sm" style="background-color: rgba(0,0,0,0.4);">
<input type="text" name="browseword" ng-model="browseWord"/><br>
{{browseWord}}
{{egg}}
</div>

<div class="col-md-10">
	<div class="row">
		<div class="product-grid col-xs-18 col-sm-4 col-md-3 well-sm" ng-repeat="pd in productData | filter:browseWord">
			<div class="">
				<div class="img-responsive carousel-inner">
				
					<img class="product-grid-img img-rounded img-thumbnail" src="resources/data/PRDT-{{pd.productId}}.jpg"/>
					
					<div class="product-grid-caption carousel-caption well-sm hidden-sm hidden-xs">
					<b><a href="productdisplay?browse={{pd.category.categoryName}}" class="sns-crumb">{{pd.category.categoryName}}</a>
					&nbsp>>&nbsp
					<a href="productdisplay?browse={{pd.subCategory.subCategoryName}}" class="sns-crumb">{{pd.subCategory.subCategoryName}}</a></b><br><br>
					<a href="#" class="product-grid-button btn btn-nice" role="button" data-toggle="tooltip" data-placement="top" title="Add To Wishlist"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="#" class="product-grid-button btn btn-sleek" role="button"  data-toggle="tooltip"  data-placement="top" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="#" class="product-grid-button btn btn-good pull-right" role="button"  data-toggle="tooltip" data-placement="bottom" title="Buy Now">
					<b>Buy Now<i class="glyphicon glyphicon-chevron-right"></i><i class="glyphicon glyphicon-chevron-right"></i></b>
					</a>
					</div>
				</div>
				
				<div class="">
					<h5><b>{{pd.productName}}</b></h5>
					<h5><b><a href="productdisplay?browse={{pd.brand.brandName}}" style="text-decoration: none;">{{pd.brand.brandName}}</a></b></h5>
					<h5><span class="pull-left" style="text-decoration: line-through;color:orange">&#8377 {{pd.price}}</span><span style="color:green">&nbsp- {{pd.discount}}% off </span><b class="pull-right" style="font-size: large;color:red;">&#8377 3000  &nbsp</b></h5>
				</div>
				
					<div class="product-grid-caption well-sm hidden-md hidden-lg">
					<a href="#" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="#" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="#" class="product-grid-button btn btn-good pull-right" role="button">
					<b>Buy</b>
					</a>
					</div>
										
				</div>
			</div>
		</div>
	</div>
</div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>