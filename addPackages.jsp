<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Add Packages</title>
</head>



 <link href="cssNavindu/bootstrap.min.css" rel="stylesheet">

   <link href="cssNavindu/menuManagementBackground.css" rel="stylesheet">
   <link href="cssNavindu/inventoryStyles.css" rel="stylesheet">
   
    
    
     <link rel="stylesheet" href="cssNavindu/aos-master/dist/aos.css" />
   <link rel="stylesheet" href="cssNavindu/sociel.css">
   <link rel="stylesheet" href="cssNavindu/animate.min.css">
    <link rel="stylesheet" href="cssNavindu/menuValidationCSS.css">
   <link rel="stylesheet" href="cssNavindu/modalCSS.css">
   <link rel="stylesheet" href="cssNavindu/footer-basic-centered.css">
   <link rel="stylesheet" href="cssNavindu/menuManagement.css">
    <link rel="stylesheet" href="cssNavindu/menuManagementNavBar.css">



 
   
	 
   <script src="jsNavindu/ie-emulation-modes-warning.js"></script>
     
	 
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="jsNavindu/myJS.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   

<body id="LoginForm">


<% session = request.getSession(); %>
<% String snic = (String)session.getAttribute("snic");%>
<% String sname = (String)session.getAttribute("sname"); %>

<%if(snic!=null){ %>

    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b>Sujanee Restaurant</b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="stock.jsp">Stock</a></li>
     
      <li><a href="menuManagement.jsp">Menu</a></li>
    
       <li class="active"><a href="addPackages.jsp">Packages</a></li>
    </ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">Welcome, <%=sname%></a></li>
			<li style="padding-top: 10px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form></li>
		</ul>
	</div>
</nav>

 <h1 class="deepshd animated fadeInLeft" ><b>Food Packages</b></h1>
<div class="row">
				 		<div class="col-md-4"></div>
							<div class="col-md-4">
								
                                <br>
                                <div class="login-form">
                                <div class="main-div">
								 <form class="form" role="form" method="post" action="AddPackages" accept-charset="UTF-8" id="login-nav" enctype="multipart/form-data">
								 <h3  style="margin-bottom: 25px; text-align: center; "><i class="fas fa-plus-circle"></i> <b>Add Package</b></h3>
										<div class="form-group">
											 
											 <input type="text" class="form-control" name="packageName" placeholder="Package Name"  required>
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" name="packagePrice" placeholder="Price"  required>
                                             
										</div>
										
																
										<div class="form-group">
										
											<p class="text-left">Upload an Image</p>
											<input type="file"  name="packagePic" >
											
											
								
										</div>
															
															
										

									
									
										 
         								 <div class="form-group">
											 <button type="submit" class="btn btn-success btn-block"><b>ADD PACKAGE  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></b></button>
										</div>
										 <br /><br />
         							
										
								 </form>
								 </div>
								 </div>
							</div>
						
					 </div>
				











	<br><br><br><br><br><br><br><br><br><br><br>
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
	<%
		} else {
	%>
	<script type="text/javascript">
		window.location.href = "http://localhost:8080/FinalITP/staffLogin.jsp";
	</script>
	<%
		}
	%>

</body>
</html>