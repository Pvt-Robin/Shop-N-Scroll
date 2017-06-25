<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<button class="btn admin-tab-button-selected"><b>Slider</b></button>
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
<option value="adCaption">Caption</option>
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

<form:label path="adCaption">Caption</form:label><br>
<form:input  path="adCaption" placeholder="Caption" class="special-textbox"/><br>
<form:errors path="adCaption" class="admin-tool-error"/><br>

<form:label path="adLink">Keyword</form:label><br>
<form:input path="adLink" placeholder="Key Word" class="special-textbox"/><br>
<form:errors path="adLink" class="admin-tool-error"/><br>

<center>
<form:label path="adBanner">Banner</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default special-textbox" path="adBanner" required="true" />
<font class="admin-tool-error">Note: Only 1024x270 Images Will Be Allowed</font><br><br>
</center>

<form:button class="btn special-icon btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="ads"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
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
<th><center>Id</center></th>
<th><center>Title</center></th>
<th><center>Caption</center></th>
<th><center>Keyword</center></th>
<th><center>Status</center></th>
<th><center>Operation</center></th>
</tr>

<tr><td colspan="7">
Note: Atleast 4 Ads Should Be Enabled For Display. Cannot Disable Beyond This Limit.
</td></tr>

<tr ng-repeat="al in alist | filter:searchkeyword | orderBy:orderkeyword : orderflag">
<td  width="370px"><img src="resources/data/AD-{{al.adId}}.jpg" height="80px" width="360px" alt="img not uploaded"/></td>
<td>#{{al.adId}}</td>
<td>{{al.adTitle}}</td>
<td>{{al.adCaption}}</td>
<td>{{al.adLink}}</td>

<td>
<div ng-if="al.enabled" style="color: green;">Active<br></div>
<div ng-if="!al.enabled" style="color: red;">Not Active<br></div>
<div>({{al.adTurns}} Times Displayed)</div>
</td>

<td width="150px">
<a href="updatead-{{al.adId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="togglestatus-{{al.adId}}" ng-if="al.enabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Disable"><i class="glyphicon glyphicon-ban-circle"></i></button></a>
<a href="togglestatus-{{al.adId}}" ng-if="!al.enabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Enable"><i class="glyphicon glyphicon-ok-circle"></i></button></a>
</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>