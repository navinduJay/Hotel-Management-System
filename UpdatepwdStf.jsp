<%@page import="com.SaveDataStf"%>
<%@page import="java.io.PrintWriter"%>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

          <link href="css/stylish-portfolio.css" rel="stylesheet">
          <link href="css/stylish-portfolio.min.css" rel="stylesheet">
          <link rel="stylesheet" href="css/demo.css">
           <link href="scss/anime.css" rel="stylesheet">
           <link rel="stylesheet" href="css/sociel.css">
           <link rel="stylesheet" href="css/footer-basic-centered.css">
           <link href="css/style.css" rel="stylesheet">
           <link href="css/customStylesPM.css" rel="Stylesheet">
           <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
			<script>
			function ConfirmPassword() {
				var password = document.forms["resetpwd"]["pwd"].value;
				var confirm_password = document.forms["resetpwd"]["rpwd"].value;
				if (password != confirm_password) {
				alert("Passwords does not match!!!!");
				return false;
				}
			}</script>
<meta charset="ISO-8859-1">
<title>Admin | Reset password</title>
</head>
<body>
    <!--Header-->
    <nav class="navbar navbar-default navbar-fixed-top">

        <ul>
            <li><a href="index.html"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.html"><b>Contact Us</b> </a></li>
            <ul  class="nav navbar-nav navbar-right">
                <li id="mylist"><button class="btn btn-success btn-lg"><i class="fas fa-user"></i></button> </li>
                <li id="mylist"><button class="btn btn-danger btn-lg"><i class="fas fa-user-tie"></i></button> </li>

            </ul>

        </ul>

    </nav>
      <!--Header-->
      <br><br><br><br>
      
      <!-- FORM -->
      
      
      
      
	<div class=container style="background-color: #ffff66">
	<form class="form-horizontal" action="NewpwdStf" method="post" name="resetpwd" id="resetpwd" onsubmit="return ConfirmPassword()">
	<fieldset>
	
	<!-- Form Name -->
	<h1 class=reg>Reset Password</h1>
	
	<%SaveDataStf sd1 = (SaveDataStf)request.getAttribute("obj");%>
	<%String qs = sd1.getId();%>
	
	<!-- Textarea -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="nic">NIC Number</label>
	  <div class="col-md-4">                     
	    <textarea class="form-control" id="nic" name="nic"><%=qs %></textarea>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="pwd">Enter new password</label>  
	  <div class="col-md-4">
	  <input id="pwd" name="pwd" placeholder="password" class="form-control input-md" type="password" min="8">
	  <span class="help-block"></span>  
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="rpwd">Re-enter Password</label>  
	  <div class="col-md-4">
	  <input id="rpwd" name="rpwd" placeholder="Re-enter Password" class="form-control input-md" type="password" min="8">
	    
	  </div>
	</div>
	
	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="btn"></label>
	  <div class="col-md-4">
	    <button id="btn" name="btn" class="btn btn-warning">Reset Password</button>
	  </div>
	</div>
	
	</fieldset>
	</form>
	</div>
	
	
	
	
	
	
	      <!-- Footer -->
    <footer class="footer-basic-centered" style="position:fixed">

			<p class="footer-company-motto"><b>Good food | Good Vibes</b></p>

            <section id="lab_social_icon_footer">
                    <!-- Include Font Awesome Stylesheet in Header -->
                    
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

		</footer>


</body>
</html>