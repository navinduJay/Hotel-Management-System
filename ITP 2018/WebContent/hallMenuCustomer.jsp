<%@page import = "java.sql.DriverManager" %>

<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Menu | Hall</title>

    <!-- Bootstrap -->

    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <link href="css/regularMenuCus.css" rel="stylesheet">
    <link href="css/newMenuStyles.css" rel="stylesheet">
     <link href="css/customerlogin.css" rel="stylesheet">
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    <link href="css/stylish-portfolio.min.css" rel="stylesheet">
    <link href="scss/anime.css" rel="stylesheet">
    
    <link rel="stylesheet" href="css/demo.css">
    <link rel="stylesheet" href="css/sociel.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">



    <link rel="stylesheet" href="css/cusViewFooter.css">


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">




    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/testfileCSS.css" rel="stylesheet">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>




</style>
  </head>
  <body>




<section class="service-sec" id="benefits">
  <div class="container">


	<div class="jumbotron text-center">
  <h1 style="color:white;"><b>Hall MENU</b></h1>
 
</div>

<div class="container">
  <div class="row">
  
    	  <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'H%' ");%>
		
		<%if(rs.next()) { 
			
			rs.beforeFirst();
			 while(rs.next()) {
			 
			 
		%>
  
    <div class="col-sm-3">
        <div class="box">
        
        

        <h3> <img src= "img/<%=rs.getString("menu_item_pic") %>" width="200" height="200"/></h3> 
        
        
        
        
      <h3><%=rs.getString("menu_item_name")%></h3>
      <h3><%=rs.getString("menu_item_price") %></h3>
      <button type="button" class="btn btn-success pull-right">CUSTOMIZE NOW</button>
    </div>
     <br /><br />
    </div>
    
    	<% 
		}
		%>
	
		<%
		}
		
		}catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
		}%>
    



  </div>
</div>



         

    </div>
    <!-- /.row -->
  </div>
</section>

<!-- About
    ================================================== -->
<section class="about-sec parallax-section" id="about">
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <h2><small></small>About<br>
          Our Food</h2>
      </div>

      <div class="col-md-4">
        <p>A wonderful day needs a wonderful start! And what better way to start your day than with a delicious breakfast at the Sujanee restaurant! Begin with taste-tempting selections from our scrumptious breakfast buffet in the morning, visit again to try our delicious lunch plates, return for dinner and choose from a wide array of mouth-watering options and then finish off your evening with a drink specially prepared by our master mixologists. <b>Bon appetite!</b> </p>
        <p><a href="#" class="btn btn-transparent-white btn-capsul"></a></p>

    </div>
    <div class="col-md-4">
      <p>This will change the way you think about gastronomy and bring it to the next level. Our chefs offer traditional Sri Lankan dishes served up with a sophisticated style and offered in a cozy and contemporary environment, uniquely combining old and new. We proudly offer this refined mix of ancient heritage and local traditions cooked into every dish you choose</p>
    </div>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="footer-basic-centered">

  <p class="footer-company-motto"><b>Good Food | Good Vibes</b></p>

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
                <address>
                 <small><font color="#989898">Tel : +94 112 078 517<br />
                 Athurugiriya Rd,Sri Lanka.</font>
                 </small>
                </address>

                <small><font color="#989898">
                   <b>Designed and Developed by 404 Solutions</b>
                 </font>
                 </small>
                </section>



  <p class="footer-company-name"><b>Hotel Sujanee &copy; 2018</b></p>

</footer>

      <script src="js/bootstrap.min.js"></script>
      <script src="js/customerLogin.js"></script>

      <script src="js/stylish-portfolio.js"></script>
      <script src="js/stylish-portfolio.min.js"></script>
      <script src="js/myJs.js"></script>
       <!-- Bootstrap core JavaScript -->
       <script src="vendor/jquery/jquery.min.js"></script>
       <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>