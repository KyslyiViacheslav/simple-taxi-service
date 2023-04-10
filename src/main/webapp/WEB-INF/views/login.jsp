<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<%@include file="header.jsp" %>
<body>
<h2>Login Page:</h2>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter login: <input type="text" name="login" required>
    Please enter password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<div class="container">
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</div>
</body>
</html>
