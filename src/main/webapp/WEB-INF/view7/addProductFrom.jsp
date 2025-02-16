<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored = "false" %>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>${title}</title>
</head>
<body background="https://static.vecteezy.com/system/resources/previews/002/205/527/large_2x/abstract-blurred-gradient-mesh-background-in-bright-colorful-smooth-easy-editable-soft-colored-illustration-suitable-for-wallpaper-banner-background-card-book-illustration-landing-page-free-vector.jpg" >
	<form action="handle_Product">
		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label> <input
				type="text" class="form-control" id="name"  name="name"
				aria-describedby="emailHelp" placeholder="Enter name" value=${title}>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Product Description</label> <input
				type="text" class="form-control" id="description" name="description"
				placeholder="about 2 lines...">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Product Price</label> <input
				type="text" class="form-control" id="price" name="price"
				placeholder="Enter the price...">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	<button onclick="history.back()"  class="btn btn-danger">Back</button>
	

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