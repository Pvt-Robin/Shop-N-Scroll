<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShopNScroll</title>
<link href="resources/img/favicon.ico" rel="icon" type="image/x-icon" />

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/main-style.css" />

</head>
<body ng-app="SiteAppAJS">

<!-- HEADER STARTS -->
<div class="container-fluid well-sm"  id="main-header" ng-controller="headerControllerAJS">

<!-- FIRST ROW STARTS -->
<div class="row">
<!-- LEFT PADDING -->
<div class="col-xs-0 col-sm-3 col-md-3 col-lg-3"></div>

<div id="main-head-src" class="form-element col-xs-12 col-sm-6 col-md-6 col-lg-6">

<div>
<a href="home"><button class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1 glyphicon glyphicon-home" data-toggle="tooltip" title="Home" data-placement="left"></button></a>
<a href="cart"><button class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-2 col-lg-2 glyphicon glyphicon-shopping-cart" data-toggle="tooltip" title="Cart" data-placement="right"></button></a>
</div>

<div>
<form>
<input id="main-head-srctxt" class="well-sm hidden-xs col-sm-6 col-md-6 col-lg-6" type="text" name="searchkeyword" style="text-align:center;" data-toggle="tooltip" title="Search" data-placement="bottom"></input>
<button id="main-head-srctxt-sm" class="col-xs-4 hidden-sm hidden-md hidden-lg" style="text-align:center;height:36px;" data-toggle="tooltip" title="Menu" data-placement="bottom"></button>
</form>
</div>

<div>

<sec:authorize access="isAnonymous()">
<!-- <a href="login"> -->
<button id="header-login-button" class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Login" data-placement="left">
</button>
<!-- </a> -->
<a href="signup">
<button class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1 glyphicon glyphicon-log-in" data-toggle="tooltip" title="SignUp" data-placement="right"></button>
</a>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">

<button id="admin-profile-button" class="main-header-btn-admin well-sm col-xs-2 col-sm-1 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Profile" data-placement="left" style="color:rgba(173,255,47,1.0)"></button>

<button class="main-header-btn-admin well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1 glyphicon glyphicon-tasks" data-toggle="tooltip" title="Manage" data-placement="right"></button>

</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
<button id="buyer-profile-button" class="main-header-btn-admin well-sm col-xs-2 col-sm-1 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Profile" data-placement="left" style="color:rgba(173,255,47,1.0)"></button>

<a href="wishlist">
<button class="main-header-btn-buyer well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1 glyphicon glyphicon-heart" data-toggle="tooltip" title="Wishlist" data-placement="right"></button>

</sec:authorize>

</div>

<!-- RIGHT PADDING -->
<div class="col-xs-0 col-sm-3 col-md-3 col-lg-3"></div>
</div>
</div>

<!-- TOGGLEABLE AREA STARTS -->

<!-- NAVBAR STARTS -->
<div id="header-navbar" style="display:none;">
<div class="col-lg-3 col-md-3 col-sm-4 col-xs-0"></div>

<div class="col-lg-6 col-md-6 col-sm-4 col-xs-0">
<nav class="navbar navbar-inverse">
  <div class="container">
    <ul class="nav navbar-nav">
    <div class="text-center col-lg-3 col-md-3 col-sm-4 col-xs-0">

      <c:forEach var="cd" items="${categoryData}">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">${cd.categoryName}</a>
        <ul class="dropdown-menu">
       
        <c:forEach var="scd" items="${cd.subCategory}">
          <li><a href="#">${scd.subCategoryName}</a></li>
       </c:forEach> 
       
        </ul>
      </li>
      </c:forEach>
      </div>
    </ul>
  </div>
</nav>
</div>

<div class="col-lg-3 col-md-3 col-sm-4 col-xs-0"></div>

</div>

<!-- NAVBAR-ENDS -->

<!-- SEARCH STARTS HERE -->
	
	
	
<!-- SEARCH ENDS HERE -->

<!-- LOGIN-STARTS -->
<div id="header-login-form" class="well-sm" style="display:none;">
<form action="perform_login" method="post">
<center>
<div class="col-md-2"></div>
<div class="col-md-8">
<input type="text" name="username" class="special-header-textbox" placeholder="Username" autofocus/>
<input type="password" name="password" class="special-header-textbox" placeholder="Password"/>
<button type="submit" class="btn btn-default btn-sm" id="special-login-btn"><i class="glyphicon glyphicon-menu-right"></i><i class="glyphicon glyphicon-menu-right"></i><i class="glyphicon glyphicon-menu-right"></i></button>
<!-- <button type="submit" class="btn btn-default btn-sm" id="special-login-btn">Login</button> -->
</div>
<div class="col-md-2"></div>
</center>
</form>
</div>

<!-- LOGIN ENDS -->

<!-- ADMIN PROFILE STARTS HERE -->
<div id="admin-profile" style="display:none;">
<hr>
<div class="col-md-4 col-sm-4 col-xs-0"></div>

<div class="col-md-4 col-sm-4 col-xs-12">
<center>
<div class="col-md-3 col-sm-4 col-xs-6">
<a href="profile">
<img src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" class="profile-grid img-circle" width="100%">
</a>
<b>{{userData.firstName}}</b>
</div>
<div class="col-md-3 col-sm-3 col-xs-6"><a href="user"><img class="profile-grid img-circle" src="resources/img/admin-edit.png" width="100%"/></a>
Data
</div>
<div class="col-md-3 col-sm-3 col-xs-6"><a href="looks"><img class="profile-grid img-circle" src="resources/img/admin-theme.png" width="100%"/></a>
Looks
</div>
<div class="col-md-3 col-sm-3 col-xs-6"><a href="logout"><img class="profile-grid-danger img-circle" src="resources/img/logout.png" width="100%"/></a>
Logout
</div>
</center>
</div>

<div class="col-md-4 col-sm-3 col-xs-0"></div>
</div>
<!-- ADMIN PROFILE ENDS HERE -->

<!-- BUYER PROFILE STARTS HERE -->
<div id="buyer-profile" style="display:none;">
<hr>
<div class="col-md-3 col-sm-4 col-xs-0"></div>

<div class="col-md-6 col-sm-4 col-xs-12">

<center>
<div class="col-md-1 col-sm-4 col-xs-0"></div>
<div class="col-md-2 col-sm-4 col-xs-12">
<a href="profile">
<img src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" class="profile-grid img-circle" width="100%">
</a>
<b>{{userData.firstName}}</b>
</div>
<div class="col-md-2 col-sm-4 col-xs-6">
<a href="usercart"><img class="profile-grid img-circle" src="resources/img/user-cart.png" width="100%"/></a>
Cart
</div>
<div class="col-md-2 col-sm-4 col-xs-6"><a href="userwish"><img class="profile-grid img-circle" src="resources/img/user-wish.png" width="100%"/></a>
Wishes
</div>
<div class="col-md-2 col-sm-4 col-xs-6"><a href="userorder"><img class="profile-grid img-circle" src="resources/img/user-order.png" width="100%"/></a>
Orders
</div>
<div class="col-md-2 col-sm-4 col-xs-6"><a href="logout"><img class="profile-grid-danger img-circle" src="resources/img/logout.png" width="100%"/></a>
Logout
</div>
</center>

<div class="col-md-1 col-sm-4 col-xs-0"></div>
</div>

<div class="col-md-4 col-sm-3 col-xs-0"></div>
</div>
<!-- BUYER PROFILE ENDS HERE -->

</div>
<!-- TOGGLEABLE AREA ENDS -->

<!-- MARGIN-DIVIDER -->
<div id="margin-divider"></div>

<!-- <div class="hidden-xs hidden-sm body-area container well-lg"> -->
<div class="body-area container-fluid well-sm">