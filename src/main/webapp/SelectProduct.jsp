<%@ page language="java" isELIgnored="false"%>
<html>
<head>
<title>Catalog</title>
</head>
<body>
	<label>Select Catalog</label>
	<br />
	<a href="${pageContext.servletContext.contextPath}/flower" method="post">Flower Catalog</a>
	<a href="${pageContext.servletContext.contextPath}/book" method="post">Book Catalog</a>
	<a href="${pageContext.servletContext.contextPath}/toy" method="post">Toy Catalog</a>

</body>
</html>