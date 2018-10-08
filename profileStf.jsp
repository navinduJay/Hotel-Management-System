<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="css/footer-basic-centered.css">
         <link rel="stylesheet" href="css/footer-basic-centered.css">
    <link href="css/customStylesPM.css" rel="Stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  </head>
  <body>
  
<% session = request.getSession(); %>
<% String nic = (String)session.getAttribute("snic");%>
<% String name = (String)session.getAttribute("sname"); %>

<%if(nic!=null){ %>  

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
            <li><a href="">Inventory</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Welcome, <%=name %></a></li>
            <li style="padding-top:10px"><form action="logout.jsp" method="post"><button type="submit" class="btn btn-danger">Logout</button></form></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span class="" aria-hidden="true"></span> Dashboard <small>Management tools</small></h1>
          </div>
          
        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li class="active">Dashboard</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <a href="profileStf.jsp" class="list-group-item active main-color-bg">
                <span class="" aria-hidden="true"></span> Dashboard
              </a>
              <a href="employees.jsp" class="list-group-item"><span class="" aria-hidden="true"></span>Employees</a>
              <a href="Manual_Reservation.jsp" class="list-group-item"><span class="" aria-hidden="true"></span> Reservation</a>
              <a href="menuManagement.jsp" class="list-group-item"><span class="" aria-hidden="true"></span>Inventory</a>
              <a href="calendar.jsp" class="list-group-item"><span class="" aria-hidden="true"></span>Calendar</a>
              
            </div>


          </div>
          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Tools</h3>
              </div>
              <div class="panel-body">
                <a href="employees.jsp">
                <div class="col-md-3">
                  <div class="well dash-box">
                    
                    <h1><span class="" aria-hidden="true" style="padding-left:33%;"></span></h1>
                    <h4 style="padding-left:12%;">Employees</h4>
                    
                  </div>
                </div>
                </a>
                <a href="Manual_Reservation.jsp">
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h1><span class="" aria-hidden="true" style="padding-left:33%;"></span> </h1>
                    <h4 style="padding-left:12%;">Reservations</h4>
                  </div>
                </div>
                </a>
                <a href="menuManagement.jsp">
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h1><span class="" aria-hidden="true" style="padding-left:33%;"></span> </h1>
                    <h4 style="padding-left:20%;">Inventory</h4>
                  </div>
                </div>
                </a>
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h2><span class="" aria-hidden="true"></span> </h2>
                    <h4></h4>
                  </div>
                </div>
              </div>
              </div>

              
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">Notifications</h3>
                </div>
                <div class="panel-body">
                  <table class="table table-striped table-hover">
                      <tr>
                        <th>######</th>
                        <th>######</th>
                        <th>######</th>
                      </tr>

                     
                    </table>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>

    <footer class="footer-basic-centered">

  			<p class="footer-company-motto"><b>Good food | Good Vibes</b></p>

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
                      </section>


  			<p class="footer-company-name"><b>Hotel Sujanee &copy; 2018</b></p>

  		</footer>



  <script>
     CKEDITOR.replace( 'editor1' );
 </script>

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




        