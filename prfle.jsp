<%@page import = "java.sql.*" %>
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
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
  <% session = request.getSession(); %>
  <% String name = (String)session.getAttribute("name"); %>
  
  <%if(name != null){ %>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>
				<li><a href="about.html"><b>About</b></a></li>
				<li><a href="contactUs.jsp"><b>Contact Us</b> </a></li>
				<li><a href="rooms_.jsp"><b>Rooms </b> </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li style="padding-right: 40px"><p id="demo"><a href="login.jsp">Welcome ,<%=name%></a></p></li>
				<li style="padding-right:30px"><form action="logout.jsp" method="post"><Button>Logout</Button></form></li>
				<br>

			</ul>
		</div>
	</nav>
	<br><br><br><br>
<div class="container">
	<div class="updateLeft" >
	<h2>Profile</h2>
	<br><br>
	<%String nic = null, fullname = null, address= null, phone = null, email = null ,gender = null; %>
	<%try{
			
 			Class.forName("com.mysql.jdbc.Driver");
 			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sakila", "root", "root");%>
			<%PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from registration where name=('"+name+"')"); %>
			
			<%ResultSet rs = ps.executeQuery();%>
			<%while(rs.next()){
				nic = rs.getString("NIC");
				fullname = rs.getString("fname");
				address = rs.getString("Address");
				phone = rs.getString("Phone");
				email = rs.getString("Email");
				gender = rs.getString("Gender");
				}%>
			

		<table class="table">
			<tr>
				<td class="text-center">NIC :</td>
				<td><%=nic%></td>
			</tr>
			<tr>
				<td class="text-center">Full Name  :</td>
				<td><%=fullname%></td>
			</tr>
			<tr>
				<td class="text-center">Address :</td>
				<td><%=address%></td>
			</tr>
			<tr>
				<td class="text-center">Phone :</td>
				<td><%=phone%></td>
			</tr>
			<tr>
				<td class="text-center">Email :</td>
				<td><%=email%></td>
			</tr>
			<tr>
				<td class="text-center">Gender :</td>
				<td><%=gender%></td>
			</tr>

			<%
			} catch (Exception e) {
				
			}%>
		</table>
	</div>

	
	<div class="updateRight">
	<h2>Edit Details</h2><br>
		<form class="form-horizontal" action="UpdateDetails" method="post">
		<input type="hidden" name="username" value="<%=name%>">
			<table class="table">
			  <thead>
				<tr>
					<th></th>
					<th scope="col">Full name</th>
					<th scope="col"><input id="fullname" name="fullname" value="<%=fullname%>" placeholder="" class="form-control input-md" type="text"></th>
				</tr>
				</thead>
				<thead>
				<tr>
					<th></th>
					<th scope="col">Address</th>
					<th scope="col"><input id="address" name="address" value="<%=address%>" placeholder="" class="form-control input-md" type="text"></th>
				</tr>
				</thead>
				<thead>
				<tr>
					<th></th>
					<th scope="col">Phone</th>
					<th scope="col"><input id="phone" name="phone" value="<%=phone%>" placeholder="" class="form-control input-md" type="text"></th>
				</tr>
				</thead>
				<thead>
				<tr>
					<th></th>
					<th scope="col">Email</th>
					<th scope="col"><input id="email" name="email" value="<%=email%>" placeholder="" class="form-control input-md" type="text"></th>
				</tr>
				</thead>
				<thead>
				<tr>
					<th></th>
					<th scope="col"></th>
					<th scope="col"><Button type=submit id="" name="" class="btn btn-info">Update</Button></th>
					<th scope="col"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deletemodal">Delete profile</button></th>
				</tr>
				</thead>
				
			</table>
		</form>
			<div id="deletemodal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Sujanee City Hotel</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="DeleteUser" method="post">
								<fieldset>
									<!-- Form Name -->
									<h1 class=reg>Confirm..</h1>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="tnic"></label>
										<div class="col-md-4">
											<input id="tnic" name="uname" class="form-control input-md"
												type="hidden" value="<%=name%>"> <span
												class="help-block">Are you sure you want to delete?</span>
										</div>
									</div>

									<!-- Button -->
									<div class="form-group">
										<label class="col-md-4 control-label" for="btn"></label>
										<div class="col-md-4">
											<button id="btn" name="btn" class="btn btn-danger"
												type="submit">Delete</button>
										</div>
									</div>

								</fieldset>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
</div>

<!-- profile Delete confirmation modal -->



<br><br>
	<!-- Footer -->
	<footer class="footer-basic-centered" style="position:fixed">

		<p class="footer-company-motto">
			<b>Good Food | Good Vibes </b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome style sheet in Header -->
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
<script src="bootstrap.min.js"></script>
<%}else{%>
    	<script type="text/javascript">
    	window.location.href="http://localhost:8080/ITPNisal/login.jsp";
    	</script>
<%} %>
</html>