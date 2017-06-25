<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div id="myCarousel" class="carousel slide vertical well-sm sns-heading" data-ride="carousel" ng-controller="sliderControllerAJS">

  <div class="carousel-inner" role="listbox" style=" width:100%; height: 50% !important;">

    <div class="item active" ng-repeat="sl in slidelist | limitTo:1:1">
    
    <div ng-if="sl.adLink"><a href="productdisplay?browse={{sl.adLink}}"></div>
    
    
      <img class="carosel-ad-image" src="resources/data/AD-{{sl.adId}}.jpg" alt="sl.adTitle">
      <div class="carousel-caption">       
<!--   		<div style="font-weight: bold; font-size: xx-large; color: White;">{{sl.adTitle}}</div> -->
<!-- 		<div style="font-weight: bold; font-size: large; color: White;">{{sl.adCaption}}</div> -->
      </div>
      
     <div ng-if="sl.adLink"></a></div>
      
    </div>

    <div class="item" ng-repeat="sl in slidelist | limitTo:4:2">
    
    <div ng-if="sl.adLink"><a href="productdisplay?browse={{sl.adLink}}"></div>
    
    
      <img class="carosel-ad-image" src="resources/data/AD-{{sl.adId}}.jpg" alt="sl.adTitle">
      <div class="carousel-caption">       
<!--   		<div style="font-weight: bold; font-size: xx-large; color: White;">{{sl.adTitle}}</div> -->
<!-- 		<div style="font-weight: bold; font-size: large; color: White;">{{sl.adCaption}}</div> -->
      </div>
      
     <div ng-if="sl.adLink"></a></div>
      
    </div>

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Prev</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- HOME PAGE-BROWSE AREA -->
<div ng-controller="universalProductControllerAJS">

<a class="noUnderLineInAnchor" href="productdisplay?orderingkey=viewCount"><h5 class="sns-heading text-center well-sm" style="font-size: large;">Trending</h5></a>

<div class="row">
	<div ng-repeat="pd in productDataView | limitTo:6" class="col-xs-12 col-sm-6 col-md-2 col-lg-2 well-sm">
	<div class="product-grid well-sm">
	<a href="viewproduct-{{pd.productId}}">
	
				<div class="img-responsive carousel-inner">
					<img class="product-grid-img img-rounded" src="" style="background-image: url('resources/data/PRDT-{{pd.productId}}.jpg');" />
					</div>
					<div>
					<h5><b style="color:black;">{{pd.productName}}</b><b class="pull-right"><a href="productdisplay?browse={{pd.brand.brandName}}" style="text-decoration: none;">{{pd.brand.brandName}}</a></b></h5>
					<h5><span class="pull-left" style="text-decoration: line-through;color:orange">&#8377 {{pd.price}}</span><span style="color:green">&nbsp- {{pd.discount}}% </span>
					<b class="pull-right" style="font-size: large;color:red;">&#8377 {{pd.productAmount}} &nbsp</b></h5>
					</div>
					
					<div class="product-grid-sm text-center">
					
					<fieldset data-ng-disabled="pd.stock <= 0 || usr.role == 'ROLE_ADMIN'">
										
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow?item={{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
					
					</fieldset>
					
					</div>					
			</a>
		</div>
		</div>
</div>

<a class="noUnderLineInAnchor" href="productdisplay?orderingkey=productId"><h5 class="sns-heading text-center well-sm" style="font-size: large;">Latest</h5></a>

<div class="row">
	<div  class="col-xs-12 col-sm-6 col-md-2 col-lg-2 well-sm" ng-repeat="pd in productDataLate | limitTo:6">
	<div class="product-grid well-sm">
	<a href="viewproduct-{{pd.productId}}">
	
				<div class="img-responsive carousel-inner">
					<img class="product-grid-img img-rounded" src="" style="background-image: url('resources/data/PRDT-{{pd.productId}}.jpg');" />
					</div>
					<div>
					<h5><b style="color:black;">{{pd.productName}}</b><b class="pull-right"><a href="productdisplay?browse={{pd.brand.brandName}}" style="text-decoration: none;">{{pd.brand.brandName}}</a></b></h5>
					<h5><span class="pull-left" style="text-decoration: line-through;color:orange">&#8377 {{pd.price}}</span><span style="color:green">&nbsp- {{pd.discount}}% </span>
					<b class="pull-right" style="font-size: large;color:red;">&#8377 {{pd.productAmount}} &nbsp</b></h5>
					</div>
					
					<div class="product-grid-sm text-center">
					
					<fieldset data-ng-disabled="pd.stock <= 0 || usr.role == 'ROLE_ADMIN'">
					
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow?item={{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
					
					</fieldset>
					
					</div>					
				</a>
			</div>
		</div>
</div>

<a class="noUnderLineInAnchor" href="productdisplay?orderingkey=discount"><h5 class="sns-heading text-center well-sm" style="font-size: large;">Best Discount</h5></a>

<div class="row">
	<div class="col-xs-12 col-sm-6 col-md-2 col-lg-2 well-sm" ng-repeat="pd in productDataDisc | limitTo:6">
	<div class="product-grid well-sm">
	<a href="viewproduct-{{pd.productId}}">
	
				<div class="img-responsive">
					<img class="product-grid-img img-rounded" src="" style="background-image: url('resources/data/PRDT-{{pd.productId}}.jpg');" />
					</div>
					<div>
					<h5><b style="color:black;">{{pd.productName}}</b><b class="pull-right"><a href="productdisplay?browse={{pd.brand.brandName}}" style="text-decoration: none;">{{pd.brand.brandName}}</a></b></h5>
					<h5><span class="pull-left" style="text-decoration: line-through;color:orange">&#8377 {{pd.price}}</span><span style="color:green">&nbsp- {{pd.discount}}% </span>
					<b class="pull-right" style="font-size: large;color:red;">&#8377 {{pd.productAmount}} &nbsp</b></h5>
					</div>
					
					<div class="product-grid-sm text-center">

					<fieldset data-ng-disabled="pd.stock <= 0 || usr.role == 'ROLE_ADMIN'">
					
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow?item={{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
					
					</fieldset>
					
					</div>					
				</a>
			</div>
		</div>
</div>

</div>

<!-- BASE -->
<%@ include file="component-base.jsp" %>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>