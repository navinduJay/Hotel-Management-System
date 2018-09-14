<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
 <link href="css/bootstrap.min.css" rel="stylesheet">

          <link href="css/stylish-portfolio.css" rel="stylesheet">
          <link href="css/stylish-portfolio.min.css" rel="stylesheet">
          <link rel="stylesheet" href="css/demo.css">
           <link href="scss/anime.css" rel="stylesheet">
           <link rel="stylesheet" href="css/sociel.css">
           <link rel="stylesheet" href="css/footer-basic-centered.css">
           <link href="css/style.css" rel="stylesheet">
           <link href="css/customStylesPM.css" rel="Stylesheet">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
<meta charset="ISO-8859-1">
<title>Admin | Login</title>
</head>
<body>

    <!--Header-->
    <nav class="navbar navbar-default navbar-fixed-top">

        <ul>
            <li><a href="index.html"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.html"><b>Contact Us</b> </a></li>
            <ul  class="nav navbar-nav navbar-right">
                <li id="mylist"><button class="btn btn-success btn-lg"><i class="fas fa-user"></i></button> </li>
                <li id="mylist"><button class="btn btn-danger btn-lg"><i class="fas fa-user-tie"></i></button> </li>

            </ul>

        </ul>

    </nav>
      <!--Header-->
      <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Error</h4>
            </div>
            <div class="modal-body">
				<p>Check credentials and try again.</p>
                
            </div>
        </div>
    </div>
</div>
      
      <br><br><br><br><br>
      <div class="container" style="background-color: #ffff66">
      <form action=LoginStf class="form-horizontal" method=post>
            <fieldset>
            
            <!-- Form Name -->
            <h1 class=reg>Login</h1>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="textinput">NIC</label>  
              <div class="col-md-4">
              <input id="textinput" name="nic" placeholder="NIC" class="form-control input-md" required="" type="text">
                
              </div>
            </div>
            
            <!-- Password input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="passwordinput">Password</label>
              <div class="col-md-4">
                <input id="passwordinput" name="password" placeholder="Password" class="form-control input-md" required="" type="password">
                <span class="help-block"><a>forgot password?</a></span>
              </div>
            </div>
            
            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="singlebutton"></label>
              <div class="col-md-4">
                    <input type=submit  name="Submit" value="Login" >
              </div>
            </div>
            
            </fieldset>
            </form>
            </div>
            

      <!-- Footer -->
      <footer class="footer-basic-centered" style="position:fixed">

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






    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
  </body>
</html>