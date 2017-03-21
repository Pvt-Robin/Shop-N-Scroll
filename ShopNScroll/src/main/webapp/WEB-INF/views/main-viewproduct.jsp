<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<div class="body-area container-fluid">
<div ng-app="SiteAppAJS" ng-controller="viewProductControllerAJS">

<h2>

</h2>

<div class="row">

<div class="col-md-6 well-lg" height="700" width="500">

<div style="border-style: solid;border-width: thin;">
<center>
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" class="well-sm" width="100%"/>
</center>

</div>

</div>

<div class="col-md-6 well-lg">
<div clas=="col-md-2 well" >
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg" width="20%" style="border-style: solid;border-width: medium;"/>
</div>

<h1><b>{{thisproduct.productName}}</b></h1>
<h2 style="color:blue">{{thisproduct.brand.brandName}}</h2>
<h3 style="color:red"><b>&#8377 XXX.XX</b></h3> finalPrice({{thisproduct.price}}, {{thisproduct.discount}}) 
<h4>&#8377<span style="text-decoration: line-through;color:orange;">{{thisproduct.price}}</span>
<span style="color:green">{{thisproduct.discount}}% off</span></h4>
<h4><b>Seller: </b><span>{{thisproduct.supplier.supplierFirmName}}</span></h4>
<h4><b>Description: </b><span>{{thisproduct.description}}</span></h4>


<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Add To Wishlist"><i class="glyphicon glyphicon-heart"></i></button>
<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i></button>
<button class="btn btn-success btn-lg" data-toggle="tooltip" title="Buy Now"><i class="glyphicon glyphicon-ok"></i></button>

</div>
</div>

</div>
</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>