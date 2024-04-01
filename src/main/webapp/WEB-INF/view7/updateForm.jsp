<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- ./ means current directory -->
</head>
<body background="https://th.bing.com/th/id/OIP.Gf_udaqiiFbBnM3qAG74UgHaEo?rs=1&pid=ImgDetMain">

	<div class="container mt-3" style={{color="#dce4eb"}}></div>

	<div class="row">
		<div class="col-md-6 offset-md-3">

			<h1 class="text-center mb-3">Change the product detail</h1>

			<form action="${pageContext.request.contextPath }/handle_Product" method="post">
			<input type="hidden" value="${product.id }"  name="id"/>

				<div class="form-group">
					<label for="name">Product Name</label> <input type="text"
						class="form-control" id="name" aria-describedby="emailHelp"
						name="name" placeholder="Enter product name here"
						value="${product.name }"
						>


				</div>



				<div class="form-group">
					<label for="description">Product Description</label>
					<textarea class="form-control" id="description" name="description"
						rows="5" placeholder="Enter the product description">${product.description}
						</textarea>
				</div>

				<div class="form-group">
					<label for="price">Product Price</label> <input type="text"
						class="form-control" id="price" name="price"
						placeholder="Enter product price" value="${product.price}">
				</div>

				<div class="container text-center">
					<a href="${pageContext.request.contextPath}/hm"
						class="btn btn-outline-danger">Back</a>

					<button type="submit" class="btn btn-warning">Update</button>
				</div>
			</form>
		</div>




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