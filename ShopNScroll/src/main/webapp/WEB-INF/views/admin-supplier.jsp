<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="body-area container">

<br/><br/>
<button class="btn btn-info">Suppliers</button>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<a href="brand" ><button class="btn btn-warning">Brand</button></a>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

<h1>Supplier Management</h1>
<form:form action="addsupplier" modelAttribute="supplier">
<form:input path="supplierId" hidden="true"/>
<form:input path="supplierName" placeholder="Name"/>
<form:input path="supplierFirmName" placeholder="Firm Name"/>
<form:input path="supplierDescription" placeholder="Description"/>
<form:input path="supplierLandmark" placeholder="Landmark"/>
<form:input path="supplierStreet" placeholder="Street"/>
<form:input path="supplierCity" placeholder="City"/>
<form:input path="supplierState" placeholder="State"/>
<form:input path="supplierCountry" placeholder="Country"/>
<form:input path="supplierEmail" placeholder="Email"/>
<form:input path="supplierContact" placeholder="Contact"/>
<form:input path="supplierDisabled" placeholder="Disabled (yes/no)"/>

<form:button>${btnLabel}</form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="supplier"><input type="submit" value="Cancel" /></form>
</c:if>

</form:form>
<br/>

<table class="table">
<tr>
<th>Unique Id</th>
<th>Supplier Name</th>
<th>Firm Name</th>
<th>Description</th>
<th>Landmark</th>
<th>Street</th>
<th>City</th>
<th>State</th>
<th>Country</th>
<th>Contact</th>
<th>Email</th>
<th>Active</th>
<th>Operations</th>

</tr>
<c:forEach var="suplist" items="${supplierList}">
<tr>
<td>${suplist.supplierId}</td>
<td>${suplist.supplierName}</td>
<td>${suplist.supplierFirmName}</td>
<td>${suplist.supplierDescription}</td>
<td>${suplist.supplierLandmark}</td>
<td>${suplist.supplierStreet}</td>
<td>${suplist.supplierCity}</td>
<td>${suplist.supplierState}</td>
<td>${suplist.supplierCountry}</td>
<td>${suplist.supplierEmail}</td>
<td>${suplist.supplierContact}</td>
<td>${suplist.supplierDisabled}</td>
<td>
<a href="updatesupplier-${suplist.supplierId}"><button>Update</button></a>
<a href="removesupplier-${suplist.supplierId}"><button>Delete</button></a>
<a href="supplieractivatetoggle-${suplist.supplierId}"><button>Activate/Deactivate</button></a>
</td>
</tr>
</c:forEach>
</table>

</div>

<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>