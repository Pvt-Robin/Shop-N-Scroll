<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShopNScroll</title>
<link href="resources/img/favicon.ico" rel="icon" type="image/x-icon" />

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="resources/css/main-style.css" />
<link rel="stylesheet" href="resources/css/bootstrap-column-offset.css" />

</head>
<body ng-app="SiteAppAJS">

<!-- HEADER STARTS -->

<div class="container-fluid well-sm" id="main-header" ng-controller="headerControllerAJS">

<!-- FIRST ROW STARTS -->
<div class="row">
<!-- LEFT PADDING -->
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>

<div id="main-head-src" class="form-element col-xs-12 col-sm-6 col-md-4 col-lg-4">

<div>
<button id="header-menu-button" class="main-header-btn well-sm col-xs-2 col-sm-2 col-md-2 col-lg-2 glyphicon glyphicon-menu-hamburger" data-toggle="tooltip" title="Scroll" data-placement="right"></button>
</div>

<div>
<form>
<input id="main-head-srctxt" class="well-sm col-xs-8 col-sm-8 col-md-8 col-lg-8" type="text" name="searchkeyword" style="text-align:center;" data-toggle="tooltip" title="Search" data-placement="bottom" ng-model="mainsearchword"></input>
</form>
</div>

<div>

<sec:authorize access="isAnonymous()">
<button id="header-login-button" class="main-header-btn well-sm col-xs-2 col-sm-2 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Login" data-placement="left"></button>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<button id="admin-profile-button" class="main-header-btn-admin well-sm col-xs-2 col-sm-2 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Profile" data-placement="left"></button>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
<button id="buyer-profile-button" class="main-header-btn-admin well-sm col-xs-2 col-sm-2 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Profile" data-placement="left" style="color:rgba(173,255,47,1.0)"></button>
</sec:authorize>

</div>
<!-- RIGHT PADDING -->
<div class="col-xs-0 col-sm-3 col-md-4 col-lg-4"></div>
</div>
</div>

<!-- HEADER ENDS -->

<!-- TOGGLEABLE AREA STARTS -->

<!-- NAVBAR STARTS -->

<div id="header-navbar" data-spy="affix" class="container-fluid" style="display: none; ">
<div class="row">
<div >
<div class="col-xs-0 col-sm-2 col-md-2 col-lg-2"></div>

<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">

            <div id="navbar-section-menu" class="well col-xs-12 col-sm-12 col-md-12 col-lg-12">
              <ul>
                <li class="navbar-list well-sm"><a href="#" class="navbar-category text-Center">Menu</a></li>
                <li class="navbar-list"><a href="home" class="navbar-subcategory">Home</a></li>
                <li class="navbar-list"><a href="productdisplay" class="navbar-subcategory">Browse</a></li>
                <li class="navbar-list"><a href="login" class="navbar-subcategory">Log In</a></li>
                <li class="navbar-list"><a href="register" class="navbar-subcategory">Sign Up</a></li>
                <li class="navbar-list"><a href="about" class="navbar-subcategory">About Us</a></li>
              </ul>
            </div>

            <c:forEach var="ci" items="${categoryDataList}">
            <div class="navbar-section well col-xs-12 col-sm-12 col-md-12 col-lg-12">
              <ul>
                <li class="navbar-list"><a href="productdisplay?browse=${ci.categoryName}" class="navbar-category text-center">${ci.categoryName}</a></li>
                <c:forEach var="si" items="${ci.subCategory}">
                <li class="navbar-list"><a href="productdisplay?browse=${si.subCategoryName}" class="navbar-subcategory">${si.subCategoryName}</a></li>
                </c:forEach>
              </ul>
            </div>
            </c:forEach>

</div>
            
<div class="col-xs-0 col-sm-2 col-md-2 col-lg-2"></div>
</div>
</div>
</div>

<!-- NAVBAR-ENDS -->

<!-- SEARCH STARTS HERE -->

<div id="searchresults" data-spy="affix" class="row well-lg" style="display:none;">
<div ng-controller="universalProductControllerAJS" >
<h2 ng-if="{{mainsearchword}}" class="text-center" style="color:rgb(255,255,255)">Are You Looking For This?</h2>

<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4 well-sm"></div>

<div class="container search-grid-middle col-xs-12 col-sm-8 col-md-4 col-lg-4 well-lg">
	<div class="row">
		<div class="search-grid col-xs-12 col-sm-12 col-md-12 col-lg-12 well-sm" ng-repeat="pd in productData | filter:mainsearchword ||'vdsivhsivdsvhsiovsovd' | orderBy:createdDate:true |limitTo:15 " style="background-color: rgba(255,255,255,1.0)">

				<div class="img-responsive">
				
					<img class="search-grid-img hidden-xs hidden-sm img-rounded img-thumbnail col-xs-0 col-sm-0 col-md-2 col-lg-2" src="resources/data/PRDT-{{pd.productId}}.jpg"/>

					<div class="col-xs-8 col-sm-10 col-md-7 col-lg-7">
					<b>{{pd.productName}}</b><br>
					<a href="productdisplay?browse={{pd.subCategory.subCategoryName}}" style="text-decoration: none;font-weight: lighter;font-size: small;">{{pd.subCategory.subCategoryName}}</a>
					</div>
					
					<div class="col-xs-4 col-sm-2 col-md-3 col-lg-3">
					<b class="text-center" style="color: orange;font-size: large;">&#8377{{pd.productAmount}}</b>
					</div>
										
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4 well-sm"></div>
</div>
</div>
	
<!-- SEARCH ENDS HERE -->

<!-- LOGIN-STARTS -->
<div id="header-login-form" data-spy="affix" class="container" style="display:none;">
<div class="row well-sm">
<div id="header-login-form"class="col-xs-0 col-sm-1 col-md-2 col-lg-2"></div>
<center>
<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8">
<center>
<form action="perform_login" method="post">
<button type="button" class="btn btn-default btn-sm" id="special-login-btn">Sign Up</button>
<button type="button" class="btn btn-default btn-sm" id="special-login-btn">Forgot</button>
<input type="text" name="username" class="special-header-textbox" placeholder="Username" autofocus/>
<input type="password" name="password" class="special-header-textbox" placeholder="Password"/>
<button type="submit" class="btn btn-default btn-sm" id="special-login-btn">Log In</button>

</form>
</center>
</div>
</center>
<div class="col-xs-0 col-sm-1 col-md-2 col-lg-2"></div>
</div>
</div>
<!-- LOGIN ENDS -->

<!-- ADMIN PROFILE STARTS HERE -->
<div id="admin-profile" data-spy="affix" class="well-lg" style="display:none;">

<div class="col-md-4 col-sm-4 col-xs-0"></div>

<div class="col-md-4 col-sm-4 col-xs-12">
<center>
<div class="col-md-3 col-sm-4 col-xs-6">
<a href="profile">
<img src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" class="profile-grid img-circle" width="100%">
</a>
<font class="shadowed-text"><b>{{userData.firstName}}</b></font>
</div>

<div class="col-md-3 col-sm-3 col-xs-6">
<a href="user">
<img class="profile-grid img-circle" src="resources/img/admin-edit.png" width="100%"/></a>
<font class="shadowed-text">Data</font>
</div>

<div class="col-md-3 col-sm-3 col-xs-6">
<a href="looks">
<img class="profile-grid img-circle" src="resources/img/admin-theme.png" width="100%"/></a>
<font class="shadowed-text">Looks</font>
</div>

<div class="col-md-3 col-sm-3 col-xs-6">
<a href="logout">
<img class="profile-grid-danger img-circle" src="resources/img/logout.png" width="100%"/></a>
<font class="shadowed-text">Logout</font>
</div>

</center>
</div>

<div class="col-md-4 col-sm-3 col-xs-0"></div>
</div>
<!-- ADMIN PROFILE ENDS HERE -->

<!-- BUYER PROFILE STARTS HERE -->
<div id="buyer-profile" data-spy="affix" class="well-lg" style="display:none;">

<div class="col-md-3 col-sm-4 col-xs-0"></div>

<div class="col-md-6 col-sm-4 col-xs-12">

<center>
<div class="col-md-1 col-sm-4 col-xs-0"></div>
<div class="col-md-2 col-sm-4 col-xs-12">
<a href="profile">
<img src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" class="profile-grid img-circle" width="100%">
</a>
<font class="shadowed-text"><b>{{userData.firstName}}</b></font>
</div>

<div class="col-md-2 col-sm-4 col-xs-6">
<a href="usercart"><img class="profile-grid img-circle" src="resources/img/user-cart.png" width="100%"/></a>
<font class="shadowed-text">Cart</font>
</div>

<div class="col-md-2 col-sm-4 col-xs-6">
<a href="userwish">
<img class="profile-grid img-circle" src="resources/img/user-wish.png" width="100%"/></a>
<font class="shadowed-text">Wishes</font>
</div>

<div class="col-md-2 col-sm-4 col-xs-6">
<a href="userorder">
<img class="profile-grid img-circle" src="resources/img/user-order.png" width="100%"/></a>
<font class="shadowed-text">Orders</font>
</div>

<div class="col-md-2 col-sm-4 col-xs-6">
<a href="logout">
<img class="profile-grid-danger img-circle" src="resources/img/logout.png" width="100%"/></a>
<font class="shadowed-text">Logout</font>
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