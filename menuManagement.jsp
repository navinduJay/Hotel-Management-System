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

   <link href="css/style.css" rel="stylesheet">
   <link href="css/inventoryStyles.css" rel="stylesheet">
    <link href="css/inventoryStyles.css" rel="stylesheet">
   <link rel="stylesheet" href="css/sociel.css">
   <link rel="stylesheet" href="css/footer-basic-centered.css">
   <link rel="stylesheet" href="css/menuManagement.css">



   <script src="js/ie-emulation-modes-warning.js"></script>


    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
     <script src="js/myJS.js"></script>


   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >

 </head>

<body>

        <nav id="header" class="navbar navbar-fixed-top">
            <div id="header-container" class="container navbar-container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="brand" class="navbar-brand" href="#"></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="inventory.html">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div><!-- /.container -->
        </nav>
        <br /><br />
        <h1 class="xbootstrap"><b>Menu Management</b></h1>


        <div class="container">

<div class="col-md-4">

    <div class="form-area">
        <form action="AddMenuServlet" method="post">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center; "><i class="fas fa-plus-circle"></i> <b>ADD MENU ITEM</b></h3>
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
						<input type="text" class="form-control" id="name1" name="name" placeholder="Item Name" required>
					</div>
          <br />
					<div class="form-group">
						<input type="text" class="form-control" id="price1" name="price" placeholder="Price" required>
					</div>
          <br />
          <label>Add a Picture</label>
					<div class="form-group">
						<input type="file"  id="pic1" name="pic" placeholder="Subject">
					</div>

          <div class="form-group">
             <button type="reset" value="Reset" class="btn btn-danger">RESET</button>

          </div>

		   <div class="form-group">
             <input type="submit" id="submit1" name="submit" class="btn btn-success pull-right" value="ADD ITEM">

          </div><br /><br />
          <div class="form-group">

			   <input type="button" id="btn1" name="btn" class="btn btn-primary pull-right" onclick="myFunction()" value="CHECK">
          </div><br />





        </form>

    </div>



</div>


<div class="col-md-8">
<div id="myDIV" style="display:none">


	<div class="jumbotron">
	<hr class="my-4">
  <h2 class="display-4"><b><mark>Regular Menu </mark><button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  <hr class="my-4">

  <%


  	try{

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>

		<% Statement st = con.createStatement();%>

		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'R%' ");%>

		<% while(rs.next()) {%>


			<% int menu_id = rs.getInt("menu_id"); %>
			<% String menu_type= rs.getString("menu_type");%>
			<% String menu_item_name = rs.getString("menu_item_name");%>
			<% String menu_item_price = rs.getString("menu_item_price");%>
			<% Blob menu_item_pic = rs.getBlob("menu_item_pic");%>


			<div class="row">
			  <div class="column" style="background-color:#aaa;">

			    <p><%=menu_item_name %></p>
			  </div>
			  <div class="column" style="background-color:#bbb;">

			    <img src="img/<%=menu_item_pic%>"  height="100" width="150">
			  </div>
			  <div class="column" style="background-color:#ccc;">

			    <p><%=menu_item_price %></p>
			  </div>
			</div>




		<% }

		}catch(Exception e){

			System.out.println("Failed");
			System.out.println(e);


	}%>

  <hr class="my-4">
  <h2 class="display-4"><b><mark>Catering Menu</mark></mark> <button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  <hr class="my-4">


 	<% try{

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>

		<% Statement st = con.createStatement();%>

		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'C%' ");%>

		<% while(rs.next()) {%>

			<% int menu_id = rs.getInt("menu_id"); %>
			<% String menu_type = rs.getString("menu_type");%>
			<% String menu_item_name = rs.getString("menu_item_name");%>
			<% String menu_item_price = rs.getString("menu_item_price");%>
			<% String menu_item_pic = rs.getString("menu_item_pic");%>


		<div class="row">
			  <div class="column" style="background-color:#aaa;">

			    <p><%=menu_item_name %></p>
			  </div>
			  <div class="column" style="background-color:#bbb;">

			    <image src="<%=menu_item_pic%>"  height="100" width="150">
			  </div>
			  <div class="column" style="background-color:#ccc;">

			    <p><%=menu_item_price %></p>
			  </div>
			</div>

		<% }

		}catch(Exception e){

			System.out.println("Failed");
			System.out.println(e);


	}%>


    <hr class="my-4">
  <h2 class="display-4"><b><mark>Hall Menu </mark><button id="btn2" name="btn" class="btn btn-primary pull-right" onclick="" value="EDIT"><i class="fas fa-edit"></i></button></b></h2>
  <hr class="my-4">


		<% try{

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sujanee_hotel" , "root", "root");%>

		<% Statement st = con.createStatement();%>

		<%ResultSet rs = st.executeQuery("select * from menu_mgmt where menu_type like 'H%' ");%>

		<% while(rs.next()) {%>

			<% int menu_id = rs.getInt("menu_id"); %>
			<% String menu_type= rs.getString("menu_type");%>
			<% String menu_item_name = rs.getString("menu_item_name");%>
			<% String menu_item_price = rs.getString("menu_item_price");%>
			<% String menu_item_pic = rs.getString("menu_item_pic");%>


			<div class="row">
			  <div class="column" style="background-color:#aaa;">

			    <p><%=menu_item_name %></p>
			  </div>
			  <div class="column" style="background-color:#bbb;">

			    <img src="<%=menu_item_pic%>"  height="100" width="150">
			  </div>
			  <div class="column" style="background-color:#ccc;">

			    <p><%=menu_item_price %></p>
			  </div>
			</div>

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




</div>


    <!-- Footer -->
    <footer class="footer-basic-centered">

			<p class="footer-company-motto"><b>Good Food | Good Vibes</b></p>

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

		</footer>



<script src="js/menuManagementJS.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/inventoryJS.js"></script>



</body>


</html>
