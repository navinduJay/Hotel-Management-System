<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
body {
	
	background-image: url(gal.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1480px 820px;
	}

</style>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link href="scss/anime.css" rel="stylesheet">
<link rel="stylesheet" href="css/sociel.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<body>
<!--Header-->
	<nav class="navbar navbar-default navbar-fixed-top">

		<ul>
			<li><a href="index.html"><i class="fas fa-home"></i></a></li>


			<li><a href="about.html"><b>About</b></a></li>
			<li><a href="contactUs.html"><b>Contact Us</b> </a></li>
			<ul class="nav navbar-nav navbar-right">
				<li id="mylist"><button class="btn btn-success btn-lg">
						<i class="fas fa-user"></i>
					</button></li>
				<li id="mylist"><button class="btn btn-danger btn-lg">
						<i class="fas fa-user-tie"></i>
					</button></li>
			</ul>
		</ul>
	</nav>

<br> <br>
<br>
<br>
<br>
<form method="post" action="addgal" class="form-horizontal">

	<div class="text-center">
			
			<h4> Add Gallery </h4>
			</div>
			

<div class="form-group">
				<label class="col-md-4 control-label" for="gid">Gallery ID :</label>
				<div class="col-md-4">
					<input id="gid" name="gid" type="text" placeholder="EX:1" class="form-control input-md" required="">
</div>			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="gname">Gallery Type: </label>
				<div class="col-md-4">
					<input id="gname" name="gname" type="text" placeholder="WEDDING.." class="form-control input-md" required="">

				</div>
			</div>




			<div class="form-group">
				<label class="col-md-4 control-label" for="gdec">Gallery Description :</label>
				<div class="col-md-4">
					<input id="gdec" name="gdec" type="text" placeholder=""class="form-control input-md" required="">

				</div>
			</div>
			<div class="form-group">
			<label class="col-md-4 control-label" for="img1">Cover Image :</label> 
			<div class="col-md-4">
			<input id="img" name="img1" type="file"  class="form-control input-md">
			</div></div>
			
			<div class="form-group">
			<label class="col-md-4 control-label" for="img">Gallery Images :</label> 
			<div class="col-md-4">
			<input id="img" name="img" type="file" multiple class="form-control input-md">
			</div></div>
			
			<div class="form-group">
				<label class="col-md-8 control-label">
					<input class="btn btn-success" type="Submit" value="Submit">
					<input class="btn btn-danger" type="Reset" value="Reset"></label>
					</div>
					
			
			</form>
			
			<br><br><br><br>
	<!-- Footer -->
	<footer class="footer-basic-centered">

		<p class="footer-company-motto">
			<b>Good food | Good Vibes</b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome Stylesheet in Header -->
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
			<div class="container">
				<div class="text-center center-block">
					<a href="https://www.facebook.com/"><i id="social-fb"
						class="fa fa-facebook-square fa-3x social"></i></a> <a
						href="https://twitter.com/"><i id="social-tw"
						class="fa fa-twitter-square fa-3x social"></i></a> <a
						href="https://plus.google.com/"><i id="social-gp"
						class="fa fa-google-plus-square fa-3x social"></i></a> <a
						href="mailto:#"><i id="social-em"
						class="fa fa-envelope-square fa-3x social"></i></a>
				</div>
			</div>
		</section>


		<p class="footer-company-name">
			<b>Hotel Sujanee &copy; 2018</b>
		</p>

	</footer>
			

</body>
</html>