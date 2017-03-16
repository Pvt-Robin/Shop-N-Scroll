<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>

<div class="main-login col-xs-0 col-sm-0 col-md-4 col-lg-4">
<%-- <form:form action="perform_login"> --%>
<%-- <form:input path="username"/> --%>
<%-- <form:input path="password"/> --%>
<%-- <form:button>Login</form:button> --%>
<%-- </form:form> --%>

<form action="perform_login" method="post">
<center>
<input type="text" name="username"/><br>
<input type="text" name="password"/><br>
<input type="submit"/>
</center>
</form>

</div>

<div class="col-xs-0 col-sm-0 col-md-4 col-lg-4"></div>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>