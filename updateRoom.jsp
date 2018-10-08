<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String rid = request.getParameter("rid");
	System.out.print(rid);
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
		String sql = "select * from mrr where cid=  '"+rid+"'";
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<title>Update Room</title>
<style>
body {
	
	background-image: url(back.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1480px 840px;
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


<link rel="stylesheet" href="./css/bootstrap.min.css"></head>
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
<BR><br><br>
<br>
<div class="text-center">
	<h3>Update Room Reservation Data</h3>
	</div>
	<form method="post" action="updateRoom" class="form-horizontal">
	
	<fieldset>
	
		<input type="hidden" name="rid" value="<%=resultSet.getString("cid")%>">
		
		
		
		<div class="form-group">
				<label class="col-md-4 control-label" for="c_Name">Customer
					Name :</label>
				<div class="col-md-4">
					<input id="c_Name" name="c_Name" type="text" placeholder=""
						value="<%=resultSet.getString("cname")%>" class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_id">Customer ID
					:</label>
				<div class="col-md-4">
					<input id="c_id" name="c_id" type="text" placeholder=""
						value="<%=resultSet.getString("cid")%>"  class="form-control input-md" required="">

				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="c_PhoneNum">Phone
					Number :</label>
				<div class="col-md-4">
					<input id="c_PhoneNum" name="c_PhoneNum" type="text" placeholder=""
					value="<%=resultSet.getString("cphone")%>"  class="form-control input-md" required="">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="c_Email">E - Mail
					:</label>
				<div class="col-md-4">
					<input id="c_Email" name="c_Email" type="email" placeholder=""
						value="<%=resultSet.getString("cemail")%>"  class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="Room_Type">Room
					Type :</label>
				<div class="col-md-2">
					<select id="Room_Type" name="Room_Type" value="<%=resultSet.getString("roomt")%>"  class="form-control">
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
					<select id="c_noRom" name="c_noRom" value="<%=resultSet.getString("nroom")%>"  class="form-control">
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
						<select id="c_adult" name="c_adult"value="<%=resultSet.getString("adult")%>"  class="form-control">
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
						<select id="c_child" name="c_child" value="<%=resultSet.getString("child")%>" class="form-control">
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
						<input id="c_Arrive" name="c_Arrive" type="date" placeholder="Click to select a Date"value="<%=resultSet.getString("adate")%>" class="form-control input-md" required="">
					</div>
				</div>
				

      <div class="form-group ">
				
					<label class="col-md-4 control-label" for="c_depature">Departure
						Date :</label>
					<div class="col-md-4">
						<input id="c_depature" name="c_depature" type="date" placeholder="Click to select a Date" value="<%=resultSet.getString("ddate")%>" class="form-control input-md" required="">
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
</body>
</html>