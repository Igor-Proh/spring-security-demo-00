<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

<form:form action="${pageContext.request.contextPath}/logout"
           method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>