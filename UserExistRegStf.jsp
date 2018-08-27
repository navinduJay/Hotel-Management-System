<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register | Admin</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
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
</head>
<body>

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
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Error</h4>
            </div>
            <div class="modal-body">
				<p>User already exist in the system.</p>
                
            </div>
        </div>
    </div>
</div>


  <!--Header-->
  
<br><br>
  
  <div class="container" style="background-color: #ffff66">
      <form action="RegisterStf" class="form-horizontal" method=post>
        
        
        <fieldset>
        <h1 class="reg"> Registration</h1>
 
       
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Full Name </label>  
          <div class="col-md-4">
          <input id="textinput" name="name" placeholder="Full Name" class="form-control input-md" required="" type="text">
            
          </div>
        </div>
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Address </label>  
          <div class="col-md-4">
          <input id="textinput" name="address" placeholder="Address" class="form-control input-md" type="text">
            
          </div>
        </div>
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Date of Birth</label>  
          <div class="col-md-4">
          <input id="textinput" name="dob" placeholder="DD/MM/YYYY" class="form-control input-md" required="" type="text">
            
          </div>
        </div>
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">NIC Number</label>  
          <div class="col-md-4">
          <input id="textinput" name="nic" placeholder="NIC" class="form-control input-md" required="" type="text">
            
          </div>
        </div>
        
        <!-- Password input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="passwordinput">Password</label>
          <div class="col-md-4">
            <input id="passwordinput" name="password" placeholder="Password" class="form-control input-md" type="password">
            <span class="help-block">minimum of eight (8) characters in length</span>
          </div>
        </div>
        
        <!-- Password input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="passwordinput">Re-enter Password </label>
          <div class="col-md-4">
            <input id="passwordinput" name="rpwd" placeholder="Re-enter Password " class="form-control input-md" required="" type="password">
            
          </div>
        </div>
        
        <!-- Select Basic -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="selectbasic">Security question 1</label>
          <div class="col-md-4">
            <select id="selectbasic" name="selectbasic" class="form-control">
              <option value="1">What was your childhood nickname?</option>
              <option value="2">What was your favorite food as a child?</option>
              <option value="3">In what town was your first job?</option>
              <option value="4">What was the name of the hospital where you were born?</option>
              <option value="5">What was the name of your second pet?</option>
            </select>
          </div>
        </div>
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Answer</label>  
          <div class="col-md-4">
          <input id="textinput" name="ans1" placeholder="" class="form-control input-md" required="" type="text">
            
          </div>
        </div>
        
        <!-- Select Basic -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="selectbasic">Security question 2</label>
          <div class="col-md-4">
            <select id="selectbasic" name="selectbasic" class="form-control">
              <option value="1">Who was your childhood hero?</option>
              <option value="2">Question 2</option>
              <option value="3">Question 3</option>
              <option value="4">Question 4</option>
              <option value="5">Question 5</option>
            </select>
          </div>
        </div>
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Answer</label>  
          <div class="col-md-4">
          <input id="textinput" name="ans2" placeholder="" class="form-control input-md" required="" type="text">
            
          </div>
        </div>
        
        <!-- Button (Double) -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="button1id"></label>
          <div class="col-md-8">
            
            <input type=submit  name="Submit" value="Submit" >
            <input type=reset value="Reset" >
            
          </div>
        </div>
        
        </fieldset>
        </form>
        </div>
        

  <!-- Footer -->
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






<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

</body>
</html>                            