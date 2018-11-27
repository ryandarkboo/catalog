<%@ page language="java" isELIgnored="false"%>
<html>
<head>
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<div>
	<form action="${pageContext.servletContext.contextPath}/Login" method="POST">
	<label> Username: </label>
	<input type="text" name="username">
	<br />
	<label> password: </label>
	<input type="password" name="password">
	<br />
	<input type="submit" name="Login">
	</div>
	</form>
</body>
</html>
