<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">SignUp</button>
</div>
</div>

<div class="container text-center">
<br>
<div class="row">
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 login-signup-panels">
<br>
<div class="row">
<div class="col-xs-0 col-sm-2 col-md-2 col-lg-2">
</div>

<div class="col-xs-10 col-sm-8 col-md-8 col-lg-8">
<font class="signup-header-font btn">1</font>
<font class="signup-header-font btn">2</font>
<font class="signup-header-font-current btn">3</font>
<font class="signup-header-font btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>
<br>

<h2><b>Password</b></h2>

<form:form modelAttribute="user">

<form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />

<form:label path="password" for="password" class="pull-left">Password</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach> 
<form:input type="password" class="form-control login-signup-font text-center" path="password" placeholder="PA$$w0rd..." /><br>
<span class="pull-left text-left">
<h4><b>Rules For Password</b></h4>
<ul>
<li>Can Be 8-16 Characters Long</li>
<li>Should have Atleast One Number</li>
<li>Should have Atleast One Capital Alphabet</li>
<li>Should have Atleast One Small Alphabet</li>
<li>Should have Atleast One Symbol(@,$,%,#)</li>

</ul>
</span>
<br>

<input type="submit" id="previous" name="_eventId_previous" class="signup-button btn btn-lg btn-orange pull-left" value="Previous" />

<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-orange pull-right" value="Continue"/>

</form:form>

</div>
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>