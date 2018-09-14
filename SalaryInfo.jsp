<%@page import="com.SaveDataStf"%>
<%@page import="java.io.PrintWriter"%>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <li><a href="profileStf.jsp">Dashboard</a></li>
                        <li class="active"><a href="employees.jsp">Employees</a></li>
                        <li><a href="">Reservation</a></li>
                        <li><a href="">Expenses</a></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Welcome, <%=sname %></a></li>
                        <li style="padding-top:15px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form></li>
                      </ul>
                    </div><!--/.nav-collapse -->
                </div>
              </nav>



    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span  aria-hidden="true"></span> Employees &nbsp;<small>Manage Salaries</small></h1>
          </div>

        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="profileStf.jsp">Dashboard</a></li>
          <li class="active">Salary</li>
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

              <a href="employees.jsp" class="list-group-item active main-color-bg"><span class="" aria-hidden="true"></span> Employees </a>
              <a href="posts.html" class="list-group-item"><span class="" aria-hidden="true"></span> Reservation </span></a>
              <a href="" class="list-group-item"><span class="" aria-hidden="true"></span> Expenses</a>
            </div>


          </div>
          
          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default" >

          
          <%SaveDataStf sd1 = (SaveDataStf)request.getAttribute("obj");%>
          <%String name =  sd1.getName(); %>
          <%String nic = sd1.getId(); %>
          
              <div class="panel-heading main-color-bg">
              <h3 class="panel-title"><%=name%></h3>
              </div>
              
          <%int basic=0; %>
          <%try{
        	  Class.forName("com.mysql.jdbc.Driver");
        	  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
        	  
			<%PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from transactions where nic=('"+nic+"')"); %>
            <%ResultSet rs = ps.executeQuery();%>
            
            <%while(rs.next()){
            	basic = rs.getInt("basic");%>
			<% } %>
			
              <div class="panel-body">
               <div class="row">
                    <div class="Left"><p class="text-center">Add the basic :</p></div>
                    <form action="SetBasic" method="post">
                    <input type="hidden" name=nic value="<%=nic%>"><input type="hidden" name="name" value="<%=name%>">
                    <div class="Right"><input type="text" name="basic" class="amount" placeholder="Rs." value="<%=basic%>">&nbsp;&nbsp;&nbsp;<input type="submit" value="Set" class="btn btn-success"></div>
                    </form>
  
                </div>   
                </div>
                
            
                
			<% }
			catch(Exception e){
        	System.out.println(e);
          	}
          	%>
                
                
                <br>
                
                <div class="updateLeft" >
                        <form class="form-horizontal" action="Deductions" method="post">
                        <input type="hidden" name=nic value="<%=nic%>">
                        <input type="hidden" name="name" value="<%=name%>">
                        <input type="hidden" name="basic" value="<%=basic%>">
                        <fieldset>
                                <h1 class=reg>Deductions</h1>
                        <div class="form-group">
                                <label class="col-md-4 control-label" for="amount">Amount</label>  
                                <div class="col-md-4">
                                <input id="amount" name="amount" placeholder="Amount" class="form-control input-md" type="text">
                                  
                                </div>
                              </div>
                              
                              <!-- Text input-->
                              <div class="form-group">
                                <label class="col-md-4 control-label" for="date">Date</label>  
                                <div class="col-md-4">
                                <input id="date" name="date" placeholder="Date" class="form-control input-md" type="date">
                               
                                </div>
                              </div>
                              <div class="form-group">
                                    <label class="col-md-4 control-label" for="sbmt"></label>
                                    <div class="col-md-8">
                                      <input type=submit value="Add">
                                    </div>
                                  </div>
                              </fieldset>
                        </form>
                </div>
                
                    
                <div class="updateRight">
                        <form class="form-horizontal" action="Increments" method="post">
						<input type="hidden" name=nic value="<%=nic%>">
						<input type="hidden" name="name" value="<%=name%>">
						<input type="hidden" name="basic" value="<%=basic%>">
                                <fieldset>
                                        <h1 class=reg>Increments</h1>
                                <div class="form-group">
                                        <label class="col-md-4 control-label" for="amount">Amount</label>  
                                        <div class="col-md-4">
                                        <input id="amount" name="amount" placeholder="Amount" class="form-control input-md" type="text">
                                          
                                        </div>
                                      </div>
                                      
                                      <!-- Text input-->
                                      <div class="form-group">
                                        <label class="col-md-4 control-label" for="date">Date</label>  
                                        <div class="col-md-4">
                                        <input id="date" name="date" placeholder="Date" class="form-control input-md" type="date">
                                       
                                        </div>
                                      </div>
                                      <div class="form-group">
                                            <label class="col-md-4 control-label" for="sbmt"></label>
                                            <div class="col-md-8">
                                              <input type=submit value="Add">
                                            </div>
                                          </div>
                                      </fieldset>
                                </form>
                                
                </div>
                <div class="container"><br><br><br></div>
                <table class="table table-striped table-hover">
                  <tr>
                    <th>NIC</th>
                    <th>Deduction amount</th>
                    <th>Deduction date</th>
                    <th>Increment amount</th>
                    <th>Increment date</th>
                  </tr>
                  
					<%try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/itpv01", "root", "root");%>
					<%PreparedStatement ps = con.prepareStatement("select * from transactions where nic=('"+nic+"')"); %>
					<%ResultSet rs = ps.executeQuery();%>
					<%int dtotal = 0; %>
					<%int itotal = 0; %>
					<%while(rs.next()){
						String tnic = rs.getString("nic");
						String damount = rs.getString("d_amount");
						String ddate = rs.getString("d_date");
						String iamount = rs.getString("i_amount");
						String idate = rs.getString("i_date");%>
						
						<% dtotal = dtotal + Integer.parseInt(damount); %>
						<% itotal = itotal + Integer.parseInt(iamount); %>
						
					<tr>
						<td><%=tnic %></td>
						<td><%=damount %></td>
						<td><%=ddate %></td>
						<td><%=iamount %></td>
						<td><%=idate %></td>
					</tr>	
						
						
					<% } %>
					
					<tr bgcolor="#8cff66">
						<td><p><b>Total ---></b></p></td>
						<td><b><%=dtotal %></b></td>
						<td>--</td>
						<td><b><%=itotal %></b></td>
						<td>--</td>
					</tr>

					<% }
					catch(Exception e){
					System.out.println(e);
					}
					%>
					




                  </table>

      
                    
              </div>
              </div>

          </div>
        </div>
      
    </section>
    <div class="container"><br></div>

    <footer class="footer-basic-centered">

  			<p class="footer-company-motto"><b>Good food | Good Vibes</b></p>

              <section id="lab_social_icon_footer">
                      <!-- Include Font Awesome Stylesheet in Header -->
                      
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



  <script>
     CKEDITOR.replace( 'editor1' );
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
	<h1 class=reg>Form Name</h1>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="nic">Enter NIC</label>  
	  <div class="col-md-4">
	  <input id="nic" name="nic" placeholder="Employee NIC" class="form-control input-md" type="text">
	  <span class="help-block">Add the nic of the employee you want to delete</span>  
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



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <%}else{%>
    <script type="text/javascript">
    window.location.href="http://localhost:8080/ITPv4/staffLogin.jsp";
    </script>
    <%}%>
  </body>
</html>
