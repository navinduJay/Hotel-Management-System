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
  	
	
		
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
  
  
  <style>
  
  * {
    box-sizing: border-box;
}


.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height: 120px; 
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
  
  </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Admin | Menu Management</title>

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
    

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   


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
      <li><a href="stock.jsp">Stock</a></li>
     
      <li class="active"><a href="menuManagement.jsp">Menu</a></li>
      <li class="active"><a href="addPackages.jsp">Packages</a></li>
    </ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Welcome, <%=sname%></a></li>
				<li style="padding-top: 10px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form>
				</li>
			</ul>
		</div>
</nav>

   
        <h1 class="deepshd animated fadeInLeft" ><b>Menu Management</b></h1>


        <div class="container">
<div class=col-md-3></div>
<div class="col-md-6">

    <div class="login-form">
    <div class="main-div ">
        <form  id="addmenu" action="AddMenuServlet" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()" name="vForm" >
        <br style="clear:both">
                    <h3  style="margin-bottom: 25px; text-align: center; "><i class="fas fa-plus-circle"></i> <b>ADD MENU ITEM</b></h3>
                      <br />
    				<div class="form-group">

              <select id="mType" name="menuType" class="form-control select2">
            	           <option value = "0">Select Menu Type</option>
            	           <option>Regular Menu</option>
            	           <option>Catering</option>
            	           <option>Hall Menu</option>

              </select>
					</div>
          <br />
					<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Item Name" pattern="[A-Za-z]{3,}" title="This field can only contain string values!" >
						<div id="name_error" class="val_error animated shake"></div>
					</div>
          <br />
					<div class="form-group">
						<input type="text" class="form-control" id="price" name="price" placeholder="Item Price" pattern="[0-9]{3,}"  title="This field can only contain numeric values!" >
						<div id="price_error" class="val_error" ></div>
					</div>
          <br />
         
					<div class="form-group">
					<p class="text-left">Upload an Image</p>
						<input type="file"   name="pic" >
					</div>

          <div class="form-group">
             <button style="float: left" type="reset" value="Reset" class="btn btn-danger">RESET</button>

          </div>

		   <div class="form-group">
             <input type="submit" name="submit" class="btn btn-success pull-right" value="ADD ITEM" >ADD ITEM</button>
               <h3 id="success"></h3>
					
 	

				
			
          </div><br /><br />
          <div class="form-group">
              
			   <input type="button" id="btn1" name="btn" class="btn btn-primary pull-right" onclick="myFunction()" value="CHECK">
          </div><br />
          




        </form>
        
   
 
    </div>
    
    

</div>
</div>
<div class="col-md-4"></div>
<div id="auto" class="col-md-12">
<div id="myDIV" style="overflow:hidden">

	
	<div class="jumbotron">
	<hr class="my-4">
 <h2 class="display-4"><b><mark>Regular Menu </mark><button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" data-toggle="modal" data-target="#regularModal" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  
  	<div id="regularModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Edit Regular Menu</h4>
      </div>
      <div class="modal-body">
       <table id = "food">

  <tr>
  
  
 
  	
  <% 
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'R%' ");%>
		
		<%if(rs.next()) { %>
			
			    <tr>
    				 <th>Item ID</th>
    				<th>Item Name</th>
    				<th>Item Price</th>
   					<th>Remove an Item</th>
   					<th>Update Price</th>
    
  				</tr>
			
		<% 	
			rs.beforeFirst();
			 while(rs.next()) {
			 
			 
		%>
		
    <td><p><%=rs.getString("menu_id")%></p></td>
    <td><p><%=rs.getString("menu_item_name")%></p></td>
    <td><p><%=rs.getString("menu_item_price") %></p></td>
    <td>
    
		<form id="deletemenu"  action="removeItemServlet"  onsubmit="" method="post"  >
	
	      <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  		
		   <button type="submit" class="btn btn-danger">
     		X</button>
   		  
		  
		</form>     
		
  
    
    </td>
    
    <td>
    
    	  	<form action="editItemPriceServlet" method="post">
	
	      <input type="text" name="itemPrice" id="itemPrice" placeholder="new price" required>
	      
	      
  			 <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  			 <br>
		  	 <button type="submit" class="btn btn-warning">
     		<i class="fas fa-edit"></i></button>
   		  
		  
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

</table>


	
      </div>
      
    </div>

  </div>
</div>
  
  <hr class="my-4">
  
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
	
				
				
			<div class="row" data-aos="fade-right" >
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <p><%=rs.getString("menu_item_name")%></p>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			   <img src="data:image/jpeg;base64,${imgBase}" width="100" height="100"/>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			    
			    <p><%=rs.getString("menu_item_price") %></p>
			  </div>
			</div>
			
			
			
		
		<% 
		}
		%>
	
		<%
		} else{%>
		
			<span class="badge badge-pill badge-secondary">no items</span>
			
	<% 	}%>
		<% 
		}catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
		}%>
    
  <hr class="my-4">
  <h2 class="display-4"><b><mark>Catering Menu</mark></mark> <button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" data-toggle="modal" data-target="#cateringModal" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  
  		  	<div id="cateringModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Edit Catering Menu</h4>
      </div>
      <div class="modal-body">
       <table id="food">
       
     

  <tr>
  
  
  
  
  	  <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'C%' ");%>
		
		<%if(rs.next()) { %>
			
			  <tr>
			    <th>Item ID</th>
			    <th>Item Name</th>
			    <th>Item Price</th>
			    <th>Remove Item</th>
			    <th>Update Price</th>
			  </tr>
		
		<% 	
			rs.beforeFirst();
			 while(rs.next()) {
			 
			 
		%>
    <td><p><%=rs.getString("menu_id")%></p></td>
    <td><p><%=rs.getString("menu_item_name")%></p></td>
    <td><p><%=rs.getString("menu_item_price") %></p></td>
    
    
    <td>
    
		<form id="deletemenu" onsubmit="return formDeleteMenuSubmit()" method="post" action="removeItemServlet">
	
	      <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  		
		   <button type="submit" class="btn btn-danger">
     		<span class="glyphicon glyphicon-trash"></span>
   		  
		  
		  
		</form>     
    
    
    </td>
    
    
    
    	    
    <td>
    
    	  	<form action="editItemPriceServlet" method="post" >
	
	      <input type="text" name="itemPrice" id="itemPrice" placeholder="new price" required>
	      
  			 <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  			 <br>
		  	 <button type="submit" class="btn btn-warning">
     		<i class="fas fa-edit"></i></button>
   		  
		  
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

</table>


	
      </div>
     
    </div>

  </div>
</div>
  
  
  
  
  
  <hr class="my-4">
  
  
 	<% try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'C%' ");%>
		
		
		<%if(rs.next()) { 
			
			rs.beforeFirst();
		    while(rs.next()) {%>
		
			<% 		 
				 
					 
						 byte[] imgData = rs.getBytes("menu_item_pic"); // blob field 
			            request.setAttribute("rvi", "Navindu");
			            rs.getString("menu_item_pic");

			            String encode = Base64.getEncoder().encodeToString(imgData);
			            request.setAttribute("imgBase", encode);
		
		    %>
		
			<% int menu_id = rs.getInt("menu_id"); %>
			<% String menu_type = rs.getString("menu_type");%>
			<% String menu_item_name = rs.getString("menu_item_name");%>
			<% String menu_item_price = rs.getString("menu_item_price");%>
			<% String menu_item_pic = rs.getString("menu_item_pic");%>
			
			
		<div class="row" data-aos="fade-left">
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <p><%=menu_item_name %></p>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <image src="data:image/jpeg;base64,${imgBase}"   height="100" width="100">
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			    
			    <p><%=menu_item_price %></p>
			  </div>
			</div>
		
		<% }  %>
		
		<% } else{
			%>
			<span class="badge badge-pill badge-secondary animated zoomIn">no items</span>
			
 <% 	}
		
		}
		catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
	}%>
    
    
    <hr class="my-4">
  <h2 class="display-4"><b><mark>Hall Menu </mark><button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" data-toggle="modal" data-target="#hallModal" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  
  
  			  	<div id="hallModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Edit Hall Menu</h4>
      </div>
      <div class="modal-body">
       <table id="food">

  <tr>
  
  
  
  
  	  <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'H%' ");%>
		
		<%if(rs.next()) { %>
			
			  <tr>
			    <th>Item ID</th>
			    <th>Item Name</th>
			    <th>Item Price</th>
			    <th>Remove an Item</th>
			    <th>Update Price</th>
			    
			  </tr>
		
		<% 	
			rs.beforeFirst();
			 while(rs.next()) {
			 
			 
		%>
    <td><p><%=rs.getString("menu_id")%></p></td>
    <td><p><%=rs.getString("menu_item_name")%></p></td>
    <td><p><%=rs.getString("menu_item_price") %></p></td>
    <td>
    
		<form id="deletemenu" onsubmit="return formDeleteMenuSubmit()" action="removeItemServlet" method="post">
	
	      <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  		
		   <button type="submit" class="btn btn-danger">
     		X</button>
   		   
		  
		  
		</form>     
    
    
    </td>
    
   
    	    
    <td>
    
    	  	<form action="editItemPriceServlet" method="post" >
	
	      <input type="text" name="itemPrice" id="itemPrice" placeholder="new price" required>
	      
  			 <input type="hidden" name="itemCode" value="<%=rs.getString("menu_id")%>" >
  			 <br>
		  	 <button type="submit" class="btn btn-warning">
     		<i class="fas fa-edit"></i></button>
   		  
		  
		</form>  
    
    
    </td>
    
    
    
    
  </tr>
  
  	<% 
		}
		%>
	
			<% }else{
			%>
			<span class="badge badge-pill badge-secondary animated zoomIn">No Items</span>
			
	<% 	}
		
		}catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
		}%>

</table>


	
      </div>
     
    </div>

  </div>
</div>
  
  
  
  
  
  <hr class="my-4">
  
  
		<% try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'H%' ");%>
		
		<%if(rs.next()) { 
			
			rs.beforeFirst();
		%>
	 <% 	while(rs.next()) {%>
	 
	 			
	 			<% 
						 byte[] imgData = rs.getBytes("menu_item_pic"); // blob field 
			            request.setAttribute("rvi", "Navindu");
			            rs.getString("menu_item_pic");

			            String encode = Base64.getEncoder().encodeToString(imgData);
			            request.setAttribute("imgBase", encode);
				%>
		
			<% int menu_id = rs.getInt("menu_id"); %>
			<% String menu_type= rs.getString("menu_type");%>
			<% String menu_item_name = rs.getString("menu_item_name");%>
			<% String menu_item_price = rs.getString("menu_item_price");%>
			<% String menu_item_pic = rs.getString("menu_item_pic");%>
			
			
			<div class="row" data-aos="fade-right">
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <p><%=menu_item_name %></p>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <img src="data:image/jpeg;base64,${imgBase}"  height="100" width="100">
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			    
			    <p><%=menu_item_price %></p>
			  </div>
			</div>
		
		<% } 
		
		}else{
		%>
			<p>no items</p>
			
		<% }
		
		
		 }  else { %>
			<span class="badge badge-pill badge-secondary">no items</span>
		
	 <% 	} %>
		
	
<% 	  }catch(Exception e){ 
		
		
			System.out.println("Failed");
			System.out.println(e);
			
		}
 	%>
	
  
</div>
	
	
	
 

</div>

</div>


	<script>
	function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
	}
	</script>
	
	<script>
	$("#vForm").submit(function(e) {
	    e.preventDefault(); //this prevents form from getting submitted
	});
	</script>
	
	
	

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
    	window.location.href = "http://localhost:8080/FinalITP/staffLogin.jsp";
    	</script>
    <%}%>	


</body>


</html>

<script src="jq.js"></script>


<script type="text/javascript">
function validateForm() {
    var x = document.forms["vForm"]["name"].value;
    var y = document.forms["vForm"]["price"].value;
    var z = document.getElementById("mType");
    var type = z.options[z.selectedIndex].value;
    
    if ((x == "") && (y == "")) {
    	
    	swal("Please fill all fields!");
        return false;
    }else if ((x == "") && (y != "")){
    	
    	swal("Please fill name field!");
    	return false;
    	
    }else if ((y == "") && (x != "")){
    	
    	swal("Please fill price field!");
    	return false;
    	
    }else if (( x != "") && (y != "") && (type == 0 )){
    	
    	swal("Please select a menu type!");
		return false;
    }else if ((y != "") && (x != "") && (type != 0)){
    	
   				
   				
   				///AJAX CODE
    	
    	
    	
    
    	
    	
    	
    	
    	
    	
    	
    	
    	
    
    	}
    

}


</script>
       

	





