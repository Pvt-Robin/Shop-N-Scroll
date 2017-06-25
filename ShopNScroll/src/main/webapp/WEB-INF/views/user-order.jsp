<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container-fluid">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<a href="profile"><button class="btn btn-black-full btn-arrow-right pull-left newpager" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Order History</button>
</div>
</div>

<div class="container well-sm">
<div ng-controller="orderControllerAJS">

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

<tr ng-repeat="ci in olist" style="background-color: rgba(255,255,255,0.8);">

<td class="text-center">
<img src="resources/data/PRDT-{{ci.productId}}.jpg" style="height: 100px;" />
</td>

<td class="text-center">
<br>
<b style="font-size: large; font-weight: bold;"><span style="color: orange;">{{ci.productName}}</span></b><br>
<b style="font-size: larger; font-weight: bold;">Ordered: &nbsp <span style="color:green;">{{ci.placedDate}}</span></b>
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
<a href="viewproduct-{{ci.productId}}"><button class="btn btn-black form-control special-button text-center newpager" style="margin-bottom: 2px; border-radius: 10px 10px 10px 10px">View</button></a>
</td>

</tr>

<thead>
<tr style="width: 100%; background-color: rgba(0,0,0,0.8);">
<td colspan="6">

</td>
</tr>
</thead>

</table>

</div>
</div>
</div>


</div>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>