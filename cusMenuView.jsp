<%@page import = "java.sql.DriverManager" %>

<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.util.Base64" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Stock Management</title>

 <link href="cssNavindu/bootstrap.min.css" rel="stylesheet">

  
   <link href="cssNavindu/inventoryStyles.css" rel="stylesheet">

     <link rel="stylesheet" href="cssNavindu/aos-master/dist/aos.css" />
   <link rel="stylesheet" href="cssNavindu/sociel.css">
   <link rel="stylesheet" href="cssNavindu/animate.min.css">
    <link rel="stylesheet" href="cssNavindu/menuValidationCSS.css">
   <link rel="stylesheet" href="cssNavindu/modalCSS.css">
   <link rel="stylesheet" href="cssNavindu/footer-basic-centered.css">
   <link rel="stylesheet" href="cssNavindu/menuManagement.css">
    <link rel="stylesheet" href="cssNavindu/menuManagementNavBar.css">
     <link rel="stylesheet" href="cssNavindu/packageCSS.css">






   <script src="jsNavindu/ie-emulation-modes-warning.js"></script>


    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="jsNavindu/myJS.js"></script>


   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >

<style>
#ex{

	 border-radius: 25px;

}


</style>

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
            <li> <a href="contactUs.jsp"><b>Contact Us</b> </a></li>
             <li> <a href="rooms.jsp"><b>Rooms </b> </a></li>
             <li> <a href="cusMenuView.jsp"><b>Our Menu</b> </a></li>
           
            </ul>
            <ul class="nav navbar-nav navbar-right">
				<li style="padding-right: 40px;padding-top :12px"><p id="demo"><a href="prfle.jsp">Welcome ,<%=name%></a></p></li>
				<li style="padding-right:30px;padding-top :9px"><form action="logoutuser.jsp" method="post"><Button class="btn">Logout</Button></form></li>
			</ul>
	</div>
 

    </nav>
      <!--Nav Bar-->

      <br><br>
      <div class="container-fluid">
      <div class="row">

      	<div class = "col-md-1">

	<img src="img/food.png" height="150" width="150">

		</div>

      <div class = "col-md-4">

	<img src="img/food.png" height="150" width="150">

		</div>

		   <div class = "col-md-1">

	<img src="img/food.png" height="150" width="150">

		</div>

		   <div class = "col-md-4">

	<img src="img/food.png" height="150" width="150">

		</div>

      	   <div class = "col-md-1">

	<img src="img/food.png" height="150" width="150">

		</div>

		   <div class = "col-md-1">

	<img src="img/food.png" height="150" width="150">

		</div>


      </div>
</div>
      <div class = "container">




      		 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" data-aos="fade-right">

					<div id="ex" class="box-part text-center">

                        <img src="img/regg.jpg"  height="200" width="230"/>

						<div class="title">
							<h2 style="font-family:Courier New"><b>REGULAR MENU</b></h2>
						</div>

						<div class="text">
							<h3><span></span></h3>
						</div>

						<a href="regularMenuCustomer.jsp" class="btn btn-success" role="button">More Info</a>

					 </div>
				</div>


      		 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" data-aos="fade-down">

					<div id="ex" class="box-part text-center">

                       <img src="img/pizz.jpg"  height="200" width="230"/>

						<div class="title">
							<h2 style="font-family:Courier New"><b>CATERING MENU</b></h2>
						</div>

						<div class="text">
							<h3><span></span></h3>
						</div>

						<a href="cateringMenuCustomer.jsp" class="btn btn-success" role="button">More Info</a>

					 </div>
				</div>


      		 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" data-aos="fade-down">

					<div id="ex" class="box-part text-center">

                            <img src="img/hall.jpg"  height="200" width="230"/>

						<div class="title">
							<h2 style="font-family:Courier New"><b>HALL MENU</b></h2>
						</div>

						<div class="text">
							<h3><span></span></h3>
						</div>

						<a href="hallMenuCustomer.jsp" class="btn btn-success" role="button">More Info</a>

					 </div>
				</div>

				 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" data-aos="fade-left">

					<div id="ex" class="box-part text-center">

                       <img src="img/pizz.jpg" height="200" width="230"/>

						<div class="title">
							<h2 style="font-family:Courier New"><b>PACKAGES</b></h2>
						</div>

						<div class="text">
							<h3><span></span></h3>
						</div>

						<a href="packagesView.jsp" class="btn btn-success" role="button">More Info</a>

					 </div>
				</div>









      </div>















         <!-- Footer -->
    <footer class="footer-basic-centered">

			<p class="footer-company-motto"><b>Good Food | Good Vibes </b></p>

            <section id="lab_social_icon_footer">
                    <!-- Include Font Awesome style sheet in Header -->
                    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
                    <div class="container">
                            <div class="text-center center-block">
                                    <a href="https://www.facebook.com/"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                                    <a href="https://twitter.com/"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                                    <a href="https://plus.google.com/"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
                                    <a href="mailto:#"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
                        </div>
                    </div>
                    </section>


			<p class="footer-company-name"><b>Hotel Sujanee &copy; 2018</b></p>
			 <address>
				<small><font color="#989898">Tel : +94 112 078 517<br />
				Athurugiriya Rd,Sri Lanka.</font>
				</small>
			</address>

			<small><font color="#ffffff">
					<b>Designed and Developed by 404 Solutions</b>
				</font>
				</small>

		</footer>


<script type="text/javascript" src="jsNavindu/bootstrap-filestyle.min.js"> </script>
<script src="jsNavindu/menuManagementJS.js"></script>



<script src="cssNavindu/aos-master/dist/aos.js"></script>
<script src="jsNavindu/bootstrap.min.js"></script>
<script src="jsNavindu/inventoryJS.js"></script>
       <script  type="text/javascript">

	AOS.init({

		duration: 1000,

	});
</script>
<%}else{%>
    	<script type="text/javascript">
    	window.location.href="http://localhost:8080/FinalITP/login.jsp";
    	</script>
<%} %>

</body>
</html>
