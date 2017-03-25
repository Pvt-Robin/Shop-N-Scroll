<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container">

<H1>ORDER</H1>
<div ng-controller="orderControllerAJS">

<div class="row" ng-repeat="oi in olist">
<div class="col-md-2">
<img src="resources/data/PRDT-{{oi.productId}}.jpg" width="100%">
</div>

<div class="col-md-7">
{{oi.productName}}
{{oi.quantity}}
{{oi.price}}
{{oi.discount}}
</div>

<div class="col-md-3">
<div class="row"><a href="viewproduct-{{oi.productId}}"><button class="btn btn-danger">View Product</button></a></div>

</div>
</div>

</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>