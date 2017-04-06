<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">SignUp</button>
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
<font class="signup-header-font-current btn">2</font>
<font class="signup-header-font btn">3</font>
<font class="signup-header-font btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>
<br>
<form:form modelAttribute="user">

<h2><b>Contact Details</b></h2>

<form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />

<form:label path="email" for="email" class="pull-left">Email</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach>
<form:input class="form-control login-signup-font text-center" path="email" placeholder="joe99@gmail.com..." /><br>

<form:label path="contact" for="contact" class="pull-left">Contact</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contact')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach>
<form:input class="form-control login-signup-font text-center" path="contact" placeholder="Mobile Number..." /><br>

<input type="submit" id="previous" name="_eventId_previous" class="signup-button btn btn-lg btn-success pull-left" value="Previous" />

<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-success pull-right" value="Continue"/>

</form:form>

</div>
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>