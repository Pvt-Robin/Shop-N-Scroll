<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<div class="body-area container-fluid">
<div ng-app="SiteAppAJS" ng-controller="viewProductControllerAJS">

Viewing {{thisproduct.productName}}
<div class="row">
<div class="col-md-6 well" style="border-style: solid;border-color:rgba(0,0,0,0) border-width: thin;border-radius: 5px 5px 5px 5px;">
<div style="border-style: solid;border-width: thin;">
<img src="resources/data/PRDT-{{thisproduct.productId}}.jpg"/>
</div>

</div>

<div class="col-md-1"></div>

<div class="col-md-5 well" style="border-style: solid;border-color:orange;border-width: thin;border-radius: 5px 5px 5px 5px;">
<h1><b>{{thisproduct.productName}}</b></h1>
<h3 style="color:grey">{{thisproduct.brand.brandName}}</h3>
<h3 style="color:red"><b>&#8377 XXX.XX</b></h3>
<h4>&#8377<span style="text-decoration: line-through;color:orange;">{{thisproduct.price}}</span>
<span style="color:green">{{thisproduct.discount}}% off</span></h4>
<h4><b>Seller: </b><span style="color:blue">{{thisproduct.supplier.supplierName}}</span></h4>
</div>
</div>

</div>
</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>