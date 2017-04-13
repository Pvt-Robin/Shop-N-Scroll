<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Checkout</button>
</div>
</div>

<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>

<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
<div class="text-center">
<br>

<div class="login-signup-panels">
<br>
<div class="row">
<div class="col-xs-0 col-sm-2 col-md-2 col-lg-2">
</div>

<div class="col-xs-10 col-sm-8 col-md-8 col-lg-8">
<font class="signup-header-font btn">1</font>
<font class="signup-header-font-current btn">2</font>
<font class="signup-header-font btn">3</font>
<font class="signup-header-font btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>

<form:form modelAttribute="shippingAddr">
<h2><b>Delivery Address</b></h2>

<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div class="" style="margin:5px 10px 5px 0px;padding-left: 10px;padding-right: 10px;">

<form:input class="form-control input" type="hidden" path="shipId"/>

<form:label path="sName" for="sName" class="pull-left">Recipient's Name</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sName')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sName" placeholder="Name" /><br>

<form:label path="sPrefix" for="sPrefix" class="pull-left">Prefix</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sPrefix')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:textarea class="login-signup-font form-control text-center" path="sPrefix" placeholder="Door Number,S/O,D/O..." /><br>

<form:label path="sLandmark" for="sLandmark" class="pull-left">Land Mark</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sLandmark')}" var="err"> 
<span style="color: green " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sLandmark" placeholder="Near Post Office..." /><br>

<form:label path="sStreet" for="sStreet" class="pull-left">Street</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sStreet')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sStreet" placeholder="Street..." /><br>

<form:label path="sCity" for="sCity" class="pull-left">City</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sCity')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sCity" placeholder="City..." /><br>

<form:label path="sState" for="sState" class="pull-left">State</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sState')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sState" placeholder="State..." /><br>

<form:label path="sCountry" for="sCountry" class="pull-left">Country</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sCountry')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sCountry" placeholder="Country..." /><br>

<form:label path="sPIN" for="sPIN" class="pull-left">PIN</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sPIN')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="sPIN" placeholder="PIN..." /><br>

</div>
<input type="submit" id="previous" name="_eventId_previous" class="signup-button btn btn-lg btn-orange pull-left" value="Previous" />

<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-orange pull-right" value="Continue"/>
</div>
</div>
</form:form>

</div>
</div>
</div>

<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>