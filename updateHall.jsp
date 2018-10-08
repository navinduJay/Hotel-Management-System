<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String tid = request.getParameter("tid");
	System.out.print(tid);
	String driver = "com.mysql.jdbc.Driver";
	
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1" , "root", "root");
		statement = connection.createStatement();
		String sql = "select * from mhr where id =  '"+tid+"'";
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<title>Update Room</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"><meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	
	background-image: url(back.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1480px 820px;
	}</style>
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
					</button></li></ul></ul></nav>
					
					<br><br><br>

<div class="text-center">
	<h3>Update hall Reservation Data</h3>
	</div>
	<form method="post" action="updateHall" class="form-horizontal">


		<fieldset>

			<div class="text-center">
				<legend> Manual Hall Reservation</legend>
			</div>
			<legend> </legend>

			<input type="hidden" name="tid" value="<%=resultSet.getString("id")%>">

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
					value="<%=resultSet.getString("name")%>"
						class="form-control input-md" required="">

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
					value="<%=resultSet.getString("id")%>"
						class="form-control input-md" required="">

				</div>
			</div>




			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder="" value="<%=resultSet.getString("phone")%>"
						class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder="" value="<%=resultSet.getString("email")%>"
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="hall_Type">Hall
					Type :</label>
				<div class="col-md-2">
					<select id="hall_Type" name="hall_Type" class="form-control" value="<%=resultSet.getString("hallt")%>">
						<option value="AC Hall">AC Hall</option>
						<option value="Non AC Hall">Non AC Hall</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_adult" ">Adults
						:</label>
					<div class="col-md-2">
						<input id="c_adult" name="c_adult" type="text" placeholder="" value="<%=resultSet.getString("adult")%>"
							class="form-control input-md" required="">


					</div>

				
				</div>

<div class="form-group">
				
					<label class="col-md-4 control-label" for="c_child" >Child :</label>
					<div class="col-md-2">
						<input id="c_child" name="c_child" type="text" placeholder="" value="<%=resultSet.getString("child")%>"
							class="form-control input-md" required="">
					
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="func_type" >Function
					Type :</label>
				<div class="col-md-4">
					<input id="func_type" name="func_type" type="text" placeholder="" value="<%=resultSet.getString("funct")%>"
						class="form-control input-md" required="">

				</div>
			</div>



			<div class="form-group ">
				<label class="col-md-4 control-label" for="c_func">Function
					Date :</label>
				<div class="col-md-4">
					<input id="c_func" name="c_func" type="date" placeholder=""  value="<%=resultSet.getString("funcd")%>"
						class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-8 control-label">
					<input class="btn btn-success" type="Submit" value="Submit">
					<input class="btn btn-danger" type="Reset" value="Reset"></label>
				</div>

		</fieldset>
	</form>
	<%
		}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<br>
		<br>
		<br><br>
		<br><br>
		
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