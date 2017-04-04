<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container-fluid">

<div class="row well-sm">
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sns-selected text-center"><h4>Wishes</h4></div>
<a href="usercart" class="noUnderLineInAnchor"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sns-heading text-center"><h4>Cart</h4></div></a>
<a href="userorder" class="noUnderLineInAnchor"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sns-heading text-center"><h4>Orders</h4></div></a>
</div>

<div ng-controller="wishControllerAJS">

<div ng-repeat="ci in wlist">
<div class="col-md-1 hidden-sm hidden-xs"></div>
<div class="col-md-5 well-sm product-grid">
<div class="col-md-4">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" width="100%">
</div>

<div class="col-md-6">
<h4 style="font-weight: bold">{{ci.productName}}</h4>
<font>Price:<span style="color:orange"> &#8377 {{ci.price}}</span></font><br>
<font>Discount:<span style="color:green"> {{ci.discount}}%</span></font><br>
<!-- <font style="font-weight: bold;font-size: large;">Total: <span style="color:red"> &#8377 {{ci.amount}}</span></font><br> -->
</div>

<div class="col-md-2">
<div class="row"><a href="viewproduct-{{ci.productId}}"><button class="btn btn-info form-control special-button text-center" style="margin-bottom: 2px;">View</button></a></div>
<div class="row"><a href="removefromwishlist-{{ci.wishId}}"><button class="btn btn-danger form-control text-center" style="margin-bottom: 2px;">Remove</button></a></div>
<div class="row"><a href="addtocart-{{ci.productId}}-{{1}}"><button class="btn btn-success form-control text-center" style="margin-bottom: 2px;">Add To Cart</button></a></div>
</div>
</div>

</div>

</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>