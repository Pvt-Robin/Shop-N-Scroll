<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button>
</div>
</div>

<div class="container-fluid">
<div class="row">

<div class="row well-sm">
<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>


<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4 login-signup-panels well-sm" ng-controller="headerControllerAJS">

<div class="row well-sm">
<div class="col-xs-0 col-sm-4 col-md-3 col-lg-3 well-sm"></div>

<div class="col-xs-12 col-sm-4 col-md-6 col-lg-6 well-sm">
<img class="img-circle img-responsive" style="border: 1px solid black;" src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" width="100%">
</div>

<div class="col-xs-0 col-sm-4 col-md-3 col-lg-3 well-sm"></div>
</div>

<h3 class="text-center" style="text-decoration: underline;"><b>Basic Details</b></h3>

<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 well-sm">
<div class="profile-text">Name:</div><br>
<div class="profile-text">Gender:</div><br>
<div class="profile-text">Date Of Birth: </div><br>
<div class="profile-text">Email: </div><br>
<div class="profile-text">Contact: </div><br>
</div>

<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 well-sm">
 <div class="profile-data"> &nbsp {{userData.firstName}} &nbsp {{userData.lastName}} </div><br>
 <div class="profile-data"> &nbsp {{userData.gender}}</div><br>
 <div class="profile-data"> &nbsp {{userData.dateOfBirth}}</div><br>
 <div class="profile-data"> &nbsp {{userData.email}} </div><br>
 <div class="profile-data"> &nbsp {{userData.contact}} </div><br>
</div>

</div>

<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>
</div>

<div class="row well-sm">
<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>

<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4 login-signup-panels well-sm">
<h3 class="text-center" style="text-decoration: underline;"><b>Delivery Address</b></h3>

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

<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 well-sm">
 <div class="profile-data"> &nbsp ${shipDataJSON.sName}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sPrefix}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sLandmark}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sStreet}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sCity}}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sState}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sCountry}</div><br>
 <div class="profile-data"> &nbsp ${shipDataJSON.sPIN}</div><br>
</div>

</div>

<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>
</div>


<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>
</div>

<div class="row well-sm">
<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>

<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4 login-signup-panels well-sm">
<h3 class="text-center" style="text-decoration: underline;"><b>Billing Address</b></h3>

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

<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 well-sm">
 <div class="profile-data"> &nbsp ${billDataJSON.bName}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bPrefix}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bLandmark}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bStreet}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bCity}}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bState}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bCountry}</div><br>
 <div class="profile-data"> &nbsp ${billDataJSON.bPIN}</div><br>
</div>

</div>

<div class="col-xs-0 col-sm-1 col-md-4 col-lg-4"></div>
</div>

</div>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>