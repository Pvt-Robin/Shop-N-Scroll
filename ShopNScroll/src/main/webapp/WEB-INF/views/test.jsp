<%@ include file="component-header.jsp" %>

<div></div>

<!-- HEADER STARTS -->
<div class="container-fluid well-sm"  id="test-header">

<!-- FIRST ROW STARTS -->
<div class="row">
<!-- LEFT PADDING -->
<div class="col-xs-1 col-sm-3 col-md-3 col-lg-3"></div>

<div class="head-src">
<form class="form-element input-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
<button class="head-srcbtn-left well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1">M</button>
<input class="head-srctxt well-sm col-xs-8 col-sm-10 col-md-10 col-lg-10" type="text" name="searchkeyword" style="text-align:center;"/>
<button class="head-srcbtn-right well-sm col-xs-2 col-sm-1 col-md-1 col-lg-1">S</button>
</form>
</div>



<!-- RIGHT PADDING -->
<div class="col-xs-1 col-sm-3 col-md-3 col-lg-3"></div>
</div>

</div>

<button class="admin-expand-btn">Button</button>
<h1 class="admin-tool-form">vsvhiwrh</h1>

<%-- <h1>WELCOME ${user}</h1> --%>
<h1>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal.username"/>
</sec:authorize>
</h1><br>

<a href="logout">Logout</a>



<nav class="navbar">
  <div class="container text-center">
    <ul class="nav navbar-nav">
      <li class="dropdown" ng-repeat="ct in categoryData">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">{{ct.categoryName}}</a>
        <ul class="dropdown-menu">
          <li ng-repeat="sct in subCategory"><a href="#">{{sct.subCategoryName}}</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>

<div class=" text-center">
					<a href="#" class="product-grid-button btn btn-nice" role="button"><i class="glyphicon glyphicon-heart"></i></a>
					<a href="#" class="product-grid-button btn btn-sleek" role="button"><i class="glyphicon glyphicon-shopping-cart"></i></a>
					<a href="#" class="product-grid-button btn btn-good pull-right" role="button">
					<b>&nbspBuy Now<i class="glyphicon glyphicon-chevron-right"></i><i class="glyphicon glyphicon-chevron-right"></i></b>
					</a>
					</div>

<%@ include file="component-footer.jsp" %>