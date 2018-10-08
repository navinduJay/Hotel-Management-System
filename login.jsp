<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/customerlogin.css" rel="stylesheet">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link href="scss/anime.css" rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/sociel.css">
<link href="css/customStylesPM.css" rel="Stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="css/footer-basic-centered.css">
    <link href="css/customStylesPM.css" rel="Stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>
				<li><a href="about.html"><b>About</b></a></li>
				<li><a href="contactUs.jsp"><b>Contact Us</b> </a></li>
				<li><a href="rooms_.jsp"><b>Rooms </b> </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li style="padding-right: 40px"></li>
				<li style="padding-right:30px"></li>
			</ul>
		</div>
	</nav>
<br><br><br><br><br>
<h2 class=text-center>Login</h2><hr>
	<form class="form-horizontal" action="Login" method="post">
		<fieldset>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="user">Username</label>
				<div class="col-md-4">
					<input id="user" name="user" placeholder="Username" class="form-control input-md" required="" type="text">

				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password
				</label>
				<div class="col-md-4">
					<input id="password" name="password" placeholder="Password" class="form-control input-md" required="" type="password">

				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<button type="submit" id="button1id" name="button1id" class="btn btn-success">Login</button>
				</div>
			</div>

		</fieldset>
	</form>
	<hr>
	<div class="container">
	
	<form action="registration.jsp"><button id="button2id" type="submit" name="button2id" class="btn btn-warning">Register</button></form>
	</div>



	<footer class="footer-basic-centered" style="position:fixed">

	<p class="footer-company-motto">
		<b>Good Food | Good Vibes </b>
	</p>

	<section id="lab_social_icon_footer"> <!-- Include Font Awesome style sheet in Header -->
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
	<address>
		<small><font color="#989898">Tel : +94 112 078 517<br />
				Athurugiriya Rd,Sri Lanka.
		</font> </small>
	</address>

	<small><font color="#ffffff"> <b>Designed and
				Developed by 404 Solutions</b>
	</font> </small> </footer>
</body>
</html>