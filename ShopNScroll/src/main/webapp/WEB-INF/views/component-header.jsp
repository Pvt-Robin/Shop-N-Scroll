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

<div class="container-fluid">
<div class="head-area row well-sm">

<div class="col-md-4 col-lg-3 col-xs-12 col-sm-12">
<center>
<img src="resources/img/logo.png" class="head-logo"/>
</center>
</div>

<div class="head-searchbar col-md-4 col-lg-6 col-xs-6 col-sm-6">
<div class="form-group">
<form>
<center>
<button class="head-searchbar-button btn btn-warning btn-well col-md-1">X</button>
<input class="head-searchbar-box col-md-10 well-sm" type="text" placeholder="Search Product Name,Brand,Type..." />
<button class="head-searchbar-button btn btn-warning btn-well col-md-1">>></button>
</center>
</form>
</div>

</div>

<div class="head-menu col-md-4 col-lg-3 col-xs-6 col-sm-4">
<div class="btn-group-justified">
<a href="home" class="head-menu btn btn-xs btn-warning col-md-2 col-xs-4"><button>Home</button></a>
<a href="cart" class="head-menu btn btn-xs btn-warning col-md-2 col-xs-4"><button>Cart</button></a>
<a href="login" class="head-menu btn btn-xs btn-warning col-md-2 col-xs-4"><button>Login</button></a>
<a href="signup" class="head-menu btn btn-xs btn-warning col-md-2 col-xs-4"><button>SignUp</button></a>
</div>
</div>

</div>
</div>

<!-- MARGIN-DIVIDER -->
<div class="margin-divider"></div>

<div class="head-navig-bar row navbar">
<div class="container col-md-* col-lg-* col-xs-* col-sm-*">

<div class="navbar-header">Trending</div>
<div class="navbar-nav">Electronics</div>
<div class="navbar-nav">Home Appliances</div>
<div class="navbar-nav">Outfits</div>
<div class="navbar-nav">Sports</div>
<div class="navbar-right">More</div>
</div>
</div>