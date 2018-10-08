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

 <link href="css/bootstrap.min.css" rel="stylesheet">

   <link href="css/menuManagementBackground.css" rel="stylesheet">
   <link href="css/inventoryStyles.css" rel="stylesheet">
    
     <link rel="stylesheet" href="css/aos-master/dist/aos.css" />
   <link rel="stylesheet" href="css/sociel.css">
   <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/menuValidationCSS.css">
   <link rel="stylesheet" href="css/modalCSS.css">
   <link rel="stylesheet" href="css/footer-basic-centered.css">
   <link rel="stylesheet" href="css/menuManagement.css">
    <link rel="stylesheet" href="css/menuManagementNavBar.css">
     <link rel="stylesheet" href="css/packageCSS.css">



 
   
	 
   <script src="js/ie-emulation-modes-warning.js"></script>
     
	 
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="js/myJS.js"></script>
    

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   


</head>
<body>



 <nav class="navbar navbar-default navbar-fixed-top">

        <ul>
            <li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.jsp"><b>Contact Us</b> </a></li>
            <ul  class="nav navbar-nav navbar-right">


              <li id="mylist"><button type="button" data-toggle="modal" data-target="#customerLoginModal" class="btn btn-success btn-lg"><i class="fas fa-user"></i></button> </li>
                <div id="customerLoginModal" class="modal fade" role="dialog" data-backdrop="false">
                  <div class="modal-dialog">
                    <div class="modal-content">


                        <form>

                   <div class="card card-container">
                     <button style="float:right;margin-left:650px"  type="button" class="btn btn-default" data-dismiss="modal">X</button>

                       <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                       <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                       <p id="profile-name" class="profile-name-card"></p>
                       <form class="form-signin">
                           <span id="reauth-email" class="reauth-email"></span>
                           <input type="text" id="inputEmail" class="form-control" placeholder="username" required autofocus>
                           <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                           <div id="remember" class="checkbox">
                               <label>
                                   <input type="checkbox" value="remember-me"> Remember me
                               </label>
                           </div>
                           <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Login</button>
                          </form><!-- /form -->
                     <a href="customerReg.html" class="forgot-password">
                         Sign up
                     </a>


                 </div><!-- /card-container -->



                      </form>



                    </div>

                  </div>

                </div>

              <li id="mylist"><button class="btn btn-danger btn-lg"><i class="fas fa-user-tie"></i></button> </li>


            </ul>

        </ul>

    </nav>
      <!--Nav Bar-->

<br><br><br><br>
<div class="container">
<div class = "col-md-2">

	<img src="img/food.png" height="150" width="150">

</div>
<div class = "col-md-2">

	<img src="img/bug.png" height="150" width="150">

</div>
<div class = "col-md-2">

	<img src="img/cake.png" height="150" width="150">

</div>
<div class = "col-md-2">

	<img src="img/cola.png" height="150" width="150">

</div>
<div class = "col-md-2">

	<img src="img/kebab.png" height="150" width="150">

</div>
<div class = "col-md-2">

	<img src="img/yoga.png" height="150" width="150">

</div>
</div>

<div class="container">

<div class="box">
    <div class="container">
     	<div class="row">
     	<% 
     	  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from food_packages");%>
		
		<% if(rs.next()){
			
			rs.beforeFirst();
			 while(rs.next()) {
				 
				 
					 byte[] imgData = rs.getBytes("package_pic"); // blob field 
		            request.setAttribute("rvi", "Ravinath");
		            rs.getString("package_pic");

		            String encode = Base64.getEncoder().encodeToString(imgData);
		            request.setAttribute("imgBase", encode);
			 
			 
		%>

     			
				
			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center">
                        
                        <img src="data:image/jpeg;base64,${imgBase}"  height="250" width="250"/>
                        
						<div class="title">
							<h2><%=rs.getString("package_name")%></h2>
						</div>
                        
						<div class="text">
							<h3><span>Rs.<%=rs.getString("package_price")%></span></h3>
						</div>
                        
						<a href="regularMenuCustomer.jsp" class="btn btn-success" role="button">more info</a>
                        
					 </div>
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


<script type="text/javascript" src="js/bootstrap-filestyle.min.js"> </script>
<script src="js/menuManagementJS.js"></script>



<script src="css/aos-master/dist/aos.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/inventoryJS.js"></script>



</body>
</html>