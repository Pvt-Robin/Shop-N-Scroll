<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div ng-app="SiteAppAJS">

<div class="well-sm sns-heading">

<div class="btn-group admin-tool well-sm col-md-6">
<a href="user" class="btn btn-warning">Users</a>
<a href="supplier" class="btn btn-warning">Suppliers</a>
<a href="category" class="btn btn-warning">Category</a>
<a href="subcategory" class="btn btn-warning">SubCategory</a>
<button class="btn btn-info">Brand</button>
<a href="product" class="btn btn-warning">Products</a><br/>
</div>

<div class="text-right well-sm">
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

</div>


<c:if test="${btnLabel eq 'Update'}">
<div class="admin-tool-form text-center well-sm">
</c:if>

<c:if test="${btnLabel ne 'Update'}">
<div class="admin-tool-form text-center well-sm" style="display:none;">
</c:if>

<form:form action="addbrand" modelAttribute="brand" enctype="multipart/form-data">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="brandId" hidden="true"/>

<form:label path="brandName">Name</form:label><br>
<form:input  path="brandName" placeholder="Name" class="special-textbox"/><br>
<form:errors path="brandName" class="admin-tool-error"/><br>

<form:label path="brandTagLine">Tag Line</form:label><br>
<form:input  path="brandTagLine" placeholder="Tagline" class="special-textbox"/><br>
<form:errors path="brandTagLine" class="admin-tool-error"/><br>

<form:label path="brandDescription">Description</form:label><br>
<form:input path="brandDescription" placeholder="Description" class="special-textbox"/><br>
<form:errors path="brandDescription" class="admin-tool-error"/><br>

<form:label path="brandSite">Official Site</form:label><br>
<form:input path="brandSite" placeholder="Website" class="special-textbox"/><br>
<form:errors path="brandSite" class="admin-tool-error"/><br>

<center>
<form:label path="brandImage">Logo</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default special-textbox" path="brandImage" /><br>
</center>

<form:button class="btn special-icon btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="brand"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

</form:form>
</div>

<div class="table-responsive">
<table class="table well-sm text-center" ng-controller="brandControllerAJS">
<tr>
<th><center>Logo</center></th>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Tag Line</center></th>
<th><center>Description</center></th>
<th><center>Website</center></th>
<th><center>Operation</center></th>
</tr>
<tr ng-repeat="b in blist | filter:searchkeyword | orderBy:orderkeyword : orderflag">
<td><img src="resources/data/BRND-{{b.brandId}}.jpg" height="80px" width="80px" alt="img not uploaded" onerror="this.onerror=null;callNoImg(this);"/></td>
<td>#{{b.brandId}}</td>
<td>{{b.brandName}}</td>
<td>{{b.brandTagLine}}</td>
<td>{{b.brandDescription}}</td>
<td>{{b.brandSite}}</td>

<td>
<a href="updatebrand-{{b.brandId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removebrand-{{b.brandId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>