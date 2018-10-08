<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


          <link href="css/bootstrap.min.css" rel="stylesheet">

          <link href="css/stylish-portfolio.css" rel="stylesheet">
          <link href="css/stylish-portfolio.min.css" rel="stylesheet">
          <link rel="stylesheet" href="css/demo.css">
           <link href="scss/anime.css" rel="stylesheet">
           <link rel="stylesheet" href="css/sociel.css">
           <link rel="stylesheet" href="css/footer-basic-centered.css">
           <link href="css/style.css" rel="stylesheet">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">



    <title>Admin | Packages</title>
  </head>
  <body>

<% session = request.getSession(); %>
<% String snic = (String)session.getAttribute("snic");%>
<% String sname = (String)session.getAttribute("sname"); %>

<%if(snic!=null){ %>
    <!--Header-->

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

      <!--Header-->
   
      <div class=container>
      <div class = "col-md-11">
      <table id="customers" class="table table-striped table-hover">
      <tr>
      	
      	<th>Package Name</th>
      	<th>Package Price</th>
      	<th>Remove Package</th>
      	<th>Update Price</th>
      </tr>	
      
      <%try{
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel", "root", "root");%>
     <%PreparedStatement ps = (PreparedStatement)con.prepareStatement("select * from food_packages");%>
     <%ResultSet rs = ps.executeQuery();%>
      
      <%while(rs.next()){
    	  String name = rs.getString("package_name");
    	  String price = rs.getString("package_price");
    	  String id = rs.getString("package_id");
    	  
    
    	  
    %>	  
    	  <tr>
    	  
    	  	<td><%=name %></td>
    	  	<td><%=price %></td>
    	  	<td>
    	  	
    	  	<form action="RemovePackage" method="post" >
    	  	
    	  	
    	  	<input type="hidden" name="code" value="<%=price%>">
    	  	<button type="submit"  class="btn btn-primary">Delete</button>
    	  	
    	  
    	 </form>
    	  	</td>
    	  	<td>
    	  	
    	  		<form action="UpdatePackage" method="post" >
    	  	
    	  	
    	  	<input type="text" name="newPrice" placeholder="New Price" required>
    	  	<input type="hidden" name="packageCode" value="<%=id%>">
    	  	<button type="submit"  class="btn btn-primary">Update</button>
    	  	
    	  
    	 </form>
    	  	
    	  	</td>
    	  </tr>	
    	  
    	 
	<%} 
	
	}catch(Exception e){
		System.out.println(e);
	}%>
	
	</table>
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





    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
