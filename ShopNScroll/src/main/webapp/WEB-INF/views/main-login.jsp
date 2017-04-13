<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Login</button>
</div>
</div>
<br>

<div class="row">

<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>

<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well login-signup-panels">
<center><h2 style="font-weight: bold">Login</h2>

<h4 class="text-center" style="color: rgba(255,143,69,1.0);" ng-controller="universalProductControllerAJS">{{errorToDisplay}}</h4>
<br>
<form action="perform_login" method="post">

<input type="text" name="username" class="special-textbox sns-box-hover form-control" placeholder="Email" autofocus/><br>

<input type="password" name="password" class="special-textbox form-control" placeholder="Password"/><br>

<a href="reg">
<button type="button" class="btn btn-orange form-control" style="border-radius: 50px 50px 50px 50px;outline:none;width:40%;font-size:smaller;text-decoration: none;">
 <i class="glyphicon glyphicon-circle-arrow-left"></i>  &nbsp; <font style="font-family: fontRoundedElegance;font-size: large; font-weight: bold;">SignUp</font>
</button>
</a>

<button type="submit" class="btn btn-orange form-control" style="border-radius: 50px 50px 50px 50px;outline:none;width:40%;font-size: smaller;">
<font style="font-family: fontRoundedElegance;font-size: large; font-weight: bold;">Login</font> &nbsp; <i class="glyphicon glyphicon-circle-arrow-right"></i>
</button>

</form>
</center>
</div>

<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>
</div>
 
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>