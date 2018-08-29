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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
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

      <br><br>
      
      <form class="form-horizontal">
	<fieldset>
	
	<!-- Form Name -->
	<h1 class=reg>Reset password</h1>
	
	<!-- Textarea -->
	
	<%SaveDataStf sd1 = (SaveDataStf)request.getAttribute("obj");%>
	<%String qs = sd1.getId();%>
		
	<div class="form-group">
	  <label class="col-md-4 control-label" for="ques1">Question 1</label>
	  <div class="col-md-4">     
	  
	  
	  <%try{
 				Class.forName("com.mysql.jdbc.Driver");
 				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
            	
            	<%Statement st = con.createStatement(); %>
            	<%ResultSet rs = st.executeQuery("Select question1 from staffdata where nic = ('"+qs+"')");%>
            	
            	<%while(rs.next()){%>
            		
            		<%String qq = rs.getString("question1");%>
            		<textarea class="form-control" id="ques1" name="ques1"><%=qq%></textarea>
	
				<% }
            }catch(Exception e){
				System.out.println(e);
            }%>                
	    
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="ans1">Answer</label>  
	  <div class="col-md-4">
	  <input id="ans1" name="ans1" placeholder="Answer" class="form-control input-md" type="text">
	    
	  </div>
	</div>
	
	<!-- Textarea -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="ques2">Question</label>
	  <div class="col-md-4"> 
	  
	  <%try{
 				Class.forName("com.mysql.jdbc.Driver");
 				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
            	
            	<%Statement st = con.createStatement(); %>
            	<%ResultSet rs = st.executeQuery("Select question2 from staffdata where nic = ('"+qs+"')");%>
            	
            	<%while(rs.next()){%>
            		
            		<%String qqq = rs.getString("question2");%>
            		<textarea class="form-control" id="ques1" name="ques1"><%=qqq%></textarea>
	
				<% }
            }catch(Exception e){
				System.out.println(e);
            }%>                    
	    
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="ans2">Answer</label>  
	  <div class="col-md-4">
	  <input id="ans2" name="ans2" placeholder="Answer" class="form-control input-md" type="text">
	    
	  </div>
	</div>
	
	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="singlebutton"></label>
	  <div class="col-md-4">
	    <button id="singlebutton" name="singlebutton" class="btn btn-danger">Button</button>
	  </div>
	</div>
	
	</fieldset>
</form>
      
      
      <!-- Footer -->
      <footer class="footer-basic-centered" style="position:fixed">

  			<p class="footer-company-motto"><b>Good food | Good Vibes</b></p>

              <section id="lab_social_icon_footer">
                      <!-- Include Font Awesome Stylesheet in Header -->
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

  		</footer>






    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
