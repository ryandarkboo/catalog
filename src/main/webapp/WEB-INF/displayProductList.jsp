<%@page import="com.demo.bean.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" isELIgnored="false"%>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
	<h2>Account Holders</h2><hr/>
	<table>
	   <tr>
	       <td>Id</td>
	       <td>Registration ID</td>
	       <td>Balance</td>
	   </tr>
	   <%
	    List<Product> products = (List<Product>) request.getAttribute("ProductList");
	    for(Product product: Product) {
	   %>
	        <tr>
	           <td><%= accountHolder.getId() %></td>
	           <td><%= accountHolder.getRegistrationId() %></td>
	           <td><%= accountHolder.getBalance() %></td>
	       </tr>
	   <%
	    }
	   %>
	</table>
</body>
</html>
