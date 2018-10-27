<%@page import = "java.sql.DriverManager" %>
<%@ page import ="backend.*" %>

<%@page import = "java.sql.ResultSet" %>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Current Stock</title>



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
   
<style>
<style>
#item {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#item td, #item th {
    border: 1px solid #ddd;
    padding: 8px;
}

#item tr:nth-child(even){background-image: linear-gradient(to top, #accbee 0%, #e7f0fd 100%);}

#item tr:hover {background-color: #ddd;}

#item th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-image:linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
}
</style>
</style>
</head>
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
      <li  class="active"><a href="stock.jsp">Stock</a></li>
     
      <li><a href="menuManagement.jsp">Menu</a></li>
       <li><a href="profileStf.jsp">Dashboard</a></li>
    </ul>
        			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Welcome, <%=sname%></a></li>
				<li style="padding-top: 10px"><form action="logout.jsp"
						method="post">
						<button type="submit" class="btn btn-danger">Logout</button>
					</form></li>
			</ul>
  </div>
</nav>


<div class="col-md-6">

<h1 class="animated fadeIn">Warehouse Management</h1>

</div>
<div class = "col-md-3">






		







</div>
<div class = "col-md-1">



<h1><button type="button" class="btn btn-primary">Export Report as PDF</button></h1>
</div>


<div class="container">

<div class="row">


</div>
    	<div class="row">
			<div class="col-md-12">
				<table id ="item" class="table animated">
    <thead>
      <tr>
        <th>#</th>
        <th>Item Name</th>
        
         <th>Category</th>
       
        <th>Quantity</th>
      <th>Delete</th>
       
      </tr>
    </thead>
    <tbody>
   
 
  
  
 
  	
  <% 
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from warehouse_mgmt");%>
		
		<%if(rs.next()) { %>
			
	
			
		<% 	
			rs.beforeFirst();
			 while(rs.next()) {
			 
			

		  			String a = rs.getString("quantity");
		    		int x = Integer.parseInt(a);
		  			
		  			 
		  		
		    
		    		
		    		
			 
		%>
	 <tr >
    <td class="warning"><p><%=rs.getString("item_ID")%></p></td>
    <td><p><%=rs.getString("item_name")%></p></td>
    <td><p><%=rs.getString("category")%></p></td>
    <td><p><%
    
    
    	if(x <= 10){%>
    
    
    
   	<p style="background-image: linear-gradient(to top, #ff0844 0%, #ffb199 100%);"><%= x %></p>
     
   
    <% } else {%>
	
	<p><%= x %></p>
	
<%}%>
    
    

    

    
    
    </p></td>
 
	<td>
	
	  
		<form id="deletemenu"  action="RemoveWareHouseItem"   method="post"  >
	
	      <input type=hidden name="itemCode" value="<%=rs.getString("item_ID")%>" >
  		
		   <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> </button>
   		  
		  
		</form>     
		
  
	
	
	
	</td>
	

    
  </tr>
  
  	<% 
		}
		%>
	
		<%
		}else{
		%>	
			<span class="badge badge-pill badge-secondary animated zoomIn">no items</span>
			
		<%}
		
		}catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
		}%>
    
 
    </tbody>
  </table>

</div>



</div>




</div>
<div class="col-md-5">
<h1 class="animated fadeInLeft"></h1>

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
<%}else{%>
    	<script type="text/javascript">
    	window.location.href = "http://localhost:8080/FinalITP/staffLogin.jsp";
    	</script>
    <%}%>
</body>
</html>