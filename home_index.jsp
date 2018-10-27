<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Home Page</title>

    <!-- Bootstrap -->
      <link rel="stylesheet" href="cssNavindu/animate.min.css">
     <link rel="stylesheet" href="cssNavindu/aos-master/dist/aos.css" />
    <link href="cssNavindu/bootstrap.min.css" rel="stylesheet">
     <link href="cssNavindu/customerlogin.css" rel="stylesheet">
    <link href="cssNavindu/stylish-portfolio.css" rel="stylesheet">
    <link href="cssNavindu/stylish-portfolio.min.css" rel="stylesheet">
    <link href="scss/anime.css" rel="stylesheet">
    <link rel="stylesheet" href="cssNavindu/demo.css">
    <link rel="stylesheet" href="cssNavindu/sociel.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">



	<link rel="stylesheet" href="cssNavindu/footer-basic-centered.css">


    <link href="cssNavindu/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">


  </head>
  <body>
  
  <% session = request.getSession(); %>
  <% String name = (String)session.getAttribute("name"); %>

<%if(name == null){ %>

	<!--Nav Bar-->
    <nav class="navbar navbar-default navbar-fixed-top">
	<div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.jsp"><b>Contact Us</b> </a></li>
             <li> <a href=""><b></b> </a></li>


            </ul>
			<ul  class="nav navbar-nav navbar-right">
            <li style="padding-right:75px;padding-top:10px"><p><a href="login.jsp" role="button" class="btn">Login</a></p></li><br>
            </ul>

	</div>
    </nav>
      <!--Nav Bar-->


    <!--Carousel-->

	<div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="" contenteditable="false"></li>
          <li data-target="#myCarousel" data-slide-to="1" class="active" contenteditable="false"></li>
          <li data-target="#myCarousel" data-slide-to="2" class="" contenteditable="false"></li>
      </ol>
      <div class="carousel-inner">
          <div class="item" style="">
              <img src="img/hd1.png" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Greater Service</h4>
                  <p class="">
                     We have always customers satisfaction
                  </p>
              </div>
          </div>
          <div class="item active">
              <img src="img/hdfour.jpg" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Second Slide Title</h4>

                  <p class="">
                     Description for Second Slide, this is Second Slide.
                  </p>
              </div>
          </div>
          <div class="item" style="">
              <img src="img/roomhd.jpg" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Third Slide Title</h4>

                              <p class="">
                     Description for Third Slide, this is Third Slide.
                  </p>
              </div>
          </div>
      </div>

      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
      </a>

      <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
      </a>


  </div>
   <!--Carousel-->

    <section class="content-section bg-primary text-white text-center" id="services">

        <div class="container">
          <div class="content-section-heading">
            <h3 class="text-secondary mb-0">Our Services</h3>
            <h2 class="mb-5"></h2>
          </div>

      </section>

      <section class="content-section bg-info text-white text-center" id="services">
          <div class="container">
              <div class="content-section-heading">
                <h3 class="text-secondary mb-0">a dyanamic form</h3>
                <h2 class="mb-5"></h2>
              </div>
        </section>


        <!-- Map -->
    <section id="contact" class="map">
    <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.105093851559!2d79.98641121416203!3d6.878011020850108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2516afa9f2df7%3A0xfb1d96d68a3e8f10!2sSujanee+Food+Center!5e0!3m2!1sen!2slk!4v1531332395242" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></iframe>
            <br/>
            <small>
              <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
            </small>
    </section>



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






















    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/customerLogin.js"></script>

    <script src="js/stylish-portfolio.js"></script>
    <script src="js/stylish-portfolio.min.js"></script>
    <script src="js/myJs.js"></script>
     <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
  	<%
		} else {
	%>

	
	<!--Nav Bar-->
    <nav class="navbar navbar-default navbar-fixed-top">
		<div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="home_index.jsp"><i class="fas fa-home"></i></a></li>


            <li><a href="about.html"><b>About</b></a></li>
            <li> <a href="contactUs.jsp"><b>Contact Us</b> </a></li>
             <li> <a href="rooms.jsp"><b>Rooms </b> </a></li>
             <li> <a href="cusMenuView.jsp"><b>Our Menu</b> </a></li>


            </ul>
			<ul  class="nav navbar-nav navbar-right">
            <li style="padding-right:65px;padding-top :12px"><p id="dem"><a href="prfle.jsp">login</a></p></li>
            <li style="padding-right:30px;padding-top :9px"><form action="logoutuser.jsp" method="post"><Button class="btn">Logout</Button></form></li>
            <li style="padding-right:30px;padding-top :9px"><form action="prfle.jsp" method="post"><Button class="btn">Profile</Button></form></li>
            </ul>

            </div>

	<script type="text/javascript">
 	document.getElementById("dem").innerHTML = "Welcome , <%=name%>"
	</script>
    </nav>
      <!--Nav Bar-->


    <!--Carousel-->

	<div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="" contenteditable="false"></li>
          <li data-target="#myCarousel" data-slide-to="1" class="active" contenteditable="false"></li>
          <li data-target="#myCarousel" data-slide-to="2" class="" contenteditable="false"></li>
      </ol>
      <div class="carousel-inner">
          <div class="item" style="">
              <img src="img/hd1.png" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Greater Service</h4>
                  <p class="">
                     We have always customers satisfaction
                  </p>
              </div>
          </div>
          <div class="item active">
              <img src="img/hdfour.jpg" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Second Slide Title</h4>

                  <p class="">
                     Description for Second Slide, this is Second Slide.
                  </p>
              </div>
          </div>
          <div class="item" style="">
              <img src="img/roomhd.jpg" alt="" class="">
              <div class="carousel-caption" style="background:black; opacity: .6; ">
                  <h4 class="">Third Slide Title</h4>

                              <p class="">
                     Description for Third Slide, this is Third Slide.
                  </p>
              </div>
          </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
      </a>

      <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
      </a>


  </div>
   <!--Carousel-->

    <section class="content-section bg-primary text-white text-center" id="services">

        <div class="container">
          <div class="content-section-heading">
            <h3 class="text-secondary mb-0">Our Services</h3>
            <h2 class="mb-5"></h2>
          </div>

      </section>

      <section class="content-section bg-info text-white text-center" id="services">
          <div class="container">
              <div class="content-section-heading">
                <h3 class="text-secondary mb-0">a dyanamic form</h3>
                <h2 class="mb-5"></h2>
              </div>
        </section>


        <!-- Map -->
    <section id="contact" class="map">
    <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.105093851559!2d79.98641121416203!3d6.878011020850108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2516afa9f2df7%3A0xfb1d96d68a3e8f10!2sSujanee+Food+Center!5e0!3m2!1sen!2slk!4v1531332395242" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></iframe>
            <br/>
            <small>
              <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
            </small>
    </section>



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






















    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="jsNavindu/bootstrap.min.js"></script>
    <script src="jsNavindu/customerLogin.js"></script>

    <script src="jsNavindu/stylish-portfolio.js"></script>
    <script src="jsNavindu/stylish-portfolio.min.js"></script>
    <script src="cssNavindu/aos-master/dist/aos.js"></script>
    <script src="jsNavindu/myJs.js"></script>
     <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
          <script  type="text/javascript">

	AOS.init({

		duration: 1000,

	});
</script>
  </body>
	<%
		}
	%>

</html>
    