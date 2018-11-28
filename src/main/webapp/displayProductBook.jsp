<%@page import="com.demo.bean.ProductBook"%>
<%@page import="java.util.List"%>
<%@page language="java" isELIgnored="false"%>
<html>
<head>
    <title>Display</title>
</head>
<body>
	<h2>List of Products</h2><hr/>
	<table>
	   <tr>
	       <th>Id</th>
	       <th>Name</th>
	       <th>Description</th>
	       <th>Author ID</th>
	       <th>Price</th>
	   </tr>
	   <%
	    List<ProductBook> ProductList = (List<ProductBook>) request.getAttribute("ProductList");
	    for(ProductBook product: ProductList) {
	   %>
	        <tr>
	           <td><%= product.getId() %></td>
	           <td><%= product.getName() %></td>
	           <td><%= product.getDescription() %></td>
	           <td><%= product.getAuthorID() %></td>
	           <td><%= product.getPrice() %></td>
	       </tr>
	   <%
	    }
	   %>
	</table>
</body>
</html>