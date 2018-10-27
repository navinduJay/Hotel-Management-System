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
    <title>Admin Area | Employees</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="css/footer-basic-centered.css">
    <link href="css/customStylesPM.css" rel="Stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">



  </head>
  <body>
  
  <% session = request.getSession(); %>
<% String snic = (String)session.getAttribute("snic");%>
<% String sname = (String)session.getAttribute("sname"); %>

<%if(snic!=null){ %>  

    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Admin Dashboard</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.html">Dashboard</a></li>
              <li><a href="">Salary</a></li>
              <li><a href="">Reservation</a></li>
              <li><a href="">Expenses</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">Welcome, <%=sname %></a></li>
              <li style="padding-top:10px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form></li>
            </ul>
          </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span  aria-hidden="true"></span>Employees &nbsp;<small>Manage Employees</small></h1>
          </div>

        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="profileStf.jsp">Dashboard</a></li>
          <li class="active">Users</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <a href="profileStf.jsp" class="list-group-item">
                <span class=""  aria-hidden="true"></span> Dashboard
              </a>
              <a href="employees.jsp" class="list-group-item active main-color-bg"><span class="" aria-hidden="true"></span>Employees</a>
              <a href="Manual_Reservation.jsp" class="list-group-item"><span class="" aria-hidden="true"></span> Reservation</a>
              <a href="menuManagement.jsp" class="list-group-item"><span class="" aria-hidden="true"></span>Inventory</a>
              <a href="calendar.jsp" class="list-group-item"><span class="" aria-hidden="true"></span>Calendar</a>
            </div>


          </div>
          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default" >
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Users</h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                    
                        <table class="table table-striped table-hover animated bounceInUp">
                            <tr>
                              <th width=60%><p class="text-center">Add Employees</p></th>
                              <th><button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-success" style="width:108px">Add</button> </th>
                              <th></th>
                            </tr>
                        </table>
                        
                    </div>
                  </div>
                <div class="row">
                      <div class="col-md-12">
                          <input class="form-control" type="text" placeholder="Filter Users...">
                      </div>
                </div>
                <br>
               
                <table class="table table-striped table-hover animated bounceInUp">
                      <tr>
                        <th>NIC</th>
                        <th>Name</th>
                        <th>Joined</th>
                        <th></th>
                      </tr>
                      
                    <%String nic="pamu",name=null,jdate=null; %>  
                    <%try{
 							Class.forName("com.mysql.jdbc.Driver");
 							Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
 							
 							<%PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from employee"); %>
            				
            				<%ResultSet rs = ps.executeQuery();%>
            				
            				<%while(rs.next()){
            					String tnic = rs.getString("nic");
            					String tname = rs.getString("name");
            					String tdate = rs.getString("joindate"); %>
            					
            				
							<tr>
									
                        			<td><input type=text name=nic value="<%=tnic %>" readonly ></td>
                        			<td><%=tname %></td>
                        			<td><%=tdate %></td>
                        			<form action="SalaryInfo" method="post">	
                        			<input type=hidden name="tnic" value="<%=tnic %>">
                        			<input type=hidden name="tname" value="<%=tname %>">
                        			<td><button class="btn btn-default" type=submit style="width:108px">View profile</button></form>
                        			<button class="btn btn-danger" type=submit data-toggle="modal" data-target="#deletemodal">Delete profile</button>
                        			
									<div id="deletemodal" class="modal fade">
									<div class="modal-dialog">
									<div class="modal-content">
	          							<div class="modal-header">
	          							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	              							<h4 class="modal-title">Sujanee City Hotel</h4>
	          							</div>
          							<div class="modal-body">
            						<form class="form-horizontal" action="DeleteEmployee" method="post">
									<fieldset>
									<!-- Form Name -->
									<h1 class=reg>Confirm..</h1>
	
									<!-- Text input-->
									<div class="form-group">
									<label class="col-md-4 control-label" for="tnic"></label>  
									<div class="col-md-4">
									<input id="tnic" name="tnic" class="form-control input-md" type="hidden" value="<%=tnic%>">
									<span class="help-block">Are you sure you want to delete?</span>  
									</div>
									</div>
	
									<!-- Button -->
									<div class="form-group">
									<label class="col-md-4 control-label" for="btn"></label>
									<div class="col-md-4">
									<button id="btn" name="btn" class="btn btn-danger" type="submit">Delete</button>
									</div>
									</div>
	
									</fieldset>
									</form>
							              
							</div>
							</div>
							</div>
							</div>
                        			
                        		</td>
                      		</tr>
            					
            					
            				
 							
 						<% 	}
            			}catch(Exception e){
							System.out.println(e);
            			}%>
 							
                      
                      
                    </table>
                  
                    
                    
              </div>
              </div>

          </div>
        </div>
      
    </section>

	<footer class="footer-basic-centered">

		<p class="footer-company-motto">
			<b>Good Food | Good Vibes </b>
		</p>

		<section id="lab_social_icon_footer">
			<!-- Include Font Awesome style sheet in Header -->
			<link
				href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
				rel="stylesheet">
			<div class="container">
				<div class="text-center center-block">
					<a href="https://www.facebook.com/"><i id="social-fb"
						class="fa fa-facebook-square fa-3x social"></i></a> <a
						href="https://twitter.com/"><i id="social-tw"
						class="fa fa-twitter-square fa-3x social"></i></a> <a
						href="https://plus.google.com/"><i id="social-gp"
						class="fa fa-google-plus-square fa-3x social"></i></a> <a
						href="mailto:#"><i id="social-em"
						class="fa fa-envelope-square fa-3x social"></i></a>
				</div>
			</div>
		</section>


		<p class="footer-company-name">
			<b>Hotel Sujanee &copy; 2018</b>
		</p>
		<address>
			<small><font color="#989898">Tel : +94 112 078 517<br />
					Athurugiriya Rd,Sri Lanka.
			</font> </small>
		</address>

		<small><font color="#ffffff"> <b>Designed and
					Developed by 404 Solutions</b>
		</font> </small>

	</footer>



	<script>
		CKEDITOR.replace('editor1');
	</script>


<!--Add employee modal-->


<div id="myModal" class="modal fade">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
          
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">Sujanee City Hotel</h4>
          </div>
          <div class="modal-body">
            
            <form class="form-horizontal" action="AddEmployee" method="post">
              <fieldset>
              
              <!-- Form Name -->
              <h1 class=reg>Add Employees</h1>
              
              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="name">Name</label>  
                <div class="col-md-4">
                <input id="name" name="name" placeholder="Name" class="form-control input-md" type="text">
                  
                </div>
              </div>
              
              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="nic">NIC</label>  
                <div class="col-md-4">
                <input id="nic" name="nic" placeholder="NIC" class="form-control input-md" type="text">
                  
                </div>
              </div>
              
              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="join">Joined</label>  
                <div class="col-md-4">
                <input id="join" name="join" placeholder="Joined date" class="form-control input-md" type="text">
                  
                </div>
              </div>
              
              <!-- Button (Double) -->
              <div class="form-group">
                <label class="col-md-4 control-label" for="sbmt"></label>
                <div class="col-md-8">
                  <input type=submit value="Add">
                  <input type=reset value="Reset">
                </div>
              </div>
              
              </fieldset>
              </form>
              
      
      
              
          </div>
      </div>
  </div>
</div>


<!-- Delete Employee -->





    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
        <%}else{%>
    	<script type="text/javascript">
    	window.location.href = "http://localhost:8080/FinalITP/staffLogin.jsp";
    	</script>
    <%}%>
    
  </body>
</html>
