<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<a href="profile"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Cart</button>
</div>
</div>

<div ng-controller="cartControllerAJS">

<!-- <div class="col-md-1 hidden-sm hidden-xs"></div> -->
<!-- <div class="col-md-5 well-sm product-grid"> -->
<!-- <div class="col-md-4"> -->
<!-- <img src="resources/data/PRDT-{{ci.productId}}.jpg" width="100%"> -->
<!-- </div> -->

<!-- <div class="col-md-6"> -->
<!-- <h4 style="font-weight: bold">{{ci.productName}}</h4> -->
<!-- <font>Price:<span style="color:orange"> &#8377 {{ci.price}}</span></font><br> -->
<!-- <font>Discount:<span style="color:green"> {{ci.discount}}%</span></font><br> -->
<!-- <font>Quantity:<span style="color:blue"> {{ci.quantity}}</span></font><br> -->
<!-- <font style="font-weight: bold;font-size: large;">Total: <span style="color:red"> &#8377 {{ci.amount}}</span></font><br> -->
<!-- <font>Added:<span style="color:green;font-size: small;">{{ci.placedDate}}</span></font><br> -->
<!-- </div> -->

<!-- <div class="col-md-2"> -->
<!-- <div class="row"><a href="viewproduct-{{ci.productId}}"><button class="btn btn-info form-control special-button text-center" style="margin-bottom: 2px;">View</button></a></div> -->
<!-- <div class="row"><a href="removefromcart-{{ci.cartItemsId}}"><button class="btn btn-danger form-control text-center" style="margin-bottom: 2px;">Remove</button></a></div> -->
<!-- <div class="row"><a href="checkoutfromcart-{{ci.cartItemsId}}"><button class="btn btn-success form-control text-center" style="margin-bottom: 2px;">CheckOut</button></a></div> -->

<!-- </div> -->
<!-- </div> -->



<div class="table-responsive">
<table class="table text-center" style="border: 2px solid rgba(92,184,92,1.0);">

<thead>
<tr>
<th class="th-green text-center">Image</th>
<th class="th-green text-center">Name</th>
<th class="th-green text-center">Quantity</th>
<th class="th-green text-center">Actual Price</th>
<th class="th-green text-center">Your Price</th>
<th class="th-green text-center">Remove</th>
</tr>
</thead>

<tr ng-repeat="ci in cartlist" ng-init="totalPrice = 0;">

<td>
<img src="resources/data/PRDT-{{ci.productId}}.jpg" height="100px"/>
</td>

<td>
<b>{{ci.productName}}</b>
</td>

<td>
<b>{{ci.quantity}}</b>
</td>

<td style="text-decoration: line-through;">
<b>{{ci.price}}</b>
</td>

<td>
<b>
{{ci.amount}}
</b>
</td>

<td>
<b>

</b>
</td>

</tr>



<thead>
<tr style="width: 100%; background-color: rgba(92,184,92,1.0);">
<td colspan="6">
<a href="checkout" class="pull-right" ><button class="btn btn-warning">
<font style="font-size: medium; font-weight: bold; color: rgba(255,255,255,1.0); "> Proceed To Pay &#8377 ${totalPrice} </font>
</button></a>
</td>
</tr>
</thead>

</table>

</div>
</div>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>