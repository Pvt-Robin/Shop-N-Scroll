<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<!-- <a href="#" class="btn admin-tab-button">Ads</a> -->
<a href="user" class="btn admin-tab-button">Users</a>
<button class="btn admin-tab-button-selected"><b>Suppliers</b></button>
<a href="category" class="btn admin-tab-button">Category</a>
<a href="subcategory" class="btn admin-tab-button">SubCategory</a>
<a href="brand" class="btn admin-tab-button">Brand</a>
<a href="product" class="btn admin-tab-button">Products</a>
</div>

<div class="text-right well-sm">
<button class="admin-expand-btn btn admin-tab-button"><i class="glyphicon glyphicon-plus"></i>&nbsp Add</button>
<input type="text" ng-model="searchkeyword" class="btn admin-tab-button" placeholder="Search" autofocus/>

<select ng-model="orderkeyword" class="btn admin-tab-button">
<option value="" disabled selected>Sort By</option>
<option value="supplierId">Id</option>
<option value="supplierName">Name</option>
<option value="supplierDescription">Description</option>
<option value="supplierFirmName">Firm Name</option>
<option value="supplierCity">City</option>
<option value="supplierState">State</option>
<option value="supplierCountry">Country</option>
<option value="supplierDisabled">Status</option>
</select>

<button class="btn admin-tab-button" >
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

<form:form action="addsupplier" modelAttribute="supplier">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="supplierId" hidden="true"/>

<form:label path="supplierName">Name</form:label><br>
<form:input path="supplierName" placeholder="Name" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierName"/><br>

<form:label path="supplierFirmName">Firm Name</form:label><br>
<form:input path="supplierFirmName" placeholder="Firm Name" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierFirmName"/><br>
 
<form:label path="supplierDescription">Description</form:label><br>
<form:input path="supplierDescription" placeholder="About Firm..." class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierDescription"/><br>

<form:label path="supplierLandmark">Landmark</form:label><br>
<form:input path="supplierLandmark" placeholder="Near Bell Church,Opposite To Post Office..." class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierLandmark"/><br>

<form:label path="supplierStreet">Street</form:label><br>
<form:input path="supplierStreet" placeholder="Street" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierStreet"/><br>

<form:label path="supplierCity">City</form:label><br>
<form:input path="supplierCity" placeholder="City" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierCity"/><br>

<form:label path="supplierState">State</form:label><br>
<form:input path="supplierState" placeholder="State" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierState"/><br>

<form:label path="supplierCountry">Country</form:label><br>
<form:input path="supplierCountry" placeholder="Country" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierCountry"/><br>

<form:label path="supplierEmail">Email</form:label><br>
<form:input path="supplierEmail" placeholder="abc123@xyz.com" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierEmail"/><br>

<form:label path="supplierContact">Contact</form:label><br>
<form:input path="supplierContact" placeholder="Phone Number" class="special-textbox"/><br>
<form:errors class="admin-tool-error" path="supplierContact"/><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="supplier"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

</form:form>
</div>

<div class="table-responsive">
<table class="table well-sm text-center" ng-controller="supplierControllerAJS">
<tr>
<th><center>Id</center></th>
<th><center>Name</center></th>
<th><center>Firm Name</center></th>
<th><center>Description</center></th>
<th><center>Landmark</center></th>
<th><center>Street</center></th>
<th><center>City</center></th>
<th><center>State</center></th>
<th><center>Country</center></th>
<th><center>Contact</center></th>
<th><center>Email</center></th>
<th><center>Status</center></th>
<th><center>Operation</center></th>
</tr>

<tr ng-repeat="s in slist | filter:searchkeyword | orderBy : orderkeyword : orderflag">
<td>#{{s.supplierId}}</td>
<td>{{s.supplierName}}</td>
<td>{{s.supplierFirmName}}</td>
<td>{{s.supplierDescription}}</td>
<td>{{s.supplierLandmark}}</td>
<td>{{s.supplierStreet}}</td>
<td>{{s.supplierCity}}</td>
<td>{{s.supplierState}}</td>
<td>{{s.supplierCountry}}</td>
<td>{{s.supplierEmail}}</td>
<td>{{s.supplierContact}}</td>
<td>
<font style="color:orange;" ng-if="!s.enabled">Not Active</font>
<font style="color:green;" ng-if="s.enabled">Active</font>
</td>

<td>
<a href="updatesupplier-{{s.supplierId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removesupplier-{{s.supplierId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>

<a href="supplieractivatetoggle-{{s.supplierId}}" ng-if="s.enabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Disable"><i class="glyphicon glyphicon-ban-circle"></i></button></a>
<a href="supplieractivatetoggle-{{s.supplierId}}" ng-if="!s.enabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Enable"><i class="glyphicon glyphicon-ok-circle"></i></button></a>

</td>
</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>