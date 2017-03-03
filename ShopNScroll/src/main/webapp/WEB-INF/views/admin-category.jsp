<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="body-area container">

<br/><br/>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<button class="btn btn-info">Category</button>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

<h1>Category Management</h1>
<form:form action="addcategory" modelAttribute="category">
<form:input path="categoryId" hidden="true"/>
<form:input path="categoryName" placeholder="Name"/>
<form:input path="categoryDescription" placeholder="Description"/>
<form:button>${btnLabel}</form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="category"><input type="submit" value="Back" /></form>
</c:if>
</form:form>
<br/>

<table class="table">
<tr>
<th>Unique Id</th>
<th>Name</th>
<th>Description</th>
<th>Operation</th>
</tr>
<c:forEach var="clist" items="${categoryList}">
<tr>
<td>${clist.categoryId}</td>
<td>${clist.categoryName}</td>
<td>${clist.categoryDescription}</td>
<td>
<a href="updatecategory-${clist.categoryId}"><button>Update</button></a>
<a href="removecategory-${clist.categoryId}"><button>Delete</button></a>
</td>
</tr>
</c:forEach>
</table>

</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>