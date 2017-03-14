<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShopNScroll</title>
<link href="resources/img/favicon.ico" rel="icon" type="image/x-icon" />

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/main-style.css" />

</head>

<body>

<!-- HEADER STARTS -->
<div class="container-fluid well-sm"  id="main-header">

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
<input id="main-head-srctxt-sm" class="well-sm col-xs-4 hidden-sm hidden-md hidden-lg" type="text" name="searchkeyword" style="text-align:center;" data-toggle="tooltip" title="Search" data-placement="bottom"></input>
</form>
</div>

<div>
<a href="login"><button class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-2 col-lg-2 glyphicon glyphicon-user" data-toggle="tooltip" title="Login" data-placement="left"></button></a>
<a href="signup"><button class="main-header-btn well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1 glyphicon glyphicon-log-in" data-toggle="tooltip" title="SignUp" data-placement="right"></button></a>
</div>
</div>

<!-- RIGHT PADDING -->
<div class="col-xs-0 col-sm-3 col-md-3 col-lg-3"></div>
</div>
</div>

<!-- NAVBAR -->

<!-- NAVBAR-ENDS -->

<!-- MARGIN-DIVIDER -->
<div id="margin-divider"></div>

<div class="body-area container well-lg">