<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center admin-tool well-sm">
<button class="btn btn-info">Users</button>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

</div>

<div class="text-center" ng-app="SiteAppAJS">
<div class="well-sm sns-heading">
<button class="admin-expand-btn btn btn-default btn-sm"><i class="glyphicon glyphicon-plus"></i>Form</button>

<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn btn-default btn-sm" autofocus/>

<select ng-model="orderkeyword" class="btn btn-default btn-sm">
<option value="userId" selected>Id</option>
<option value="firstName">First Name</option>
<option value="lastName">Last Name</option>
<option value="age">Age</option>
<option value="role">Role</option>
<option value="email">Email</option>
<option value="contact">Contact</option>
<option value="gender">Gender</option>
<option value="createdDate">Date</option>
</select>

<button class="btn btn-default btn-sm">
<input type="checkbox" value="true" ng-model="orderflag">&nbsp Descending</input>
</button>
</div>

<c:if test="${btnLabel eq 'Update'}">
<div class="admin-tool-form text-center well-sm">
</c:if>

<c:if test="${btnLabel ne 'Update'}">
<div class="admin-tool-form text-center well-sm" style="display:none;">
</c:if>

<form:form class="form" action="adduser" modelAttribute="user" method="post" enctype="multipart/form-data">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="userId" hidden="true"/>

<form:label path="firstName">First Name</form:label><br>
<form:input path="firstName" placeholder="First Name" class="special-textbox"/><br>
<form:errors path="firstName" class="admin-tool-error"/><br>

<form:label path="lastName">Last Name</form:label><br>
<form:input path="lastName" placeholder="Last Name" class="special-textbox"/><br>
<form:errors path="lastName" class="admin-tool-error"/><br>

<%-- <form:label path="dateOfBirth">Date Of Birth</form:label><br> --%>
<%-- <form:input path="dateOfBirth" type="date" placeholder="Date of Birth" class="special-textbox"/><br> --%>
<%-- <form:errors path="dateOfBirth" class="admin-tool-error"/><br> --%>

<form:label path="gender">Gender</form:label><br>
<form:select path="gender" placeholder="Gender" class="special-textbox"><br>
   <form:option value="Male" label="Male"/>
   <form:option value="Female" label="Female"/>   
</form:select>
<form:errors path="gender" class="admin-tool-error"/><br>

<center>
<form:label path="userAvatar">Avatar</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default special-textbox" path="userAvatar" /><br>
</center>

<form:label path="email">Email</form:label><br>
<form:input path="email" placeholder="Email" class="special-textbox"/><br>
<form:errors path="email" class="admin-tool-error"/><br>

<form:label path="contact">Contact</form:label><br>
<form:input path="contact" placeholder="Contact" class="special-textbox"/><br>
<form:errors path="contact" class="admin-tool-error"/><br>

<form:label path="username">Username</form:label><br>
<form:input path="username" placeholder="Username" class="special-textbox"/><br>
<form:errors path="username" class="admin-tool-error"/><br>

<form:label path="password">Password</form:label><br>
<form:input path="password" placeholder="Password" class="special-textbox"/><br>
<form:errors path="password" class="admin-tool-error"/><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="user"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

</form:form>
</div>

<div class="table-responsive">
<table class="table  well-sm text-center" ng-controller="userControllerAJS">
<tr>
<th><center>Avatar</center></th>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Age</center></th>
<th><center>Gender</center></th>
<th><center>Contact</center></th>
<th><center>Role</center></th>
<th><center>Created</center></th>
<th><center>Username</center></th>
<th><center>Password</center></th>
<th><center>Status</center></th>
<th><center>Operation</center></th>
</tr>
<tr ng-repeat="u in ulist | filter:searchkeyword | orderBy:orderkeyword : orderflag ">
<td><img onerror="this.onerror=null;callNoAvatar(this);" src="resources/data/USER-{{u.userId}}.jpg" height="120px" width="120px"/></td>
<td>#{{u.userId}}</td>
<td>{{u.firstName}}<br>
{{u.lastName}}</td>
<td>{{u.age}}</td>
<td>{{u.gender}}</td>
<td>{{u.contact}}<br>
{{u.email}}</td>
<td>{{u.role}}</td>
<td>{{u.createdDate}}</td>
<td>{{u.username}}</td>
<td>{{u.password}}</td>
<td ng-if="!u.enabled"  style="color:orange;">Not Active</td><td ng-if="u.enabled" style="color:green;">Active</td>
<td>
<a href="updateuser-{{u.userId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="toggleuser-{{u.userId}}"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Enable" ng-if="!u.enabled"><i class="glyphicon glyphicon-ok-circle"></i></button></a>
<a href="toggleuser-{{u.userId}}"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Disable" ng-if="u.enabled"><i class="glyphicon glyphicon-ban-circle"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>