<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/customerlogin.css" rel="stylesheet">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link href="scss/anime.css" rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/sociel.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Register</title>
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
				<li style="padding-right: 75px"><p id="demo"><a href="login.jsp" role="button" class="btn">Login</a>
					</p></li>
				<br>

			</ul>
		</div>
	</nav>
	<br><br>
	<h2 class="text-center">Register</h2>
	<hr>
	<form class="form-horizontal" action="Registration" method="post">
		<fieldset>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Name</label>
				<div class="col-md-4">
					<input id="name" name="name" placeholder="Full name" class="form-control input-md" required="" type="text">
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="user">Username</label>
				<div class="col-md-4">
					<input id="user" name="user" placeholder="Username" class="form-control input-md" required="" type="text">
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password</label>
				<div class="col-md-4">
					<input id="password" name="password" placeholder="Password" class="form-control input-md" required="" type="password">
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="repassword">Re-enter Password </label>
				<div class="col-md-4">
					<input id="repassword" name="repassword" placeholder="Re-enter Password " class="form-control input-md" required="" type="password">
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nic">NIC</label>
				<div class="col-md-4">
					<input id="nic" name="nic" placeholder="NIC" class="form-control input-md" required="" type="text">
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="address">Address</label>
				<div class="col-md-4">
					<input id="address" name="address" placeholder="Address" class="form-control input-md" required="" type="text">
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="phone">Phone</label>
				<div class="col-md-4">
					<input id="phone" name="phone" placeholder="Phone" class="form-control input-md" type="text">
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email</label>
				<div class="col-md-4">
					<input id="email" name="email" placeholder="Email" class="form-control input-md" type="email">
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="gender">Gender</label>
				<div class="col-md-4">
					<select id="gender" name="gender" class="form-control">
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<input type="submit" id="button1id" name="button1id" value="Register" class="btn btn-success"> 
					<input type="reset" id="button2id" value="Reset" name="button2id" class="btn btn-danger">
				</div>
			</div>

		</fieldset>
	</form>

	<!-- Footer -->
	<footer class="footer-basic-centered">

		<p class="footer-company-motto">
			<b>Good Food | Good Vibes </b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome style sheet in Header -->
			<link
				href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
				rel="stylesheet">
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
		</font> </small>

	</footer>




</body>
</html>