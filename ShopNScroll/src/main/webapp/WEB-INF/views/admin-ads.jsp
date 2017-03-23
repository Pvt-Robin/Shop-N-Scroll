<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div ng-app="SiteAppAJS">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<a href="admin" class="btn admin-tab-button-back"><i class="glyphicon glyphicon-chevron-left"></i>Back</a>
<button class="btn admin-tab-button-selected"><b>Ads</b></button>
<a href="user" class="btn admin-tab-button">Users</a>
<a href="supplier" class="btn admin-tab-button">Suppliers</a>
<a href="category" class="btn admin-tab-button">Category</a>
<a href="subcategory" class="btn admin-tab-button">SubCategory</a>
<a href="brand" class="btn admin-tab-button">Brand</a>
<a href="product" class="btn admin-tab-button">Products</a><br/>
</div>

<div class="text-right well-sm">
<button class="admin-expand-btn btn admin-tab-button"><i class="glyphicon glyphicon-plus"></i>&nbsp Add</button>

<input type="text" ng-model="searchkeyword" class="btn admin-tab-button" placeholder="Search" autofocus/>

<select ng-model="orderkeyword" class="btn admin-tab-button">
<option value="" disabled selected>Sort By</option>
<option value="adId">Id</option>
<option value="adTitle">Title</option>
<option value="adAllureTerm">Allure</option>
<option value="adLink">Link</option>
<option value="adTurns">Turns</option>
</select>

<button class="btn admin-tab-button">
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

<form:form action="addad" modelAttribute="advertisement" enctype="multipart/form-data">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="adId" hidden="true"/>

<form:label path="adTitle">Title</form:label><br>
<form:input  path="adTitle" placeholder="Title" class="special-textbox"/><br>
<form:errors path="adTitle" class="admin-tool-error"/><br>

<form:label path="adAllureTerm">Allure Term</form:label><br>
<form:input  path="adAllureTerm" placeholder="Allure Term" class="special-textbox"/><br>
<form:errors path="adAllureTerm"brandTagLine" class="admin-tool-error"/><br>

<form:label path="adLink">Link</form:label><br>
<form:input path="adLink" placeholder="Link" class="special-textbox"/><br>
<form:errors path="adLink" class="admin-tool-error"/><br>

<center>
<form:label path="adBanner">Banner</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default special-textbox" path="adBanner" /><br>
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
<table class="table well-sm text-center" ng-controller="adControllerAJS">
<tr>
<th><center>Banner</center></th>
<th><center>Title</center></th>
<th><center>Term</center></th>
<th><center>Link</center></th>
<th><center>Turns</center></th>
<th><center>Operation</center></th>
</tr>
<!-- <tr ng-repeat="ad in adlist | filter:searchkeyword | orderBy:orderkeyword : orderflag"> -->
<!-- <td><img src="resources/data/BRND-{{b.brandId}}.jpg" height="80px" width="80px" alt="img not uploaded" onerror="this.onerror=null;callNoImg(this);"/></td> -->
<%-- <td>#{{b.brandId}}</td> --%>
<!-- <td>{{b.brandName}}</td> -->
<!-- <td>{{b.brandTagLine}}</td> -->
<!-- <td>{{b.brandDescription}}</td> -->
<!-- <td>{{b.brandSite}}</td> -->

<!-- <td> -->
<!-- <a href="updatebrand-{{b.brandId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a> -->
<!-- <a href="removebrand-{{b.brandId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a> -->
<!-- </td> -->
<!-- </tr> -->
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>