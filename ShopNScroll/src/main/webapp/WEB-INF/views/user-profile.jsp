<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home" class="newpager"><button class="btn btn-black-home btn-arrow-right pull-left" style="outline:none;"><i class="glyphicon glyphicon-home"></i></button></a>
<a href="profile"><button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button></a>
<button class="btn btn-black-full btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">Profile</button>
</div>
</div>

<div class="container">
<div class="row">

<sec:authorize access="hasRole('ROLE_ADMIN')">
<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>
</sec:authorize>

<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 well-sm" ng-controller="headerControllerAJS">
<div class="row login-signup-panels" style="margin:2px 2px 2px 2px;">

<div class="well-sm">
<button class="special-icon btn btn btn-black pull-right" data-toggle="modal" data-target="#userForm" title="Edit"><i class="glyphicon glyphicon-edit"></i></button>
</div>

<div class="row well-sm">
<div class="col-xs-1 col-sm-4 col-md-3 col-lg-3"></div>

<div class="col-xs-10 col-sm-4 col-md-6 col-lg-6 well-sm">
<img class="img-circle img-responsive" style="border: 1px solid black;" src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" width="100%">
</div>

<div class="col-xs-1 col-sm-4 col-md-3 col-lg-3 well-sm"></div>
</div>

<h3 class="text-center" style="text-decoration: underline;"><b>Basic Details</b></h3>

<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
<div class="profile-text">Name:</div><br>
<div class="profile-text">Gender:</div><br>
<div class="profile-text">DOB: </div><br>
<div class="profile-text">Email: </div><br>
<div class="profile-text">Contact: </div><br>
</div>

<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 well-sm">
 <div class="profile-data"> &nbsp; {{userData.firstName}} &nbsp {{userData.lastName}} </div><br>
 <div class="profile-data"> &nbsp; {{userData.gender}}</div><br>
 <div class="profile-data"> &nbsp; {{userData.dateOfBirth}}</div><br>
 <div class="profile-data"> &nbsp; {{userData.email}} </div><br>
 <div class="profile-data"> &nbsp; {{userData.contact}} </div><br>
</div>
</div>
</div>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER')">


<!-- ONLY DISPLAYED FOR BUYERS -->
<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 well-sm">
<div class="row login-signup-panels" style="margin:2px 2px 2px 2px;">

<div class="well-sm">
<button class="special-icon btn btn btn-black pull-right" data-toggle="modal" data-target="#shippingForm" title="Edit"><i class="glyphicon glyphicon-edit"></i></button>
</div>
<br>

<h3 class="text-center well-lg" style="text-decoration: underline;"><b>Delivery Address</b></h3>

<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 well-sm">
<div class="profile-text">Name:</div><br>
<div class="profile-text">Prefix:</div><br>
<div class="profile-text">Landmark: </div><br>
<div class="profile-text">Street: </div><br>
<div class="profile-text">City: </div><br>
<div class="profile-text">State: </div><br>
<div class="profile-text">Country: </div><br>
<div class="profile-text">PIN: </div><br>
</div>

<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 well-sm">
 <div class="profile-data"> &nbsp; ${shippingAddr.sName}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sPrefix}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sLandmark}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sStreet}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sCity}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sState}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sCountry}</div><br>
 <div class="profile-data"> &nbsp; ${shippingAddr.sPIN}</div><br>
</div>

</div>
</div>

<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 well-sm">
<div class="row login-signup-panels" style="margin:2px 2px 2px 2px;">

<div class="well-sm">
<button class="special-icon btn btn btn-black pull-right" data-toggle="modal" data-target="#billingForm" title="Edit"><i class="glyphicon glyphicon-edit"></i></button>
</div>
<br>

<h3 class="text-center well-lg" style="text-decoration: underline;"><b>Billing Address</b></h3>

<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 well-sm">
<div class="profile-text">Name:</div><br>
<div class="profile-text">Prefix:</div><br>
<div class="profile-text">Landmark: </div><br>
<div class="profile-text">Street: </div><br>
<div class="profile-text">City: </div><br>
<div class="profile-text">State: </div><br>
<div class="profile-text">Country: </div><br>
<div class="profile-text">PIN: </div><br>
</div>

<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 well-sm">
 <div class="profile-data"> &nbsp; ${billingAddr.bName}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bPrefix}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bLandmark}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bStreet}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bCity}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bState}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bCountry}</div><br>
 <div class="profile-data"> &nbsp; ${billingAddr.bPIN}</div><br>
</div>
</div>
</div>
</sec:authorize>

</div>

<!------------------------------------------------------------SHIPPING EDIT MODAL -->

<div class="modal fade" id="shippingForm" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <div class="modal-content">

<form:form action="editshippingaddress" modelAttribute="shippingAddr">
        
<div class="modal-body">

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

<form:input class="form-control login-signup-font text-center" path="userId" style="display: none;" />

</div> 
        <div class="modal-footer"  style="background-color: rgba(0,0,0,0.8);">
			<button type="button" class="special-icon btn btn-orange pull-left" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i></button>
			<button type="submit" class="special-icon btn btn-orange pull-right new-pager"><i class="glyphicon glyphicon-ok"></i></button>       
			</div>

</form:form>
    
      </div>
      
    </div>
  </div>

<!-- --------------------------------------------------------------------------BILLING MODAL EDIT -->

<div class="modal fade" id="billingForm" role="dialog">
<div class="modal-dialog modal-sm">
    
<div class="modal-content">
      
<form:form action="editbillingaddress" modelAttribute="billingAddr">
      
<div class="modal-body">

<form:input class="form-control input" type="hidden" path="billId" placeholder="User Id" />

<form:label path="bName" for="bName" class="pull-left">Sender's Name</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bName')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bName" placeholder="Name" /><br>

<form:label path="bPrefix" for="bPrefix" class="pull-left">Prefix</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bPrefix')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:textarea class="login-signup-font form-control text-center" path="bPrefix" placeholder="Door Number,S/O,D/O..." /><br>

<form:label path="bLandmark" for="bLandmark" class="pull-left">Land Mark</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bLandmark')}" var="err"> 
<span style="color: green " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bLandmark" placeholder="Near Post Office..." /><br>

<form:label path="bStreet" for="bStreet" class="pull-left">Street</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bStreet')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bStreet" placeholder="Street..." /><br>

<form:label path="bCity" for="bCity" class="pull-left">City</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bCity')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bCity" placeholder="City..." /><br>

<form:label path="bState" for="bState" class="pull-left">State</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bState')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bState" placeholder="State..." /><br>

<form:label path="bCountry" for="bCountry" class="pull-left">Country</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bCountry')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bCountry" placeholder="Country..." /><br>

<form:label path="bPIN" for="bPIN" class="pull-left">PIN</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bPIN')}" var="err"> 
<span style="color: #e32828 " class="pull-right">${err.text}</span>
</c:forEach> 
<form:input class="login-signup-font form-control text-center" path="bPIN" placeholder="PIN..." /><br>

<form:input class="form-control login-signup-font text-center" path="userId" style="display: none;" />

</div>
        
<div class="modal-footer"  style="background-color: rgba(0,0,0,0.8);">
			<button type="button" class="special-icon btn btn-orange pull-left" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i></button>
			<button type="submit" class="special-icon btn btn-orange pull-right new-pager"><i class="glyphicon glyphicon-ok"></i></button>       
</div>

</form:form>

</div>
</div>
</div>

<!-- -----------------------------------------------------------------------------USER EDIT MODAL -->
<div class="modal fade" id="userForm" role="dialog">
<div class="modal-dialog modal-sm">
    
<div class="modal-content">
      
<form:form action="editprofile" modelAttribute="user" method="post" enctype="multipart/form-data" >
           
<div class="modal-body">

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

<form:label path="email" for="email" class="pull-left">Email</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach>
<form:input class="form-control login-signup-font text-center" path="email" placeholder="joe99@gmail.com..." readonly="true"/><br>

<form:label path="contact" for="contact" class="pull-left">Contact</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contact')}" var="err"> 
<span style="color: #e32828" class="pull-right">${err.text}</span>
</c:forEach>
<form:input class="form-control login-signup-font text-center" path="contact" placeholder="Mobile Number..." /><br>

<center>
<form:label path="userAvatar" class="pull-left">Profile Picture</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default form-control" path="userAvatar" /><br>
</center>

<form:label path="dateOfBirth" for="dateOfBirth" class="pull-left" hidden="true">Date Of Birth</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('dateOfBirth')}" var="err" > 
<span style="color: #e32828" class="pull-right"  style="display: none;">${err.text}</span>
</c:forEach> 
<form:input type="date" class="form-control login-signup-font text-center" path="dateOfBirth" placeholder="Date Of Birth"  style="display: none;" />

<form:label path="gender" for="gender" class="pull-left" style="display: none;">Gender</form:label>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('gender')}" var="err"> 
<span style="color: #e32828" class="pull-right"  style="display: none;">${err.text}</span>
</c:forEach>

<form:select path="gender" placeholder="Gender" class="form-control login-signup-font text-center" style="display: none;" >
   <form:option value="Male" label="Male"/>
   <form:option value="Female" label="Female"/>   
</form:select>

<form:input class="form-control login-signup-font text-center" path="password" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="username" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="shipId" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="billId" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="cartId" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="createdDate" style="display: none;" />

<form:input class="form-control login-signup-font text-center" path="role" style="display: none;" />

</div>

<div class="modal-footer"  style="background-color: rgba(0,0,0,0.8);">
			<button type="button" class="special-icon btn btn-orange pull-left" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i></button>
			<button type="submit" class="special-icon btn btn-orange pull-right new-pager"><i class="glyphicon glyphicon-ok"></i></button>
</div>

</form:form>
    
      </div>
    </div>
  </div>
  
<!-- -----------------------------------------------------------------------------MODAL ENDS   -->

</div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>