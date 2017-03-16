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

<form:form class="form" action="adduser" modelAttribute="user">

<form:input path="userId" hidden="true"/>

<form:label path="firstName">First Name</form:label><br>
<form:input path="firstName" placeholder="First Name"/><br>
<form:errors path="firstName" class="admin-tool-error"/><br>

<form:label path="lastName">Last Name</form:label><br>
<form:input path="lastName" placeholder="Last Name"/><br>
<form:errors path="lastName" class="admin-tool-error"/><br>

<form:label path="contact">Contact</form:label><br>
<form:input class="contact" path="contact" placeholder="Contact"/><br>
<form:errors path="contact" class="admin-tool-error"/><br>

<form:label path="email">Email</form:label><br>
<form:input class="email" path="email" placeholder="Email"/><br>
<form:errors path="email" class="admin-tool-error"/><br>

<form:label path="gender">Gender</form:label><br>
<form:input path="gender" placeholder="Gender"/><br>
<form:errors path="gender" class="admin-tool-error"/><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="user"><button class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></form>
</c:if>
</form:form>
</div>

<div class="table-responsive">
<table class="table  well-sm text-center" ng-controller="userControllerAJS">
<tr>
<th><center>Id</center></th>
<th><center>First Name</center></th>
<th><center>Last Name</center></th>
<th><center>Id</center></th>
<th><center>First Name</center></th>
<th><center>Last Name</center></th>
<th><center>Id</center></th>
<th><center>First Name</center></th>
<th><center>Last Name</center></th>
<th><center>Operation</center></th>
</tr>
<tr ng-repeat="u in ulist | filter:searchkeyword | orderBy:orderkeyword : orderflag ">
<td>#{{u.userId}}</td>
<td>{{u.firstName}}</td>
<td>{{u.lastName}}</td>
<td>
<a href="updatecategory-{{u.userId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<!-- <a href="removecategory-{{c.categoryId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a> -->
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>