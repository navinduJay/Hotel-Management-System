<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
 
   <script src="js/ie-emulation-modes-warning.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script
			  src="http://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>
     <script src="js/myJS.js"></script>
    

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
   <script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>


</head>
<body id="LoginForm">

	 
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b>Sujanee Restaurant</b></a>
    </div>
    <ul class="nav navbar-nav">
      <li  class="active"><a href="stock.jsp">Inventory</a></li>
     
      <li><a href="menuManagement.jsp">Menu</a></li>
       <li><a href="addPackages.jsp">Package</a></li>
    </ul>
  </div>
</nav>

  
  
  
  
				 <div class="row">
				 
				 		<div class="col-md-1"></div>
				 		
							<div class="col-md-4">
							<h2 class="deepshd animated fadeIn" ><b>Stock Management</b></h2>
								
                                
                                <div class="login-form animated bounceInLeft">
                                <div class="main-div">
								 <form class="form"  method="post" action="StockManagement"  id="navee" onsubmit="return validateForm()" name="sForm" >
										<div class="form-group ">
											 
											 <input type="text" class="form-control" id="iN" name="itemName" placeholder="Item Name*"  title="This field can only contain string values!" >
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" id="bN" name="buyerName" placeholder="Buyer*"  title="This field can only contain string values!" >
                                             
										</div>
										
										<div class = "form-group">
										
												<select  name="itemCategory" id="iC"  class="form-control">
													  <option value="0">Category*</option>
													  <option>Beverages</option>
													  <option >Vegetables</option>
													   <option>Fruits</option>
													    <option>Fast Food</option>
     
</select>					
										
										</div>
										
										
										

									
										<div class="form-group">
											 
											 <input type="text" class="form-control" id = "bP" name="buyingPrice" placeholder="Buying Price*" pattern="[0-9]{2,}"  title="This field can only contain numeric values!" >
                                             
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" id="sP" name="sellingPrice" placeholder="Selling Price" pattern="[0-9]{2,}"  title="This field can only contain numeric values!"  >
                                             
										</div>
											<div class="form-group">
											 
											 <input type="text" class="form-control" id="iA" name="itemAmount" placeholder="Amount*" pattern="[0-9]{1,}"  title="This field can only contain numeric values!"  >
                                             
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" id="uP" name="unitPrice" placeholder="Unit Price*" pattern="[0-9]{2,}"  title="This field can only contain numeric values!"  >
                                             
										</div>
									
										<div class="form-group">
											 
											 <input type="text" class="form-control" name="discount" placeholder="Discount" pattern="[0-9]{2,}"  title="This field can only contain numeric values!"  >
                                             
									</div>
										
										 
         								 <div class="form-group">
											 <button type="submit" class="btn btn-success btn-block"><b>STOCK ITEM  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></b></button>
										</div>
										<div class="form-group">
            								 <button style="float: left" type="reset" value="Reset" class="btn btn-danger btn-block"><b>RESET</b></button>

         								 </div>
         								 <br /><br />
         								 <div class="form-group">
            								 <button onclick="location.href = 'currentStock.jsp';" id="myButton" style="float: left" type="reset" value="Reset" class="btn btn-info btn-block"><b>View Current Stock</b></button>

													<script type="text/javascript">
														    document.getElementById("myButton").onclick = function () {
														        location.href = "currentStock.jsp";
														    };
													</script>

         								 </div>
										
								 </form>
								 </div>
								 </div>
							</div>
							<br>
							<div class="col-md-2"></div>
							<div class="col-md-4">
							<h2 class="deepshd animated fadeIn" ><b>Warehouse Management</b></h2>
							
							    <div class="login-form animated bounceInRight">
                                <div class="main-div">
								 <form id="navee2"  class="form"  method="post" action="WarehouseManagement" accept-charset="UTF-8" name="wForm" >
										
									
										
										<div class = "form-group">
										
												<select  name="wItemCategory" id="wC"  class="form-control">
													  <option value="0">Category*</option>
													  <option>Kitchen</option>
													  <option >Hall</option>
													   
</select>					
										
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" id = "wItemN" name="wItemName" placeholder="Item Name*"  title="This field can only contain numeric values!"  >
                                             
										</div>
										<div class="form-group">
											 
											 <input type="text" class="form-control" id = "wqty" name="wItemQty" placeholder="Quantity*" pattern="[0-9]{1,}"  title="This field can only contain numeric values!"  >
                                             
										</div>
										 
         								 <div class="form-group">
											 <button type="submit" class="btn btn-success btn-block"><b>CHECK ITEM  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></b></button>
										</div>
										<div class="form-group">
            								 <button style="float: left" type="reset" value="Reset" class="btn btn-danger btn-block"><b>RESET</b></button>

         								 </div>
         								 <br /><br />
         								 <div class="form-group">
            								 <button onclick="location.href = 'warehouse.jsp';" id="myButton2" style="float: left" type="reset" value="Reset" class="btn btn-info btn-block"><b>LIST ITEMS</b></button>

													<script type="text/javascript">
														    document.getElementById("myButton2").onclick = function () {
														        location.href = "warehouse.jsp";
														    };
													</script>

         								 </div>
										
								 </form>
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

<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">NIC not found</h4>
            </div>
            <div class="modal-body">
				<p>please <a href=staffRegistration.jsp>register</a> to use the system</p>
                
            </div>
        </div>
    </div>
</div>

</body>
</html>


<script src="jq.js"></script>



</script>