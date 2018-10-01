<%@page import="com.SaveDataStf"%>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<link href="css/customStylesPM.css" rel="Stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Schedule</title>
</head>
<body>

	<%SaveDataStf sd1 = (SaveDataStf)request.getAttribute("date");%>
	<%String date = sd1.getDate(); %>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Admin Dashboard</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">Dashboard</a></li>
					<li><a href="">Salary</a></li>
					<li><a href="">Reservation</a></li>
					<li><a href="">Expenses</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Welcome, </a></li>
					<li style="padding-top: 10px"><form action="logout.jsp"
							method="post">
							<button type="submit" class="btn btn-danger">Logout</button>
						</form></li>
				</ul>
			</div>
		</div>
	</nav>

	<header id="header">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<h1>
						<span aria-hidden="true"></span>Employees &nbsp;<small>Manage Employees</small>
					</h1>
				</div>

			</div>
		</div>
	</header>

	<section id="breadcrumb">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="profileStf.jsp">Dashboard</a></li>
				<li class="active">Users</li>
			</ol>
		</div>
	</section>

	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="profileStf.jsp" class="list-group-item active main-color-bg"> <span class="" aria-hidden="true"></span> Dashboard</a> 
							<a href="employees.jsp" class="list-group-item"><span class="" aria-hidden="true"></span> Employees </a> 
							<a href="posts.html" class="list-group-item"><span class="" aria-hidden="true"></span> Reservation</a> 
							<a href="" class="list-group-item"><span class="" aria-hidden="true"></span>Expenses</a>
					</div>


				</div>
				<div class="col-md-9">
					<!-- Website Overview -->
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">Users</h3>
						</div>
						<div class="panel-body">
							<div class="row">
							<form action="AddEvent" method="post">
								<table class="table table-striped table-hover">
									<tr>
										<th><p class="text-center">Event ID :</p></th>
										<th><input type="text" name="evid" style="width:300px" placeholder="Add a random number"></th>
									</tr>
									<tr>
										<th><p class="text-center">Date : </p></th>
										<th><input type="date" name="eventDate" value="<%=date%>" style="width:125px"> Starting Time : <input type="time" style="width:100px" name="startTime">  Ending Time : <input type="time" style="width:100px" name="endTime"></th>
									</tr>
									<tr>
										<th><p class="text-center">Event Name : </p></th>
										<th><input type="text" name="eventName" style="width:300px"></th>
									</tr>
									<tr>
										<th><p class="text-center">Description : </p></th>
										<th><textarea name="eventDescription" style="width:300px;height:100px" placeholder="Anything you want to keep about the event"></textarea></th>
									</tr>
									<tr>
										<th></th>
										<th><Button type="submit" class="btn btn-success">Submit</Button></th>
									</tr>
								</table>
							</form>
							</div>
							<hr>
						</div>
						<div class="row">
							<div class="col-md-12">
							<h3 class="text-center">Schedule</h3>
							</div>
						</div>
						<br>

						<table class="table table-striped table-hover">
							<tr>
								<th>Date</th>
								<th>Event</th>
								<th>Start Time</th>
								<th>End Time</th>
								<th>Description</th>
								<th></th>
							</tr>
							
							<%try{
 							Class.forName("com.mysql.jdbc.Driver");
 							Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
 							<%PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from calendar where eventDate='"+date+"'"); %>
 							<%ResultSet rs = ps.executeQuery();%>
 							
 							<%while(rs.next()){
 								String evId = rs.getString("eventID");
             					String evDate = rs.getString("eventDate");
             					String evStartTime = rs.getString("eventStartTime");
             					String evEndTime = rs.getString("eventEndTime");
             					String evName = rs.getString("eventName");
            					String evDesc = rs.getString("eventDescription");%>

 							<tr> 
								<th><%=evDate%></th>
								<th><%=evName%></th>
								<th><%=evStartTime%></th>
 								<th><%=evEndTime%></th>
 								<th><%=evDesc%></th> 
 								<th><form action="DeleteEvent" method="post"><input type="hidden" name="id" value="<%=evId%>"><button class="btn btn-danger" type=submit>Delete</button></form></th>
							</tr> 


							<%
							}
 							}catch (Exception e) {

 							}
							%>

 						</table>



					</div>
				</div>

			</div>
		</div>

	</section>

	<footer class="footer-basic-centered">

		<p class="footer-company-motto">
			<b>Good food | Good Vibes</b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome Stylesheet in Header -->

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



	<script>
     CKEDITOR.replace( 'editor1' );
 </script>


	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	
	


</body>
</html>