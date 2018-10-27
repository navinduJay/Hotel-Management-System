<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.util.Base64" %>

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
    <title>Menu | Regular</title>

    <!-- Bootstrap -->


 <link href="css/bootstrap.min.css" rel="stylesheet">

   <link href="cssNavindu/menuManagementBackground.css" rel="stylesheet">
   <link href="cssNavindu/inventoryStyles.css" rel="stylesheet">
    
     <link rel="stylesheet" href="cssNavindu/aos-master/dist/aos.css" />
   <link rel="stylesheet" href="cssNavindu/sociel.css">
   <link rel="stylesheet" href="cssNavindu/animate.min.css">
   <link rel="stylesheet" href="cssNavindu/aos-master/dist/aos.css" />
    <link rel="stylesheet" href="cssNavindu/menuValidationCSS.css">
   <link rel="stylesheet" href="cssNavindu/modalCSS.css">
   <link rel="stylesheet" href="cssNavindu/footer-basic-centered.css">
   <link rel="stylesheet" href="cssNavindu/menuManagement.css">
    <link rel="stylesheet" href="cssNavindu/menuManagementNavBar.css">
     <link rel="stylesheet" href="cssNavindu/packageCSS.css">


  <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/animate.css@3.5.2/animate.min.css">
  <!-- or -->
  <link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
 
   
	 
   <script src="jsNavindu/ie-emulation-modes-warning.js"></script>
     
	 
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="jsNavindu/myJS.js"></script>
    

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   


<style>




</style>
  </head>
  <body >
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
  
  
  
  
 <section class="service-sec" id="benefits">
  <div class="container">


	<br><br>
  <h1 style="color:white;text-center;"><b>REGULAR MENU</b></h1>
 



	<div class="col-md-4">
	
		<div class="container" >
  <div class="row">
  
    	  <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'R%' ");%>
		
		<%if(rs.next()) { 
			
			rs.beforeFirst();
			 while(rs.next()) {
			 
				 byte[] imgData = rs.getBytes("menu_item_pic"); // blob field 
		            request.setAttribute("rvi", "Navindu");
		            rs.getString("menu_item_pic");

		            String encode = Base64.getEncoder().encodeToString(imgData);
		            request.setAttribute("imgBase", encode);
			 
		%>
  
    <div class="col-sm-3" data-aos="fade-right">
        <div class="box-part text-center">
        
        

        <h3><img src="data:image/jpeg;base64,${imgBase}" width="200" height="150"/></h3> 
        
        
        
      <h3 style="font-family:Courier New"><%=rs.getString("menu_item_name")%></h3>
      <h4>Rs.<%=rs.getString("menu_item_price") %></h4>
      
      <br>
      <button type="button" class="btn btn-danger pull-right animated tada delay-2s">CUSTOMIZE NOW</button>
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




</div>


         


</section>

<!-- About
    ================================================== -->


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

      <script src="jsNavindu/bootstrap.min.js"></script>
      <script src="jsNavindu/customerLogin.js"></script>
<script src="cssNavindu/aos-master/dist/aos.js"></script>
      <script src="jsNavindu/stylish-portfolio.js"></script>
      <script src="jsNavindu/stylish-portfolio.min.js"></script>
      <script src="jsNavindu/myJs.js"></script>
       <!-- Bootstrap core JavaScript -->
       <script src="vendor/jquery/jquery.min.js"></script>
       <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
       <script  type="text/javascript">
	
	AOS.init({
		
		duration: 1000,
		
	});
</script>
       

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="jsNavindu/bootstrap.min.js"></script>
  </body>
  <%}else{%>
    	<script type="text/javascript">
    	window.location.href="http://localhost:8080/FinalITP/login.jsp";
    	</script>
<%} %>
</html>
