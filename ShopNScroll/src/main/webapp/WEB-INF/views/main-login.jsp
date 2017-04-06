<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<br>

<div class="row">

<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>

<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well login-signup-panels">
<center><h2 style="color: rgb(92,184,92);font-weight: bold">Login</h2>
<br>
<form action="perform_login" method="post">

<input type="text" name="username" class="special-textbox sns-box-hover form-control" placeholder="Email" autofocus/><br>

<input type="password" name="password" class="special-textbox form-control" placeholder="Password"/><br>

<a href="reg">
<button type="button" class="btn btn-success form-control" style="border-radius: 50px 50px 50px 50px;outline:none;width:40%;font-size:smaller;">
 <i class="glyphicon glyphicon-circle-arrow-left"></i>  &nbsp <font style="font-family: fontRoundedElegance;font-size: large; font-weight: bold;">SignUp</font>
</button>
</a>

<button type="submit" class="btn btn-success form-control" style="border-radius: 50px 50px 50px 50px;outline:none;width:40%;font-size: smaller;">
<font style="font-family: fontRoundedElegance;font-size: large; font-weight: bold;">Login</font> &nbsp <i class="glyphicon glyphicon-circle-arrow-right"></i>
</button>

</form>
</center>
</div>

<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>
</div>
 
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>