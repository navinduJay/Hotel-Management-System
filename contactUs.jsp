<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



	    
      <link rel="stylesheet" href="css/animate.min.css">
     <link rel="stylesheet" href="css/aos-master/dist/aos.css" />
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="cssNavindu/contactUsStyles.css" rel="stylesheet">
      <link href="css/stylish-portfolio.css" rel="stylesheet">
      <link href="css/stylish-portfolio.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/demo.css">
       <link href="scss/anime.css" rel="stylesheet">
       <link rel="stylesheet" href="css/sociel.css">
       <link rel="stylesheet" href="css/footer-basic-centered.css">
       <link href="css/style.css" rel="stylesheet">
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


    <title>Contact Us</title>
  </head>
  <body background="img/back2.jpg">



    <!--Nav Bar-->
    <nav class="navbar navbar-default navbar-fixed-top">

        <ul>
            <li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.html"><b>Contact Us</b> </a></li>
            <ul  class="nav navbar-nav navbar-right">
                <li id="mylist"><button class="btn btn-success btn-lg"><i class="fas fa-user"></i></button> </li>
                <li id="mylist"><button class="btn btn-danger btn-lg"><i class="fas fa-user-tie"></i></button> </li>

            </ul>

        </ul>

    </nav>
      <!--Nav Bar-->

      <!--Form-->
      <br /> <br />
      <div class="container-fluid">

    <div class="row main" >
      <div class="col-md-5 animated fadeIn" >
      <div class="main-login main-center" >



        <form  method="post" action="ContactUs" >

          <div class="form-group" >
            <label for="name" class="cols-sm-2 control-label">Name</label>
            <div class="cols-sm-10">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" required/>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="email" class="cols-sm-2 control-label">Email</label>
            <div class="cols-sm-10">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                <input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email" required/>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="username" class="cols-sm-2 control-label">Subject</label>
            <div class="cols-sm-10">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                <input type="text" class="form-control" name="subject" id="username"  placeholder="Subject" required/>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="password" class="cols-sm-2 control-label">Message</label>
            <div class="cols-sm-10">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                <input type="textarea" class="form-control" name="message" id="password"  placeholder="Enter your Message" required/>
              </div>
            </div>
          </div>


          <div class="form-group ">
           <h1><input type="submit" class="btn btn-primary" value="Send"></h1>
          </div>

        </form>
      </div>
    </div>


    <div class="col-md-5 animated bounceInUp">



    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.105093851559!2d79.98641121416203!3d6.878011020850108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2516afa9f2df7%3A0xfb1d96d68a3e8f10!2sSujanee+Food+Center!5e0!3m2!1sen!2slk!4v1531332395242" width="600" height="450" frameborder="0" style="border:0"></iframe>



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









    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!--Google Maps-->
    <script src="js/contactUsGoogleMap.js"></script>
    <script src="js/stylish-portfolio.js"></script>
    <script src="js/stylish-portfolio.min.js"></script>
    <script src="js/myJs.js"></script>
     <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     <script src="css/aos-master/dist/aos.js"></script>
     <script  type="text/javascript">
	
	AOS.init({
		
		duration: 1000,
		
	});
</script>

  </body>
</html>
