<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<div class="body-content">

<div class="body-area container">

<br/><br/>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<button class="btn btn-info">Products</button><br/>

<h1>Product Management</h1>
<form:form action="addproduct" modelAttribute="product" enctype="multipart/form-data">

<form:input path="productId" hidden="true"/>

<form:input path="productName" placeholder="Name"/>
<form:errors path="productName"/>

<form:input path="description" placeholder="Description"/>
<form:errors path="description"/>

<form:input path="actualPrice" placeholder="Original Price"/>
<form:errors path="actualPrice"/>

<form:input path="finalPrice" placeholder="Final Price"/>
<form:errors path="finalPrice"/>

<form:input path="color" placeholder="Color"/>
<form:errors path="color"/>

<form:input path="size" placeholder="Size"/>
<form:errors path="size"/>

<form:input path="madeCountry" placeholder="Country"/>
<form:errors path="madeCountry"/>

<form:input path="stock" placeholder="Stock"/>
<form:errors path="stock"/>

<form:input type="file" path="productImage"/>

<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId"/>
<form:select path="subCategoryId" items="${subCategoryList}" itemLabel="subCategoryName" itemValue="subCategoryId" />
<form:select path="brandId" items="${brandList}" itemLabel="brandName" itemValue="brandId" />
<form:select path="supplierId" items="${supplierList}" itemLabel="supplierName" itemValue="supplierId" />

<form:button>${btnLabel}</form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="product"><input type="submit" value="Cancel" /></form>
</c:if>
</form:form>
<br/>

<table class="table">
<tr>
<th>Unique Id</th>
<th>Name</th>
<th>Description</th>
<th>Actual Price</th>
<th>Final Price</th>
<th>Color</th>
<th>Size</th>
<th>Made Country</th>
<th>Stock</th>
<th>Operations</th>

</tr>
<c:forEach var="plist" items="${productList}">
<tr>
<td>${plist.productId}</td>
<td>${plist.productName}</td>
<td>${plist.description}</td>
<td>${plist.actualPrice}</td>
<td>${plist.finalPrice}</td>
<td>${plist.color}</td>
<td>${plist.size}</td>
<td>${plist.madeCountry}</td>
<td>${plist.stock}</td>
<td>
<a href="updateproduct-${plist.productId}"><button>Update</button></a>
<a href="removeproduct-${plist.productId}"><button>Delete</button></a>
</td>
</tr>
</c:forEach>
</table>

</div>
</div>
<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>