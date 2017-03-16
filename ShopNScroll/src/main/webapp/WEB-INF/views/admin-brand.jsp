<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center admin-tool well-sm">
<a href="user" ><button class="btn btn-warning">Users</button></a>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<button class="btn btn-info">Brand</button>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

</div>


<div ng-app="SiteAppAJS" class="text-center">

<div class="well-sm sns-heading">

<button class="admin-expand-btn btn btn-default btn-sm"><i class="glyphicon glyphicon-plus"></i>Form</button>

<input type="text" ng-model="searchkeyword" class="btn btn-default btn-sm" placeholder="Search" autofocus/>

<select ng-model="orderkeyword" class="btn btn-default btn-sm">
<option value="brandId" selected>Id</option>
<option value="brandName">Name</option>
<option value="brandDescription">Description</option>
</select>

<button class="btn btn-default btn-sm">
<input type="checkbox" ng-model="orderflag">&nbsp Descending</input>
</button>
</div>


<c:if test="${btnLabel eq 'Update'}">
<div class="admin-tool-form text-center well-sm">
</c:if>

<c:if test="${btnLabel ne 'Update'}">
<div class="admin-tool-form text-center well-sm" style="display:none;">
</c:if>

<form:form action="addbrand" modelAttribute="brand" enctype="multipart/form-data">

<form:input path="brandId" hidden="true"/>

<form:label path="brandName">Name</form:label><br>
<form:input  path="brandName" placeholder="Name"/><br>
<form:errors path="brandName" class="admin-tool-error"/><br>

<form:label path="brandDescription">Description</form:label><br>
<form:input path="brandDescription" placeholder="Description"/><br>
<form:errors path="brandDescription" class="admin-tool-error"/><br>

<form:label path="brandSite">Official Site</form:label><br>
<form:input path="brandSite" placeholder="Website"/><br>
<form:errors path="brandSite" class="admin-tool-error"/><br>

<center>
<form:label path="brandImage">Logo</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default" path="brandImage"/><br>
</center>

<form:button class="btn special-icon btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="brand"><button class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></form>
</c:if>
</form:form>
</div>

<div class="table-responsive">
<table class="table well-sm text-center" ng-controller="brandControllerAJS">
<tr>
<th><center>Logo</center></th>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Description</center></th>
<th><center>Website</center></th>
<th><center>Operation</center></th>
</tr>
<tr ng-repeat="b in blist | filter:searchkeyword | orderBy:orderkeyword : orderflag">
<td><img src="resources/data/BRND-{{b.brandId}}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
<td>#{{b.brandId}}</td>
<td>{{b.brandName}}</td>
<td>{{b.brandSite}}</td>
<td>{{b.brandDescription}}</td>
<td>
<a href="updatebrand-{{b.brandId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removebrand-{{b.brandId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>