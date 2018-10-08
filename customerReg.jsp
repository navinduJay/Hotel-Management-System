<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">




       <link href="cssNavindu/customerRegAnimation.css" rel="stylesheet">
      <link href="cssNavindu/bootstrap.min.css" rel="stylesheet">
      <link href="cssNavindu/contactUsStyles.css" rel="stylesheet">
      <link href="cssNavindu/stylish-portfolio.css" rel="stylesheet">
      <link href="cssNavindu/stylish-portfolio.min.css" rel="stylesheet">
      <link rel="stylesheet" href="cssNavindu/demo.css">
       <link href="scss/anime.css" rel="stylesheet">
       <link rel="stylesheet" href="cssNavindu/sociel.css">
       <link rel="stylesheet" href="cssNavindu/footer-basic-centered.css">
       <link href="cssNavindu/style.css" rel="stylesheet">
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


    <title>Contact Us</title>
  </head>
  <body>



    <!--Nav Bar-->
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
      <!--Nav Bar-->


      !------ Include the above in your HEAD tag ---------->

<div class="container">

<div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title"><h3><span>REGISTER</span></h3></div>

        </div>
        <div class="panel-body" >
            <form method="post" action=".">
                <input type='hidden' name='csrfmiddlewaretoken' value='XFe2rTYl9WOpV8U6X5CfbIuOZOELJ97S' />

                <div id="div_id_name" class="form-group required">
                    <label for="id_username" class="control-label col-md-4  requiredField"> Full Name<span class="asteriskField">*</span> </label>
                    <div class="controls col-md-8 ">
                        <input class="input-md  textinput textInput form-control" id="id_username" maxlength="30" name="username" style="margin-bottom: 10px" type="text" />
                    </div>
                </div>


                    <div id="div_id_username" class="form-group required">
                        <label for="id_username" class="control-label col-md-4  requiredField"> Username<span class="asteriskField">*</span> </label>
                        <div class="controls col-md-8 ">
                            <input class="input-md  textinput textInput form-control" id="id_username" maxlength="30" name="username"  style="margin-bottom: 10px" type="text" />
                        </div>
                    </div>

                    <div id="div_id_email" class="form-group required">
                        <label for="id_email" class="control-label col-md-4  requiredField"> E-mail<span class="asteriskField">*</span> </label>
                        <div class="controls col-md-8 ">
                            <input class="input-md emailinput form-control" id="id_email" name="email"  style="margin-bottom: 10px" type="email" />
                        </div>
                    </div>
                    <div id="div_id_phone" class="form-group required">
                        <label for="id_username" class="control-label col-md-4  requiredField"> Telephone<span class="asteriskField">*</span> </label>
                        <div class="controls col-md-8 ">
                            <input class="input-md  textinput textInput form-control" id="id_username" maxlength="30" name="username" style="margin-bottom: 10px" type="text" />
                        </div>
                    </div>
                    <div id="div_id_password1" class="form-group required">
                        <label for="id_password1" class="control-label col-md-4  requiredField">Password<span class="asteriskField">*</span> </label>
                        <div class="controls col-md-8 ">
                            <input class="input-md textinput textInput form-control" id="id_password1" name="password1" style="margin-bottom: 10px" type="password" />
                        </div>
                    </div>
                    <div id="div_id_password2" class="form-group required">
                         <label for="id_password2" class="control-label col-md-4  requiredField"> Re:password<span class="asteriskField">*</span> </label>
                         <div class="controls col-md-8 ">
                            <input class="input-md textinput textInput form-control" id="id_password2" name="password2" placeholder="Confirm your password" style="margin-bottom: 10px" type="password" />
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="controls col-md-offset-4 col-md-8 ">
                            <div id="div_id_terms" class="checkbox required">

                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="aab controls col-md-4 "></div>
                        <div class="controls col-md-8 ">
                            <input type="submit" name="Signup" value="Register" class="btn btn-primary btn btn-info" id="submit-id-signup" />

                    </div>

                </form>

            </form>
        </div>
    </div>
</div>
</div>





    </div>
  </div>
</div>




      <!-- Footer -->
      <footer class="footer-basic-centered">

       <p class="footer-company-motto"><b>Good Food | Good Vibes</b></p>

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
    <script src="jsNavindu/bootstrap.min.js"></script>
    <!--Google Maps-->
    <script src="jsNavindu/contactUsGoogleMap.js"></script>
    <script src="jsNavindu/stylish-portfolio.js"></script>
    <script src="jsNavindu/stylish-portfolio.min.js"></script>
    <script src="jsNavindu/myJs.js"></script>
     <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
</html>>
