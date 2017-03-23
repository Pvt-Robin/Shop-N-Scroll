<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container">

<H1>CART</H1>
<div ng-app="SiteAppAJS" ng-controller="cartControllerAJS">

<div class="row" ng-repeat="ci in cartlist">
<div class="col-md-2">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" width="100%">
</div>

<div class="col-md-7">
{{ci.productName}}
{{ci.quantity}}
{{ci.quantity}}
</div>

<div class="col-md-3">
<a href="viewproduct-{{ci.productId}}"><button class="btn btn-danger">View Product</button></a><br>
<a href="removefromcart-{{ci.cartItemsId}}"><button class="btn btn-danger">Remove From Cart</button></a><br>
<a href="checkoutfromcart-{{ci.cartItemsId}}"><button class="btn btn-danger">Checkout Now</button></a><br>

</div>
</div>

</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>