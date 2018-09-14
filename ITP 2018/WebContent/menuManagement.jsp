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



 
   
	 
   <script src="js/ie-emulation-modes-warning.js"></script>
     
	 
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="js/myJS.js"></script>
    

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   


 </head>

<body id="LoginForm">
 
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Sujanee Restaurant</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="inventory.jsp"><i class="fas fa-home"></i></a></li>
     
      <li class="active"><a href="menuManagement.jsp">Menu</a></li>
      
    </ul>
  </div>
</nav>

   
        <h1 class="xbootstrap animated bounceInUp delay-1s" ><b>Menu Management</b></h1>


        <div class="container">
<div class=col-md-3></div>
<div class="col-md-6">

    <div class="login-form">
    <div class="main-div animated zoomInUp">
        <form  id="addmenu" action="AddMenuServlet" method="POST"  onsubmit="return formAddMenuSubmit()" name="vForm" >
        <br style="clear:both">
                    <h3  style="margin-bottom: 25px; text-align: center; "><i class="fas fa-plus-circle"></i> <b>ADD MENU ITEM</b></h3>
                      <br />
    				<div class="form-group">

              <select name="menuType" class="form-control select2">
            	           <option>Select Menu Type</option>
            	           <option>Regular Menu</option>
            	           <option>Catering</option>
            	           <option>Hall Menu</option>

              </select>
					</div>
          <br />
					<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Item Name" required>
						<div id="name_error" class="val_error animated shake"></div>
					</div>
          <br />
					<div class="form-group">
						<input type="text" class="form-control" id="price" name="price" placeholder="Item Price" required >
						<div id="price_error" class="val_error" ></div>
					</div>
          <br />
         
					<div class="form-group">
					<p class="text-left">Upload an Image</p>
						<input type="file" class="filestyle" accept="image/*" name="pic" >
					</div>

          <div class="form-group">
             <button style="float: left" type="reset" value="Reset" class="btn btn-danger">RESET</button>

          </div>

		   <div class="form-group">
             <button type="submit" name="submit" class="btn btn-success pull-right" value="ADD ITEM" onclick ="">ADD ITEM</button>
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
    <th>Item ID</th>
    <th>Item Name</th>
    <th>Item Price</th>
    <th>Remove an Item</th>
    <th>Update Price</th>
    
  </tr>
  <tr>
   <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'R%' ");%>
		
		<%if(rs.next()) { 
			
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
		}
		
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
			 
			 
		%>
	
				
				
			<div class="row" data-aos="fade-right" >
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			    <p><%=rs.getString("menu_item_name")%></p>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			   
			   <img src= "img/<%=rs.getString("menu_item_pic") %>" width="100" height="100"/>
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			    
			    <p><%=rs.getString("menu_item_price") %></p>
			  </div>
			</div>
			
			
			
		
		<% 
		}
		%>
	
		<%
		}else{
		%>	
			<p>no items</p>
			
		<%}
		
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
    <th>Item ID</th>
    <th>Item Name</th>
    <th>Item Price</th>
    <th>Remove Item</th>
    <th>Update Price</th>
  </tr>
  <tr>
  
  
  
  
  	  <% 
  	
  
  	try{
								
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>
		
		<% Statement st = con.createStatement();%>
		
		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'C%' ");%>
		
		<%if(rs.next()) { 
			
			rs.beforeFirst();
			 while(rs.next()) {
			 
			 
		%>
    <td><p><%=rs.getString("menu_id")%></p></td>
    <td><p><%=rs.getString("menu_item_name")%></p></td>
    <td><p><%=rs.getString("menu_item_price") %></p></td>
    
    
    <td>
    
		<form id="deletemenu" onsubmit="return formDeleteMenuSubmit()" method="post" >
	
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
		}
		
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
			   
			    <image src="img/<%=menu_item_pic%>"  height="100" width="100">
			  </div>
			  <div class="column" style="background-color:#f5f7fa;background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
			    
			    <p><%=menu_item_price %></p>
			  </div>
			</div>
		
		<% }  %>
		
		<% }else{
			%>
			<p>no items</p>
			
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
    <th>Item ID</th>
    <th>Item Name</th>
    <th>Item Price</th>
    <th>Remove an Item</th>
    <th>Update Price</th>
    
  </tr>
  <tr>
  
  
  
  
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
	
		<%
		}
		
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
			   
			    <img src="img/<%=menu_item_pic%>"  height="100" width="100">
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
		
		}catch(Exception e){
		
			System.out.println("Failed");
			System.out.println(e);
		
		
	 }%>
  
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


<script type="text/javascript" src="js/bootstrap-filestyle.min.js"> </script>
<script src="js/menuManagementJS.js"></script>



<script src="css/aos-master/dist/aos.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/inventoryJS.js"></script>
<script  type="text/javascript">
	
	AOS.init({
		
		duration: 1000,
		
	});
</script>



</body>


</html>

<script src="jq.js"></script>
<script type="text/javascript">


function formAddMenuSubmit(){
	
	$.ajax({
		
		type:'POST',
		url:'AddMenuServlet',
		data:$('#addmenu').serialize(),
		success:function(data){
			
			swal("Item added!", "Successfully!", "success");
			
		
		}
	

	});
	var form = document.getElementById('addmenu').reset();
	return false;
	}
	
	$(document).ready(function(){
		
		$('#auto').load('AddMenuServlet.java');
		refresh();
		
	});
	
	function refresh(){
		
		setTimeout(function(){
			
			$('#auto').fadeOut('slow').load('AddMenuServlet.java').fadeIn('slow');
				refresh();
		 	}, 30000);
	
		
		
	}

	

</script>

	
       

	
<script type="text/javascript">
var name = document.forms["vForm"]["name"];
var price = document.forms["vForm"]["price"];


var name_error = document.getElementById("name_error");
var price_error = document.getElementById("price_error");

name.addEventListener("blur", nameVerify, true);
price.addEventListener("blur", priceVerify, true);

function validate(){
	
	if(name.value == ""){
		
		
		name.style.border = "1px solid red";
		name_error.textContent = "Name Required!";
		
		
		name.focus();
	
		return false;
		
	}
	
	if(price.value == ""){
		
		price.style.border = "1px solid red";
		price_error.textContent = "Price Required!";
		$('input[name=price]').addClass('animateShake');
		price.focus();
		
		return false;
		
	}
	
}

function nameVerify(){
	
	if(name.value != ""){
		name.style.border = "1px solid 5E6E66";
		name_error.innerHTML = "";
		
		return true;
		
		
	}
	
	
}


function priceVerify(){
	
	if(price.value != ""){
		price.style.border = "1px solid 5E6E66";
		price_error.innerHTML = "";
		
		return true;
		
		
	}
	
	
}




</script>

