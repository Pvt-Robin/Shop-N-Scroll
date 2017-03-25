<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div id="myCarousel" class="carousel slide vertical well-sm sns-heading" data-ride="carousel">

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="carosel-ad-image" src="resources/data/ad2.jpg" alt="Game Store">
      <div class="carousel-caption">
        <h3>Game Store</h3>
        <p>Buy games with upto 60% Discount...</p>
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad3.jpg" alt="Airtel 4G">
      <div class="carousel-caption">
        <h3>Airtel 4G Network</h3>
        <p>Shift to Airtel Network and Explore Internet at High Speed...</p>
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad4.jpg" alt="Play Online">
      <div class="carousel-caption">
        <h3>Online Games</h3>
        <p>Play Online and win Exclusive Prizes...</p>
      </div>
    </div>

    <div class="item">
      <img class="carosel-ad-image" src="resources/data/ad1.jpg" alt="Mat Market">
      <div class="carousel-caption">
        <h3>Mat Market</h3>
        <p>Buy Mats at Amazing Discounts...</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- HOME PAGE-BROWSE AREA -->

<h5 class="sns-heading text-center well-sm">Trending</h5>

<h5 class="sns-heading text-center well-sm">Latest</h5>

<h5 class="sns-heading text-center well-sm">Best Discounts</h5>

<h5 class="sns-heading text-center well-sm">Best Offers</h5>

<h5 class="sns-heading text-center well-sm">Top Brand</h5>


<div ng-controller="brandControllerAJS">
<div class="sns-product-grid col-md-2 well-sm" ng-repeat="b in blist">
<img class="sns-product-grid-img" src="resources/data/BRND-{{b.brandId}}.jpg"/>
<br><font class="sns-product-title text-center">{{b.brandName}}</font>
</div>
</div>


<!-- BASE -->
<%@ include file="component-base.jsp" %>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>