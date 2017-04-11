<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div id="myCarousel" class="carousel slide vertical well-sm sns-heading" data-ride="carousel">

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style=" width:100%; height: 50% !important;">
    <div class="item active">
      <img class="carosel-ad-image" src="resources/data/ad2.jpg" alt="Game Store">
      <div class="carousel-caption carousel-caption-style">       
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad3.jpg" alt="Airtel 4G">
      <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad4.jpg" alt="Play Online">
      <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad1.jpg" alt="Mat Market">
      <div class="carousel-caption">
      </div>
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

<a class="noUnderLineInAnchor" href="#"><h5 class="sns-heading text-center well-sm">Trending</h5></a>

<div class="row">
	<div ng-repeat="pd in productData | limitTo:6| orderBy: 'viewCount':true" class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
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
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow-{{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
					</div>					
			</a>
			</div>
		</div>
</div>

<a class="noUnderLineInAnchor" href="#"><h5 class="sns-heading text-center well-sm">Latest</h5></a>

<div class="row">
	<div  class="col-xs-12 col-sm-6 col-md-2 col-lg-2" ng-repeat="pd in productData | limitTo:6| orderBy: 'createdDate':true">
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
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow-{{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
					</div>					
				</a>
			</div>
		</div>
</div>

<a class="noUnderLineInAnchor" href="#"><h5 class="sns-heading text-center well-sm">Best Discount</h5></a>

<div class="row">
	<div ng-repeat="pd in productData | limitTo:6| orderBy: 'discount':true" class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
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
					<a href="addtowishlist-{{pd.productId}}" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="addtocart-{{pd.productId}}-{{1}}" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="buynow-{{pd.productId}}" class="product-grid-button btn btn-good" role="button"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
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