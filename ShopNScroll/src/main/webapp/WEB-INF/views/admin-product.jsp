<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="text-center">

<div class="well-sm sns-heading">

<div class="btn-group admin-tab well-sm col-md-6">
<a href="ads" class="btn admin-tab-button">Slider</a>
<a href="user" class="btn admin-tab-button">Users</a>
<a href="supplier" class="btn admin-tab-button">Suppliers</a>
<a href="category" class="btn admin-tab-button">Category</a>
<a href="subcategory" class="btn admin-tab-button">SubCategory</a>
<a href="brand" class="btn admin-tab-button">Brands</a>
<button class="btn admin-tab-button-selected "><b>Products</b></button>
</div>

<div class="text-right well-sm">
<button class="admin-expand-btn btn admin-tab-button"><i class="glyphicon glyphicon-plus"></i>&nbsp Add</button>
<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn admin-tab-button" autofocus/>

<select ng-model="orderkeyword" class="btn admin-tab-button">
<option value="" disabled selected>Sort By</option>
<option value="productId">Id</option>
<option value="productName">Name</option>
<option value="description">Description</option>
<option value="categoryId">Category</option>
<option value="stock">Stock</option>
<option value="brandId">Brand</option>
<option value="creationDate">Date</option>
<option value="categoryId">Category</option>
<option value="subCategoryId">Sub Category</option>
<option value="supplierId">Supplier</option>
<option value="madeCountry">MadeCountry</option>
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

<form:form action="addproduct" modelAttribute="product" enctype="multipart/form-data" method="post">

<div class="row">
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg">

<form:input path="productId" hidden="true"/>
<form:input path="viewCount" hidden="true"/>
<form:input path="rating" hidden="true"/>

<form:label path="productName">Name</form:label><br>
<form:input path="productName" placeholder="Name" class="special-textbox" /><br>
<form:errors path="productName" class="admin-tool-error" /><br>

<form:label path="description">Description</form:label><br>
<form:input path="description" placeholder="Description" class="special-textbox"/><br>
<form:errors path="description" class="admin-tool-error" /><br>

<form:label path="price">Price</form:label><br>
<form:input path="price" placeholder="Price" class="special-textbox"/><br>
<form:errors path="price" class="admin-tool-error" /><br>

<form:label path="discount">Discount</form:label><br>
<form:input path="discount" placeholder="Discount" class="special-textbox"/><br>
<form:errors path="discount" class="admin-tool-error" /><br>

<form:label path="madeCountry">Made Country</form:label><br>
<form:input path="madeCountry" placeholder="Country" class="special-textbox"/><br>
<form:errors path="madeCountry" class="admin-tool-error" /><br>

<form:label path="stock">Stock</form:label><br>
<form:input path="stock" placeholder="Stock" class="special-textbox"/><br>
<form:errors path="stock" class="admin-tool-error" /><br>

<center>
<form:label path="productImage">Image</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default special-textbox" path="productImage" /><br>
</center>

<form:label path="categoryId">Category</form:label><br>
<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId" class="special-textbox"/><br>

<form:label path="subCategoryId">Sub Category</form:label><br>
<form:select path="subCategoryId" items="${subCategoryList}" itemLabel="subCategoryName" itemValue="subCategoryId" class="special-textbox"/><br>

<form:label path="brandId">Brand</form:label><br>
<form:select path="brandId" items="${brandList}" itemLabel="brandName" itemValue="brandId" class="special-textbox"/><br>

<form:label path="supplierId">Supplier</form:label><br>
<form:select path="supplierId" items="${supplierList}" itemLabel="supplierName" itemValue="supplierId" class="special-textbox"/><br><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<a href="product"><button type="button" class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></a>
</c:if>

</div>
<div class="col-xs-0 col-sm-8 col-md-4 col-lg-4 well-lg"></div>
</div>

</form:form>
</div> 

<!-- TABLE-STARTS -->
<div class="table-responsive">
<table class="table well-sm text-center" ng-controller="productControllerAJS">
<tr>
<th><center>Image</center></th>
<th><center>About</center></th>
<th><center>Details</center></th>
<th><center>Country</center></th>
<th><center>Posted</center></th>
<th><center>Stats</center></th>
<th><center>Brand</center></th>
<th><center>Category</center></th>
<th><center>Supplier</center></th>
<th><center>Operation</center></th>
</tr>

<tr ng-repeat="p in plist | filter:searchkeyword | orderBy:orderkeyword : orderflag ">

<td><img onerror="this.onerror=null;callNoImg(this);" src="resources/data/PRDT-{{p.productId}}.jpg" height="120px" width="120px"/></td>

<td>
<i>#{{p.productId}}</i><br>
<b>{{p.productName}}</b><br>
{{p.description}}<br>
</td>

<td>
<font style="color:green;">&#8377{{p.price}}</font><br>
<font style="color:orange;">{{p.discount}}%</font><br>
<font style="color:blue;">({{p.stock}})</font>
</td>

<td>{{p.madeCountry}}</td>
<td>{{p.createdDate}}</td>

<td>
<font style="color:orange;" ng-if="!p.enabled">Disabled</font>
<font style="color:green;" ng-if="p.enabled">Active</font><br>
{{p.viewCount}} v<br>
{{p.rating}}/5 r<br>
</td>

<td>{{p.brand.brandName}}</td>

<td>
{{p.subCategory.subCategoryName}}<br>
({{p.category.categoryName}})
</td>

<td>{{p.supplier.supplierName}}</td>
<td width="150px">
<!-- <a href="viewproduct-{{p.productId}}"><button class="special-icon btn btn btn-success" data-toggle="tooltip" title="View"><i class="glyphicon glyphicon-eye-open"></i></button></a> -->
<a href="updateproduct-{{p.productId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removeproduct-{{p.productId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
<a href="toggleproduct-{{p.productId}}" ng-if="p.enabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Disable"><i class="glyphicon glyphicon-ban-circle"></i></button></a>
<a href="toggleproduct-{{p.productId}}" ng-if="!p.enabled"><button class="special-icon btn btn-warning" data-toggle="tooltip" title="Enable"><i class="glyphicon glyphicon-ok-circle"></i></button></a>
</td>

</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>