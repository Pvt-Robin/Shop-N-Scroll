<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">CheckOut</button>
</div>
</div>

<div class="col-xs-0 col-sm-0 col-md-2 col-lg-2"></div>

<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
<div class="text-center">
<br>

<div class="login-signup-panels">
<br>
<div class="row">
<div class="col-xs-0 col-sm-2 col-md-2 col-lg-2">
</div>

<div class="col-xs-10 col-sm-8 col-md-8 col-lg-8">
<font class="signup-header-font-current btn">1</font>
<font class="signup-header-font btn">2</font>
<font class="signup-header-font btn">3</font>
<font class="signup-header-font btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>

<form:form modelAttribute="user">
<h2><b>Confirm Items</b></h2>

<div class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div style="margin:10px 0px 10px 0px;padding-left: 10px;padding-right: 10px;">
<div class="table-responsive">
<table class="table text-center" style="border: 2px solid rgba(255,143,69,1.0);">

<thead>
<tr>
<th class="th-green text-center">Image</th>
<th class="th-green text-center">Name</th>
<th class="th-green text-center">Quantity</th>
<th class="th-green text-center">Actual Price Per Unit</th>
<th class="th-green text-center">Total Price</th>
</tr>
</thead>
<c:forEach var="clist" items="${user.cartItems}">

<c:if test="${clist.flag  eq 'N'}">
<c:set var="totalPrice" value="${totalPrice + clist.amount}"/>

<tr>
<td class="login-signup-panel">
<img src="resources/data/PRDT-${clist.productId}.jpg" height="100px"/>
</td>

<td>
<b>${clist.productName}</b>
</td>

<td>
<b>${clist.quantity}</b>
</td>

<td style="text-decoration: line-through;">
<b>${clist.price}</b>
</td>

<td>
<b>
${clist.amount}
</b>
</td>

</tr>
</c:if>
</c:forEach>

<thead>
<tr style="width: 100%; background-color: rgba(255,143,69,1.0);">
<td colspan="4">
<font class="pull-right" style="font-size: large; font-weight: bold; color: rgba(255,255,255,1.0); ">Total: &#8377 ${totalPrice} </font>
<td>
</tr>
</thead>

</table>

<div class="container-fluid">
<div class="row" >
</div>
</div>

</div>
</div>

</div>

<c:if test="${not empty totalPrice}">
<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-orange pull-right" value="Confirm"/>
</c:if>


</div>
</div>
</form:form>

</div>
</div>
</div>

<div class="col-xs-0 col-sm-0 col-md-2 col-lg-2"></div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>