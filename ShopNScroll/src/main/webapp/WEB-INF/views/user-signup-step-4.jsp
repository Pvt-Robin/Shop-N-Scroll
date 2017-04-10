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
<font class="signup-header-font btn">2</font>
<font class="signup-header-font btn">3</font>
<font class="signup-header-font-current btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>
<br>

<h2><b>Confirm Details</b></h2>
<br>

<form:form modelAttribute="user">

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>First Name</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="firstName" disabled="true"/>
</div>
</div>

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>Last Name</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="LastName" disabled="true"/>
</div>
</div>

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>Gender</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="gender" disabled="true"/>
</div>
</div>

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>Date Of Birth</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="dateOfBirth" disabled="true"/>
</div>
</div>

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>Email</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="email" disabled="true"/>
</div>
</div>

<div>
<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 pull-left">
<b>Contact</b>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
<form:input class="form-control" path="contact" disabled="true"/>
</div>
</div>

<div class="row"></div><br>

<input type="checkbox"  
onchange="document.getElementById('continue1').disabled = !this.checked;" name='agree' 
id='agree'/><b>&nbsp I Agree To All ShopNScroll <a href="terms" style="color:green;text-decoration: none;">Policies,Terms And Conditions</a></b>
<br><br>

<input type="submit" id="previous" name="_eventId_previous" class="signup-button btn btn-lg btn-success pull-left" value="Previous" />

<input type="submit" id="continue1" name="_eventId_continue" class="signup-button btn btn-lg btn-success pull-right" value="Continue" disabled="true"/>

</form:form>

</div>
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
</div>

</div>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>