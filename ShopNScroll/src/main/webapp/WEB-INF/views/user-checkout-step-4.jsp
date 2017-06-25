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
<font class="signup-header-font btn">2</font>
<font class="signup-header-font btn">3</font>
<font class="signup-header-font-current btn">4</font>
</div>

<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
<a href="${flowExecutionUrl}&_eventId=cancel"><button class="signup-header-button-danger btn btn-danger pull-right newpager" data-toggle="tooltip" title="Exit"><i class="glyphicon glyphicon-remove"></i></button></a>
</div>
</div>

<h2><b>Payment Method</b></h2>

<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

<div class="tab well-sm">
  <button class="tablinks" onclick="openCity(event, 'Credit')">Credit Card</button>
  <button class="tablinks" onclick="openCity(event, 'Debit')">Debit Card</button>
  <button class="tablinks" onclick="openCity(event, 'COD')">COD</button>
</div>


<div id="Credit" class="tabcontent">
  <h4><b style="color: rgba(255,127,42,0.8)">Enter Credit Card Details</b></h4>
  <input type="text" class="form-control text-center" placeholder="Enter 16 Digit Card Number..."/>
  <br>
  <input type="text" class="form-control text-center" placeholder="Enter Expiry Date..."/>
</div>

<div id="Debit" class="tabcontent" style="display: none;">
  <h4><b style="color: rgba(255,127,42,0.8)">Enter Debit Card Details</b></h4>
  <input type="text" class="form-control text-center" placeholder="Enter 16 Digit Card Number..."/>
  <br>
  <input type="text" class="form-control text-center" placeholder="Enter Expiry Date..."/>
</div>

<div id="COD" class="tabcontent" style="display: none;">
  <h4><b style="color: rgba(255,127,42,0.8)">Cash On Delivery</b></h4>
  <br>
  <p>Usually delivered within 15 Business days...</p>
</div>

<br>
<br>

<form:form modelAttribute="user">

<input type="submit" id="previous" name="_eventId_previous" class="signup-button btn btn-lg btn-orange pull-left newpager" value="Previous" />

<input type="submit" id="continue" name="_eventId_continue" class="signup-button btn btn-lg btn-orange pull-right newpager" value="Order Now"/>

</form:form>

</div>
</div>
</div>

</div>
</div>

<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>