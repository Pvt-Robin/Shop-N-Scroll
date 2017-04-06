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
<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>

<div id="main-head-src" class="form-element col-xs-12 col-sm-8 col-md-4 col-lg-4">

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
</div>
<div class="col-xs-0 col-sm-2 col-md-4 col-lg-4"></div>
</div>

<!-- HEADER ENDS -->

<!-- TOGGLEABLE AREA STARTS -->

<!-- NAVBAR STARTS -->

<div id="header-navbar" class="row well-lg removescrollbar" style="display: none; ">

<div class="col-xs-0 col-sm-2 col-md-3 col-lg-3"></div>

<div class="container search-grid-middle col-xs-12 col-sm-8 col-md-6 col-lg-6 well-sm text-center">
            <div class="row well-sm">
              <a href="home" class="text-center" style="color:white;text-decoration: none;"><i class="glyphicon glyphicon-home"></i>&nbsp Go To Home</a>
            </div>
			<div class="well-sm">
            <c:forEach var="ci" items="${categoryDataList}">
            <div class="navbar-section well col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <a href="productdisplay?browse=${ci.categoryName}" class="navbar-category text-center" style="margin-top: 3px;font-size: medium;font-weight: bold;width: 100%;">
                 ${ci.categoryName}</a><br>
                <c:forEach var="si" items="${ci.subCategory}">
                <a href="productdisplay?browse=${si.subCategoryName}" class="navbar-subcategory"><button class="btn btn-xs btn-fame" style="margin-top: 3px;font-size: medium;">${si.subCategoryName}</button></a>
                </c:forEach>
            </div>
            </c:forEach>
			</div>
</div>
            
<div class="col-xs-0 col-sm-2 col-md-3 col-lg-3 well-sm"></div>

</div>

<!-- NAVBAR-ENDS -->

<!-- SEARCH STARTS HERE -->
<div ng-controller="universalProductControllerAJS" >
<div id="searchresults" class="row well-sm removescrollbar" style="display:none;">

<div class="col-xs-1 col-sm-1 col-md-4 col-lg-4 well-sm"></div>

<div class="container search-grid-middle col-xs-10 col-sm-10 col-md-4 col-lg-4 well-lg text-center">
              
	<div class="row well-sm">      
	    <a href="productdisplay" class="text-center" style="color:white;text-decoration: none;"><i class="glyphicon glyphicon-search"></i>&nbsp More Search Options</a>
<br><br>	
		<div class="search-grid col-xs-12 col-sm-12 col-md-12 col-lg-12" ng-repeat="pd in productData | filter:mainsearchword || 'this is to empty container-38247618741cndfjkwe' | orderBy:createdDate:true |limitTo:15 " style="background-color: rgba(255,255,255,1.0)">
				<div class="">
				<a href="viewproduct-{{pd.productId}}">
					<img class="search-grid-img hidden-xs hidden-sm img-thumbnail col-xs-0 col-sm-0 col-md-3 col-lg-3" src="resources/data/PRDT-{{pd.productId}}.jpg"/>

					<div class="col-xs-8 col-sm-10 col-md-6 col-lg-6">
					<b style="color:black">{{pd.productName}}</b><br>
					<a href="productdisplay?browse={{pd.subCategory.subCategoryName}}" style="text-decoration: none;font-weight: lighter;font-size: small;">{{pd.brand.brandName}}</a>
					</div>
					
					<div class="col-xs-4 col-sm-2 col-md-3 col-lg-3 pull-right">
					<font class="text-center" style="color: orange;font-size: medium;text-decoration: line-through;">&#8377{{pd.price}}</font><br>
					<b class="text-center" style="color: green;font-size: medium;">&#8377{{pd.productAmount}}</b>
					</div>	
					</a>			
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-xs-1 col-sm-1 col-md-4 col-lg-4 well-sm"></div>
</div>
</div>
	
<!-- SEARCH ENDS HERE -->

<!-- LOGIN-STARTS -->

<div id="header-login-form" class="container" style="display:none;">
<div class="row well-sm">
<div id="header-login-form"class="col-xs-0 col-sm-1 col-md-2 col-lg-2"></div>
<center>
<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8">
<center>
<form action="perform_login" method="post">
<input type="text" name="username" class="special-header-textbox forplaceholder" id="usernametextbox" placeholder="Email.." autofocus/>
<input type="password" name="password" class="special-header-textbox forplaceholder" placeholder="Password.."/>
<button type="submit" class="btn btn-default btn-sm" id="special-login-btn">Log In</button>
<a href="reg"><button type="button" class="btn btn-default btn-sm" id="special-login-btn" style="margin-bottom: ">Sign Up</button></a>
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

<!-- LOGICAL BODY STARTS -->
<div class="body-area container-fluid">