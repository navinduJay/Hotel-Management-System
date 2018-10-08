<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "db1";
	String userid = "root";
	String password = "root";

	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {

		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: #009966;

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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"crossorigin="anonymous">
<link rel="stylesheet" href="./css/bootstrap.min.css">


<body>
<% session = request.getSession(); %>
<% String nic = (String)session.getAttribute("snic");%>
<% String name = (String)session.getAttribute("sname"); %>

<%if(nic!=null){ %> 
	<!--Header-->
	<nav class="navbar navbar-default navbar-fixed-top">

		<ul>
			<li><a href="index.html"><i class="fas fa-home"></i></a></li>


			<li><a href="about.html"><b>About</b></a></li>
			<li><a href="contactUs.html"><b>Contact Us</b> </a></li>
			<ul class="nav navbar-nav navbar-right">
				<li id="mylist"><a href="#">Welcome, <%=name %></a></li>
				<li id="mylist" style="padding-top:5px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form></li>
			</ul>
		</ul>
	</nav>

	<br>
	<br>
	<br>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Name</th>
				<th scope="col">ID</th>
				<th scope="col">Phone</th>
				<th scope="col">Email</th>
				<th scope="col">Room Type</th>
				<th scope="col">No of Rooms</th>
				<th scope="col">Adults</th>
				<th scope="col">Child</th>
				<th scope="col">Arrive Date</th>
				<th scope="col">Departure Date</th>
			</tr>

			<%
				try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from mrr";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
			%>
			<tr>
				<th scope="col"><%=resultSet.getString("cname")%></th>
				<th scope="col"><%=resultSet.getString("cid")%></th>
				<th scope="col"><%=resultSet.getString("cphone")%></th>
				<th scope="col"><%=resultSet.getString("cemail")%></th>
				<th scope="col"><%=resultSet.getString("roomt")%></th>
				<th scope="col"><%=resultSet.getString("nroom")%></th>
				<th scope="col"><%=resultSet.getString("adult")%></th>
				<th scope="col"><%=resultSet.getString("child")%></th>
				<th scope="col"><%=resultSet.getString("adate")%></th>
				<th scope="col"><%=resultSet.getString("ddate")%></th>
				<%
					String temp2 = resultSet.getString("cid");
				%>
				<th scope="col"><form action="room_delete" method="post">
						<input type="hidden" value=<%=temp2%> name="rid">
						<button type="submit" class="btn btn-danger">Delete</button>
					</form></th>
				<th scope="col"><form action="updateRoom.jsp" method="post">
						<input type="hidden" value=<%=temp2%> name="rid">
						<button type="submit" class="btn btn-success">Update</button>
					</form></th>
			</tr>
			<%
				}
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- Footer -->
	<footer class="footer-basic-centered">

		<p class="footer-company-motto">
			<b>Good food | Good Vibes</b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome Stylesheet in Header -->
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

	</footer>

	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/jquery-3.3.1.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

     <%}else{%>
    	<script type="text/javascript">
    	window.location.href = "http://localhost:8080/FinalITP/staffLogin.jsp";
    	</script>
    <%}%>
</body>
</html>