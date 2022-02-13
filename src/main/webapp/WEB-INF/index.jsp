<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Fruity Loops</title>
</head>
<body>
	<div class="container">
		<h1>Fruit Store</h1>
		<table class="table  bg-secondary text-light">
				<tbody>
					<tr class="bg-light text-black">
						<th>Name</th>
						<th>Price</th>
					</tr>
					<c:forEach var="fruit" items="${myfruits}">
					<tr class="bg-dark text-white">
						<td><c:out value="${fruit.name}"/></td>
						<td><c:out value="${fruit.price}"/></td>
					</tr>
					</c:forEach>
				</tbody>				
		</table>
	</div>
</body>
</html>