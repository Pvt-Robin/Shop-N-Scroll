<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<a href="profile"><button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Cart</button>
</div>
</div>

<div class="container well-sm">
<div  class="row" ng-controller="cartControllerAJS">

<div class="table-responsive">
<table class="table" style="border: 2px solid rgba(0,0,0,0.8);">

<thead>
<tr>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
<th class="text-center"></th>
</tr>
</thead>

<tr ng-repeat="ci in cartlist" style="background-color: rgba(255,255,255,0.8);">

<td class="text-center">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" style="height: 100px;" />
</td>

<td class="text-center">
<br>
<b style="font-size: large; font-weight: bold;"><span style="color: orange;">{{ci.productName}}</span></b><br>
<b style="font-size: larger; font-weight: bold;">Added: &nbsp <span style="color:green;">{{ci.placedDate}}</span></b>
</td>

<td>
<br>
<br>
<b style="font-size: larger; font-weight: bold;">Quantity: &nbsp <span style="color: green;">{{ci.quantity}}</span></b>
</td>

<td>
<br>
<font style="font-size: larger; font-weight: bold;">Price:<span style="color:orange;"> &#8377 {{ci.price}}</span></font><br>
<font style="font-size: larger; font-weight: bold;">Discount:<span style="color:green;">{{ci.discount}}%</span></font><br>
</td>

<td>
<b>
<br>
<br>
<font style="font-weight: bolder;font-size: larger;">Total:<span style="color:green;"> &#8377 {{ci.amount}}</span></font><br>
</b>
</td>

<td class="well-sm">
<a href="viewproduct-{{ci.productId}}"><button class="btn btn-black form-control special-button text-center newpager" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px;">View</button></a>
<a href="removefromcart-{{ci.cartItemsId}}"><button class="btn btn-black form-control text-center newpager" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px;">Remove</button></a>
</td>

</tr>

<thead>
<tr style="width: 100%; background-color: rgba(0,0,0,0.8);">
<td colspan="6">

<a href="checkout" ng-if="cartlist" class="pull-right newpager" >
<button class="btn btn-orange">
<font style="font-size: Large; font-weight: bold; color: rgba(255,255,255,1.0); ">
<i class="fa fa-shopping-bag"></i> &nbsp Checkout 
</font>
</button>
</a>

</td>
</tr>
</thead>

</table>

</div>
</div>
</div>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>