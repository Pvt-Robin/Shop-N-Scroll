<!-- HEADER -->
<%@ include file="component-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<form:form >
<form:input path="firstName" placeholder="First NAME"/>
<form:input path="lastName" placeholder="Last Name"/>
<form:input path="dateOfBirth" placeholder="Date Of Birth"/>
<form:input path="contact" placeholder=""/>
<form:input path="gender" placeholder=""/>
<form:input path="username" placeholder=""/>
<form:input path="password" placeholder=""/>
<form:button>Submit</form:button>
</form:form>

<!-- FOOTER  -->
<%@ include file="component-footer.jsp" %>