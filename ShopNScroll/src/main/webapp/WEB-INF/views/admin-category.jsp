<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center admin-tool well-sm">
<a href="user" ><button class="btn btn-warning">Users</button></a>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<button class="btn btn-info">Category</button>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

</div>

<div class="text-center" ng-app="SiteAppAJS">
<div class="well-sm sns-heading">
<button class="admin-expand-btn btn btn-default btn-sm"><i class="glyphicon glyphicon-plus"></i>Form</button>

<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn btn-default btn-sm" autofocus/>

<select ng-model="orderkeyword" class="btn btn-default btn-sm">
<option value="categoryId" selected>Id</option>
<option value="categoryName">Name</option>
<option value="categoryDescription">Description</option>
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

<form:form class="form" action="addcategory" modelAttribute="category">

<form:input path="categoryId" hidden="true"/>
<div class="row">
<div class="col-md-2">
<form:label path="categoryName">Name</form:label>
</div></div>
<div class="row">
<div class="col-md-4">
<form:input class="form-control" path="categoryName" placeholder="Name"/>
</div></div>
<form:errors path="categoryName" class="admin-tool-error"/><br>

<form:label path="categoryDescription">Description</form:label><br>
<form:input path="categoryDescription" placeholder="Description"/><br>
<form:errors path="categoryDescription" class="admin-tool-error"/><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="category"><button class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></form>
</c:if>
</form:form>
</div>
<div class="table-responsive">
<table class="table  well-sm text-center" ng-controller="categoryControllerAJS">
<tr>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Description</center></th>
<th><center>Operation</center></th>
</tr>
<tr ng-repeat="c in clist | filter:searchkeyword | orderBy:orderkeyword : orderflag ">
<td>#{{c.categoryId}}</td>
<td>{{c.categoryName}}</td>
<td>{{c.categoryDescription}}</td>
<td>
<a href="updatecategory-{{c.categoryId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removecategory-{{c.categoryId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>