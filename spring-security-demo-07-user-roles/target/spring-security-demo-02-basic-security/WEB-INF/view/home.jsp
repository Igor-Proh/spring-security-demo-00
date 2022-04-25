<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Company Home Page</title>
</head>
<body>
<h2>Home Page</h2>
<hr>
<p>
    Welcome to Home Page !!!
</p>
<hr>
<p>
    <!-- Display user name and role -->
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s):<security:authentication property="principal.authorities"/>
</p>
<hr>
<security:authorize access="hasRole('MANAGER')">

<!-- Add a links-->
<p>
    <a href="${pageContext.request.contextPath}/leaders"> Leadership Meeting</a>
    (Only for Manager peeps)
</p>

</security:authorize>

<security:authorize access="hasRole('ADMIN')">

<p>
    <a href="${pageContext.request.contextPath}/systems"> IT Systems Meeting</a>
    (Only for Admin peeps)
</p>

<hr>
</security:authorize>

<!-- Add logout button-->
<form:form action="${pageContext.request.contextPath}/logout"
           method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>