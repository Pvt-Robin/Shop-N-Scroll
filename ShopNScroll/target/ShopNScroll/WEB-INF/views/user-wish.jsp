<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container-fluid">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<a href="profile"><button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Wish List</button>
</div>
</div>

<div class="container well-sm">
<div ng-controller="wishControllerAJS">

<div class="table-responsive">
<table class="table" style="border: 2px solid rgba(0,0,0,0.8);">

<thead>
<tr>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
</tr>
</thead>

<tr ng-repeat="ci in wlist" style="background-color: rgba(255,255,255,0.8);">

<td class="text-center">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" style="height: 160px;" />
</td>

<td class="text-center">
<br>
<b style="font-size: large; font-weight: bold;"><span style="color: black;">{{ci.productName}}</span></b><br>
</td>

<td>
<br>
<font style="font-size: larger; font-weight: bold;">Price:<span style="color:orange;"> &#8377 {{ci.price}}</span></font>
</td>

<td>
<b>
<br>
<font style="font-size: larger; font-weight: bold;">Discount:<span style="color:green;">{{ci.discount}}%</span></font><br>
</b>
</td>

<td class="well-sm btn-group">
<br>
<a href="viewproduct-{{ci.productId}}"><button class="btn btn-black special-button text-center" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px;">View</button></a>
<a href="removefromwishlist-{{ci.wishId}}"><button class="btn btn-black text-center" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px;">Remove</button></a>
<a href="addtocart-{{ci.productId}}-{{1}}"><button class="btn btn-black text-center" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px;">Add To Cart</button></a>
</td>

</tr>

<thead>
<tr style="width: 100%; background-color: rgba(0,0,0,0.8);">
<td colspan="5">

</td>
</tr>
</thead>

</table>

</div>

<!-- <div ng-repeat="ci in wlist"> -->
<!-- <div class="col-md-1 hidden-sm hidden-xs"></div> -->
<!-- <div class="col-md-5 well-sm product-grid"> -->
<!-- <div class="col-md-4"> -->
<!-- <img src="resources/data/PRDT-{{ci.productId}}.jpg" width="100%"> -->
<!-- </div> -->

<!-- <div class="col-md-6"> -->
<!-- <h4 style="font-weight: bold">{{ci.productName}}</h4> -->
<!-- <font>Price:<span style="color:orange"> &#8377 {{ci.price}}</span></font><br> -->
<!-- <font>Discount:<span style="color:green"> {{ci.discount}}%</span></font><br> -->
<!-- <!-- <font style="font-weight: bold;font-size: large;">Total: <span style="color:red"> &#8377 {{ci.amount}}</span></font><br> -->
<!-- </div> -->

<!-- <div class="col-md-2"> -->
<!-- <div class="row"><a href="viewproduct-{{ci.productId}}"><button class="btn btn-info form-control special-button text-center" style="margin-bottom: 2px;">View</button></a></div> -->
<!-- <div class="row"><a href="removefromwishlist-{{ci.wishId}}"><button class="btn btn-danger form-control text-center" style="margin-bottom: 2px;">Remove</button></a></div> -->
<!-- <div class="row"><a href="addtocart-{{ci.productId}}-{{1}}"><button class="btn btn-success form-control text-center" style="margin-bottom: 2px;">Add To Cart</button></a></div> -->
<!-- </div> -->
<!-- </div> -->

<!-- </div> -->

<!-- </div> -->

</div>
</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>