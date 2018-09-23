<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<form method="POST" action="addgal">
		<div class="container">

			<div class="jumbotron">
				<h5 class="display-6">Add Gallery</h5>
				<hr class="my-4">



				<label class="col-md-2 control-label" for="gal_id">Gallery ID :</label> 
				<input id="gal_id" name="gal_id" type="text" placeholder="Ex : A1" required=""> 
					
					<label class="col-md-2 control-label" for="gal_name">Gallery Name:</label> 
					<input id="gal_name" name="gal_name" type="text" placeholder="EX : Party" required=""> 
					<br>
					
					<label class="col-md-4 control-label" for="textarea"> Gallery Description :</label>
					<div class="col-md-4">
					<textarea class="form-control" id="gallery_dec" name="gallery_dec"></textarea>
<br>
<br>

					Image  :<input type="file" id="image" name="Image" multiple> 
					
					<div class="form-row">
						<div class="form-group col-md-4">
							<input class="btn btn-success" type="submit" value="Add">
						</div>
						<div class="form-group col-md-6">
							<input class="btn btn-danger" type="reset" value="Reset">
						</div>

					</div>

				</div>
			</div>
	</form>
	<script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery-3.3.1.js"></script>

</body>
</html>