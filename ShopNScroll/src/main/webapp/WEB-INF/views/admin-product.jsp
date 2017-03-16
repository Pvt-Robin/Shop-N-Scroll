<!-- HEADER -->
<%@ include file="component-header.jsp" %>


<div class="well-sm text-center">
<a href="user" ><button class="btn btn-warning">Users</button></a>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<button class="btn btn-info">Products</button>
</div>

<div ng-app="SiteAppAJS" class="text-center">

<div class="well-sm sns-heading">

<button class="admin-expand-btn btn btn-default btn-sm"><i class="glyphicon glyphicon-plus"></i>Form</button>

<input type="text" ng-model="searchkeyword" placeholder="Search" class="btn btn-default btn-sm" autofocus/>

<select ng-model="orderkeyword" class="btn btn-default btn-sm">
<option value="productId" selected>Id</option>
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

<form:form action="addproduct" modelAttribute="product" enctype="multipart/form-data">

<form:input path="productId" hidden="true"/>
<form:input path="viewCount" hidden="true"/>
<form:input path="rating" hidden="true"/>

<form:label path="productName">Name</form:label><br>
<form:input path="productName" placeholder="Name"/><br>
<form:errors path="productName" class="admin-tool-error" /><br>

<form:label path="description">Description</form:label><br>
<form:input path="description" placeholder="Description"/><br>
<form:errors path="description" class="admin-tool-error" /><br>

<form:label path="price">Price</form:label><br>
<form:input path="price" placeholder="Price"/><br>
<form:errors path="price" class="admin-tool-error" /><br>

<form:label path="discount">Discount</form:label><br>
<form:input path="discount" placeholder="Discount"/><br>
<form:errors path="discount" class="admin-tool-error" /><br>

<form:label path="madeCountry">Made Country</form:label><br>
<form:input path="madeCountry" placeholder="Country"/><br>
<form:errors path="madeCountry" class="admin-tool-error" /><br>

<form:label path="stock">Stock</form:label><br>
<form:input path="stock" placeholder="Stock" class="form-horizontal"/><br>
<form:errors path="stock" class="admin-tool-error" /><br>

<center>
<form:label path="productImage">Image</form:label><br>
<form:input type="file" accept=".jpg,.jpeg,.png" class="btn btn-default" path="productImage"/><br>
</center>

<form:label path="categoryId">Category</form:label><br>
<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId"/><br>

<form:label path="subCategoryId">Sub Category</form:label><br>
<form:select path="subCategoryId" items="${subCategoryList}" itemLabel="subCategoryName" itemValue="subCategoryId" /><br>

<form:label path="brandId">Brand</form:label><br>
<form:select path="brandId" items="${brandList}" itemLabel="brandName" itemValue="brandId" /><br>

<form:label path="supplierId">Supplier</form:label><br>
<form:select path="supplierId" items="${supplierList}" itemLabel="supplierName" itemValue="supplierId" /><br><br>

<form:button class="special-icon btn btn-success"><i class="glyphicon glyphicon-ok"></i></form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="product"><button class="special-icon btn btn-danger"><i class="glyphicon glyphicon-remove"></i></button></form>
</c:if>
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
<th><center>Date</center></th>
<th><center>Stats</center></th>
<th><center>Brand</center></th>
<th><center>Category</center></th>
<th><center>Supplier</center></th>
<th><center>Operation</center></th>
</tr>

<tr ng-repeat="p in plist | filter:searchkeyword | orderBy:orderkeyword : orderflag ">

<td><img src="resources/data/PRDT-{{p.productId}}.jpg" height="120px" width="120px" alt="img not uploaded"/></td>

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
<font style="color:red;" ng-if="p.disabled">Disabled</font>
<font style="color:green;" ng-if="!p.disabled">Active</font><br>
{{p.viewCount}} v<br>
{{p.rating}}/5 r<br>
</td>

<td>{{p.brand.brandName}}</td>

<td>
{{p.subCategory.subCategoryName}}<br>
({{p.category.categoryName}})
</td>

<td>{{p.supplier.supplierName}}</td>
<td>
<a href="updateproduct-{{p.productId}}"><button class="special-icon btn btn btn-info" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></button></a>
<a href="removeproduct-{{p.productId}}"><button class="special-icon btn btn btn-danger" data-toggle="tooltip" title="Delete"><i class="glyphicon glyphicon-trash"></i></button></a>
<a href="toggleproduct-{{p.productId}}" ng-if="!p.disabled"><button class="special-icon btn btn btn-warning" data-toggle="tooltip" title="Block"><i class="glyphicon glyphicon-ban-circle"></i></button></a>
<a href="toggleproduct-{{p.productId}}" ng-if="p.disabled"><button class="special-icon btn btnbtn-success" data-toggle="tooltip" title="Unblock"><i class="glyphicon glyphicon-ok-circle"></i></button></a>
</td>

</tr>
</table>
</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>