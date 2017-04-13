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

<h2><b>Personal Details</b></h2>

<form:input class="form-control input" type="hidden" path="userId" placeholder="User Id" />

<form:label path="firstName" for="firstName" class="pull-left">FirstName</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err"> 
 					  <span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="firstName" placeholder="First Name..." /><br>


<form:label path="lastName" for="lastName" class="pull-left">LastName</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}" var="err"> 
 <span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="form-control login-signup-font text-center" path="lastName" placeholder="Last Name..." /><br>

<form:label path="dateOfBirth" for="dateOfBirth" class="pull-left">Date Of Birth</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('dateOfBirth')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach> 
<form:input type="date" class="form-control login-signup-font text-center" path="dateOfBirth" placeholder="Date Of Birth" /><br>

<form:label path="gender" for="gender" class="pull-left">Gender</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('gender')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach>
<form:select path="gender" placeholder="Gender" class="form-control login-signup-font text-center"><br>
   <form:option value="Male" label="Male"/>
   <form:option value="Female" label="Female"/>   
</form:select><br>

<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-orange pull-right" value="Continue"/>

</form:form>

</div>
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
</div>


</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>