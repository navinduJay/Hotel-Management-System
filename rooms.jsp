<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/rooms.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Rooms</title>
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
				<li><a href="rooms.jsp"><b>Rooms </b> </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li style="padding-right: 40px;padding-top :12px"><p id="demo"><a href="prfle.jsp">Welcome ,<%=name%></a></p></li>
				<li style="padding-right:30px;padding-top :9px"><form action="logout.jsp" method="post"><Button class="btn">Logout</Button></form></li>
			
			</ul>
		</div>
	</nav>
	<br><br><br><br>
<div align="center">
<form class="form-horizontal" action="Rooms" method="post">
<fieldset>

<!-- Form Name -->
<legend>Room Reservation</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="user">Name</label>  
  <div class="col-md-4">
  <input id="user" name="user" placeholder="Name" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Address">Address</label>  
  <div class="col-md-4">
  <input id="Address" name="Address" placeholder="Address" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Phone</label>  
  <div class="col-md-4">
  <input id="phone" name="phone" placeholder="Phone" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="id">ID Number</label>  
  <div class="col-md-4">
  <input id="id" name="id" placeholder="NIC" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" placeholder="Email" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="norooms">Number of Rooms</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="norooms-0">
      <input name="norooms" id="norooms-0" value="1" checked="checked" type="radio">
      1
    </label> 
    <label class="radio-inline" for="norooms-1">
      <input name="norooms" id="norooms-1" value="2" type="radio">
      2
    </label> 
    <label class="radio-inline" for="norooms-2">
      <input name="norooms" id="norooms-2" value="3" type="radio">
      3
    </label> 
    <label class="radio-inline" for="norooms-3">
      <input name="norooms" id="norooms-3" value="4" type="radio">
      4
    </label> 
    <label class="radio-inline" for="norooms-4">
      <input name="norooms" id="norooms-4" value="5" type="radio">
      5
    </label>
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="type">Room type</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="type-0">
      <input name="type" id="type-0" value="Deluxe" type="checkbox">
      Deluxe
    </label>
	</div>
  <div class="checkbox">
    <label for="type-1">
      <input name="type" id="type-1" value="Standard" type="checkbox">
      Standard
    </label>
	</div>
  <div class="checkbox">
    <label for="type-2">
      <input name="type" id="type-2" value="Family" type="checkbox">
      Family
    </label>
	</div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Adate">Arrival Date</label>  
  <div class="col-md-4">
  <input id="Adate" name="Adate" placeholder="" class="form-control input-md" required="" type="date">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Ddate">Departure Date</label>  
  <div class="col-md-4">
  <input id="Ddate" name="Ddate" placeholder="" class="form-control input-md" required="" type="date">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="descrip">Description</label>  
  <div class="col-md-4">
  <input id="descrip" name="descrip" placeholder="Description" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" type="submit" name="singlebutton" class="btn btn-primary">Reserve</button>
  </div>
</div>



<!-- Multiple Radios (inline) -->


</fieldset>
</form>
</div>	
	<footer class="footer-basic-centered">

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
<%}else{%>
    	<script type="text/javascript">
    	window.location.href="http://localhost:8080/FinalITP/login.jsp";
    	</script>
<%} %>
</html>