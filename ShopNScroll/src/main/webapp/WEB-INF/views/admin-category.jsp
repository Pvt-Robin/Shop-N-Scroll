<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<a href="ads" class="btn admin-tab-button">Slider</a>
<a href="user" class="btn admin-tab-button">Users</a>
<a href="supplier" class="btn admin-tab-button">Suppliers</a>
<button class="btn admin-tab-button-selected"><b>Category</b></button>
<a href="subcategory" class="btn admin-tab-button">SubCategory</a>
<a href="brand" class="btn admin-tab-button">Brand</a>
<a href="product" class="btn admin-tab-button">Products</a>
</div>

<div class="text-right well-sm">
<button class="admin-expand-btn btn admin-tab-button"><i class="glyphicon glyphicon-plus"></i>&nbsp Add</button>
<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn btn admin-tab-button" autofocus/>

<select ng-model="orderkeyword" class="btn admin-tab-button">
<option value="" disabled selected>Sort By</option>
<option value="categoryId">Id</option>
<option value="categoryName">Name</option>
<option value="categoryDescription">Description</option>
</select>

<button class="btn btn admin-tab-button">
<input type="checkbox" value="true" ng-model="orderflag">&nbsp Descending</input>
</button>
</div>
</div>

<c:if test="${btnLabel eq 'Update'}">
<div class="admin-tool-form text-center well-sm">
</c:if>

<c:if test="${btnLabel ne 'Update'}">
<div class="admin-tool-form text-center well-sm" style="display:none;">
</c:if>

<form:form class="form" action="addcategory" modelAttribute="category">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="categoryId" hidden="true"/>

<form:label path="categoryName">Name</form:label><br>
<form:input path="categoryName" placeholder="Name" class="special-textbox" /><br>
<form:errors path="categoryName" class="admin-tool-error"/><br>

<form:label path="categoryDescription">Description</form:label><br>
<form:input path="categoryDescription" placeholder="Description" class="special-textbox"/><br>
<form:errors path="categoryDescription" class="admin-tool-error"/><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="category"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

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
<td width="150px">
<a href="updatecategory-{{c.categoryId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removecategory-{{c.categoryId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>