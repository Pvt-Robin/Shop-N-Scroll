<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid text-center well-sm sitewise-header" ng-controller="headerControllerAJS">
<div class="row">
<a href="home"><button class="btn btn-warning btn-arrow-right pull-left" style="outline:none;"><b>Home</b></button></a>
<button class="btn btn-warning btn-arrow-right pull-left" style="background-color: rgba(0,0,0,1.0);outline:none;">{{userData.firstName}}</button>
</div>
</div>

<div class="row well-lg">
<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
<img src="resources/data/USER-{{userData.userId}}.jpg" onerror="callNoAvatar(this)" width="100%">
</div>
<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">

</div>
</div>


<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>