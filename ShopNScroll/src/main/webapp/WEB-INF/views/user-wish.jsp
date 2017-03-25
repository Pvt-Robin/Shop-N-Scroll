<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container">

<H1>WISH</H1>
<div ng-controller="wishControllerAJS">

<div class="row" ng-repeat="wi in wlist">
<div class="col-md-2">
<img src="resources/data/PRDT-{{wi.productId}}.jpg" width="100%">
</div>

<div class="col-md-7">
{{wi.productName}}
{{wi.price}}
{{wi.discount}}
</div>

<div class="col-md-3">
<div class="row"><a href="viewproduct-{{wi.productId}}"><button class="btn btn-danger">View Product</button></a></div>
<div class-="row"><a href="removefromwishlist-{{wi.wishId}}"><button class="btn btn-danger">Remove From WishList</button></a></div>
<div class="row"><a href="addtocart-{{wi.productId}}-{{1}}"><button class="btn btn-danger">Add To Cart</button></a><br></div>
</div>

</div>

</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>