<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center admin-tool well-sm">
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<button class="btn btn-info">SubCategory</button>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>
</div>

<div ng-app="SiteAppAJS" class="text-center">

<div class="well-sm sns-heading">
<button class="admin-expand-btn btn btn-default btn-sm"><i class="glyphicon glyphicon-plus"></i>Form</button>

<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn btn-default btn-sm" autofocus/>

<select ng-model="orderkeyword" class="btn btn-default btn-sm">
<option value="subCategoryId" selected>Id</option>
<option value="subCategoryName">Name</option>
<option value="categoryId">Category</option>
<option value="subCategoryDescription">Description</option>
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

<form:form action="addsubcategory" modelAttribute="subCategory">

<form:input path="subCategoryId" hidden="true"/>

<form:label path="subCategoryName">Name</form:label><br>
<form:input path="subCategoryName" placeholder="Name"/><br>
<form:errors path="subCategoryName" class="admin-tool-error" /><br>

<form:label path="subCategoryDescription">Description</form:label><br>
<form:input path="subCategoryDescription" placeholder="Description"/><br>
<form:errors path="subCategoryDescription" class="admin-tool-error"/><br>

<form:label path="categoryId">Category</form:label><br>
<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId" /><br><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="subcategory"><button class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></form>
</c:if>
</form:form>
</div>


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