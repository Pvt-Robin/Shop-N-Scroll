<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container-fluid">

<div class="row well-sm">
<a href="userwish" class="noUnderLineInAnchor"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sns-heading text-center"><h4>Wishes</h4></div></a>
<a href="usercart" class="noUnderLineInAnchor"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sns-heading text-center"><h4>Cart</h4></div></a>
<a><div class="sns-selected col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center"><h4>Orders</h4></div></a>
</div>

<div ng-controller="orderControllerAJS">

<div ng-repeat="ci in olist">
<div class="col-md-1 hidden-sm hidden-xs"></div>
<div class="col-md-5 well-sm product-grid">
<div class="col-md-4">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" width="100%">
</div>

<div class="col-md-6">
<h4 style="font-weight: bold">{{ci.productName}}</h4>
<font>Price:<span style="color:orange"> &#8377 {{ci.price}}</span></font><br>
<font>Discount:<span style="color:green"> {{ci.discount}}%</span></font><br>
<font>Quantity:<span style="color:blue"> {{ci.quantity}}</span></font><br>
<font style="font-weight: bold;font-size: large;">Total: <span style="color:red"> &#8377 {{ci.amount}}</span></font><br>
<font>Ordered:<span style="color:green;font-size: small;"> {{ci.placedDate}}</span></font><br>
</div>

<div class="col-md-2">
<div class="row"><a href="viewproduct-{{ci.productId}}"><button class="btn btn-info form-control special-button text-center" style="margin-bottom: 2px;">View</button></a></div>
</div>
</div>

</div>

</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>