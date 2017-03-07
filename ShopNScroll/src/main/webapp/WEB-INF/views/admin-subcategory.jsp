<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="body-area container">

<br/><br/>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<button class="btn btn-info">SubCategory</button>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

<h1>Sub-Category Management</h1>
<form:form action="addsubcategory" modelAttribute="subCategory">

<form:input path="subCategoryId" hidden="true"/>

<form:input path="subCategoryName" placeholder="Name"/>
<form:errors path="subCategoryName"/>

<form:input path="subCategoryDescription" placeholder="Description"/>
<form:errors path="subCategoryDescription"/>

<form:select path="categoryId" items="${categoryList}" itemLabel="categoryName" itemValue="categoryId" />
<form:button>${btnLabel}</form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="subcategory"><input type="submit" value="Cancel" /></form>
</c:if>
</form:form>
<br/>

<table class="table">
<tr>
<th>Unique Id</th>
<th>Name</th>
<th>Description</th>
<th>Category</th>
<th>Operation</th>
</tr>
<c:forEach var="slist" items="${subCategoryList}">
<tr>
<td>${slist.subCategoryId}</td>
<td>${slist.subCategoryName}</td>
<td>${slist.subCategoryDescription}</td>
<td>${slist.category.categoryName}</td>
<td>
<a href="updatesubcategory-${slist.subCategoryId}"><button>Update</button></a>
<a href="removesubcategory-${slist.subCategoryId}"><button>Delete</button></a>
</td>
</tr>
</c:forEach>
</table>


</div>
<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>