<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<a href="admin" class="btn admin-tab-button-back"><i class="glyphicon glyphicon-chevron-left"></i>Back</a>
<a href="#" class="btn admin-tab-button">Ads</a>
<a href="user" class="btn admin-tab-button">Users</a>
<a href="supplier" class="btn admin-tab-button">Suppliers</a>
<a href="category" class="btn admin-tab-button">Category</a>
<button class="btn admin-tab-button-selected"><b>SubCategory</b></button>
<a href="brand" class="btn admin-tab-button">Brand</a>
<a href="product" class="btn admin-tab-button">Products</a>
</div>

<div class="text-right well-sm">
<button class="admin-expand-btn btn admin-tab-button"><i class="glyphicon glyphicon-plus"></i>&nbsp Add</button>
<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn admin-tab-button" autofocus/>

<select ng-model="orderkeyword" class="btn admin-tab-button">
<option value="" disabled selected>Sort By</option>
<option value="subCategoryId">Id</option>
<option value="subCategoryName">Name</option>
<option value="categoryId">Category</option>
<option value="subCategoryDescription">Description</option>
</select>

<button class="btn admin-tab-button">
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

<form:form action="addsubcategory" modelAttribute="subCategory" method="post">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="subCategoryId" hidden="true"/>

<form:label path="subCategoryName">Name</form:label><br>
<form:input path="subCategoryName" placeholder="Name" class="special-textbox"/><br>
<form:errors path="subCategoryName" class="admin-tool-error" /><br>

<form:label path="subCategoryDescription">Description</form:label><br>
<form:input path="subCategoryDescription" placeholder="Description" class="special-textbox"/><br>
<form:errors path="subCategoryDescription" class="admin-tool-error"/><br>

<form:label path="categoryId">Category</form:label><br>
<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId" class="special-textbox"/><br><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="subcategory"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

</form:form>
</div>

<div class="table-responsive">
<table class="table" ng-controller="subCategoryControllerAJS">
<tr>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Description</center></th>
<th><center>Category</center></th>
<th><center>Operation</center></th>
</tr>

<tr ng-repeat="sc in sclist | filter:searchkeyword | orderBy : orderkeyword : orderflag">
<td>#{{sc.subCategoryId}}</td>
<td>{{sc.subCategoryName}}</td>
<td>{{sc.subCategoryDescription}}</td>
<td>{{sc.category.categoryName}}</td>
<td>
<a href="updatesubcategory-{{sc.subCategoryId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removesubcategory-{{sc.subCategoryId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>