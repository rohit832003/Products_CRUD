<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored = "false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-...." crossorigin="anonymous">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>${title}</title>
</head>
 <body background="https://th.bing.com/th/id/OIP.TyYGJ1AHoTaAwKb5QioiAwHaEK?rs=1&pid=ImgDetMain">
<div class="container mt-3">
<div class="row">
<div class="col-md-12"></div>
<h1 class="text-center mb-3">Welcome to Product App</h1>
<table class="table">
<thead class="thead-dark">
<tr>
<th scope="col">ID</th>
<th scope="col">Product Name</th>
<th scope="col">Description</th>
<th scope="col">Price</th>
<th scope="col">Action</th>
</tr>
</thead>
<c:forEach items="${products}" var="p">
<tr>
<th scope="row">${p.id}</th>
<td>${p.name }</td> <td>${p.description }</td>
<td>${p.price }</td>
<td>
<%-- <a href="delete/${p.id }">delete</a> --%>
<a href="delete/${p.id}"><i class="fa-solid fa-trash-can"></i></a>
<a href="update/${p.id}"><i class="fa-solid fa-pen"></i></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<button type="submit"  class="btn btn-outline-success">Add Product</button>
<button onclick="history.back()"  class="btn btn-danger">Back</button>
</div>


	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>