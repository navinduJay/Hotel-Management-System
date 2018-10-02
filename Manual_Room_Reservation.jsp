<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manual Room</title>
<style>
body {
	
   
}
</style>

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


<link rel="stylesheet" href="./css/bootstrap.min.css">
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

	<form method="post" action="m_room" class="form-horizontal">


		<fieldset>
<br>
<br>
<br>
			<div class="text-center">
			
			<h4> Manual Room Reservation </h4>
			</div>
			

<br>
			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder=""
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder=""
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="Room_Type">Room
					Type :</label>
				<div class="col-md-2">
					<select id="Room_Type" name="Room_Type" class="form-control">
						<option value="Single">Single</option>
						<option value="Double">Double</option>
						<option value="Triple">Triple</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_noRom">Number
					of Rooms :</label>
				<div class="col-md-2">
					<select id="c_noRom" name="c_noRom" class="form-control">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_adult">Adults
						:</label>
					<div class="col-md-2">
						<select id="c_adult" name="c_adult" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
					</div>
					
					<div class="form-group ">
					<label class="col-md-4 control-label" for="c_child">Child :</label>
					<div class="col-md-2">
						<select id="c_child" name="c_child" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
				</div>
			
			
			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_Arrive">Arrive
						Date :</label>
					<div class="col-md-4">
						<input id="c_Arrive" name="c_Arrive" type="date" placeholder="Click to select a Date"class="form-control input-md" required="">
					</div>
				</div>
				

      <div class="form-group ">
				
					<label class="col-md-4 control-label" for="c_depature">Departure
						Date :</label>
					<div class="col-md-4">
						<input id="c_depature" name="c_depature" type="date" placeholder="Click to select a Date" class="form-control input-md" required="">
					</div>
				</div>
				
				

				<div class="form-group">
				<label class="col-md-8 control-label">
					<input class="btn btn-success" type="Submit" value="Submit">
					<input class="btn btn-danger" type="Reset" value="Reset"></label>
				</div>

		</fieldset>
	</form>
	
	<br>
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

	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/jquery-3.3.1.js"></script>
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>