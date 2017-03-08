<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="resources/css/site-style.css" />

<title>Test Page</title>


<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/main-style.css" />
</head>
<body>

<!-- HEADER STARTS -->
<div class="container-fluid well-sm"  id="test-header">

<!-- FIRST ROW STARTS -->
<div class="row">
<!-- LEFT PADDING -->
<div class="col-xs-1 col-sm-3 col-md-3 col-lg-3"></div>

<div class="head-src">
<form class="form-element input-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
<button class="head-srcbtn-left well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1">ko</button>
<input class="head-srctxt well-sm col-xs-8 col-sm-10 col-md-10 col-lg-10" type="text" name="searchkeyword" style="text-align:center;"/>
<button class="head-srcbtn-right well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1">ok</button>
</form>
</div>

<!-- RIGHT PADDING -->
<div class="col-xs-1 col-sm-3 col-md-3 col-lg-3"></div>
</div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>



<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/dev-query.js" ></script>
</body>
</html>