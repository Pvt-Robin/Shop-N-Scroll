<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="body-area container">
<h1>HOME</h1>

<div class="row">
<c:forEach items="${categoryList}" var="clist">
<div class="col-md-2">
<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">${clist.categoryName}</button>
<ul class="dropdown-content">
<c:forEach items="${clist.subCategory}" var="slist">
<li>${slist.subCategoryName}</li>
</c:forEach>
</ul>
</div>
</c:forEach>
</div>

</div>
<!-- BASE -->
<%@ include file="component-base.jsp" %>
<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>