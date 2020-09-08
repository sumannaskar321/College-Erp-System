<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    <div class="py-2 bg-light">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-9 d-none d-lg-block">
            <a href="#" class="small mr-3"><span class="icon-question-circle-o mr-2"></span> Have a questions?</a> 
            <a href="#" class="small mr-3"><span class="icon-phone2 mr-2"></span> 10 20 123 456</a> 
            <a href="#" class="small mr-3"><span class="icon-envelope-o mr-2"></span> info@mydomain.com</a> 
          </div>
          <div class="col-lg-3 text-right">
            <a href="login.html" class="small mr-3"><span class="icon-unlock-alt"></span> Log In</a>
           <!--  <a href="register.html" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a> -->
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="index.html" class="d-block">
              <img src="images/logo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>

         
        </div>
      </div>

    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0"><b>Other Details</b></h2>
              <p>You are welcome in Gargi Memorial Institute of Technology</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="Index.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <a href="studentRegister.jsp" ><span class="current">Student Register</span></a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <a href= " studentRegistrationPage2.jsp"><span class="current">Personal Details</span></a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <a href ="studentRegistrationPage3.jsp"><span class="current">Educational Details</span></a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Other Details</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">

<form method="post" action="studentRegistrationPage4"> <!-- form action -->

            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="row">
                    
              
                     <div class="col-md-12 form-group">
                        <label for="bloodGroup"><b>Choose Blood Group :</b></label>
                         <select id="bloodGroup" name="bloodGroup" class="form-control form-control-lg"  style="padding:10px;"> 
                         	 <option value="select">--Choose Option--</option>
                             <option value="A+">A+</option>
                             <option value="A-">A-</option>
                             <option value="B+">B+</option>
                             <option value="B-">B-</option>
                             <option value="AB+">AB+</option>
                             <option value="AB-">AB-</option>
                             <option value="O+">O+</option>
                             <option value="O-">O-</option>
                         </select>  
                        </div>
                        
                    
                        <div class="col-md-12 form-group">
                        <label for="hobbies"><b>Hobbies (put comma and add) :</b></label>
                         <input type="text" id="hobbies" name="hobbies"  class="form-control form-control-lg" required>
                            
                        </div>
                        
                        
                     
                        
                         
                         <div class="col-md-12 form-group">
                        <label for="subjectofInterest"><b>Subject of Interest (put comma and add) :</b></label>
                         <input type="text" id="subjectofInterest" name="subjectofInterest"  class="form-control form-control-lg">
                            
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="reasonChooseEng"><b>Reason For Choosing Engineering :</b></label>
                        <textarea class="form-control form-control-lg" rows="4" id="reasonChooseEng"  name="reasonChooseEng" required></textarea>
                         
                            
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="yourStrenghts"><b>Your Strengths :</b></label>
                        <textarea class="form-control form-control-lg" rows="4" id="yourStrenghts"  name="yourStrenghts" required></textarea>
                         
                            
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="yourWeakness"><b>Your Weaknesses :</b></label>
                        <textarea class="form-control form-control-lg" rows="4" id="yourWeakness"  name="yourWeakness" required></textarea>
                         
                            
                        </div>
                        
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="interest"><b>Area of Interest :</b></label>
                         <input type="text" id="interest" name="interest"  class="form-control form-control-lg" required>
                            </div>
                        
                        
                      
                         <div class="col-md-12 form-group">
                        <label for="futuregoal"><b>Future Goal :</b></label>
                         <input type="text" id="futuregoal" name="futuregoal"  class="form-control form-control-lg" required>
                            
                        </div>
                          

                  <div class="col-md-12 form-group">
                        <label for="password">Password:</label>
                         <input type="password" id="password" name="password"  title="Password must contain at least one letter, at least one number, and be longer than six charaters."  class="form-control form-control-lg" required>
                            
                        </div>
                        
                        
                        
                        
                        
                        
                      
                       
                       
                    </div>
                    <div class="row">
                        <div class="col-12">
                           <input type="submit" value="Upload Details" class="btn btn-primary btn-lg px-5">
                        </div>
                    </div>
                    
                </div>
            </div>
            
</form>
          
        </div>
    </div>

    

    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <p class="mb-4"><img src="images/logoo.jpg" alt="Image" class="img-fluid"></p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae nemo minima qui dolor, iusto iure.</p>  
            <p><a href="#">Learn More</a></p>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>Our Campus</span></h3>
            <ul class="list-unstyled">
                <li><a href="#">Acedemic</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">Our Interns</a></li>
                <li><a href="#">Our Leadership</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Human Resources</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Our Courses</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Math</a></li>
                  <li><a href="#">Science &amp; Engineering</a></li>
                  <li><a href="#">Arts &amp; Humanities</a></li>
                  <li><a href="#">Economics &amp; Finance</a></li>
                  <li><a href="#">Business Administration</a></li>
                  <li><a href="#">Computer Science</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Contact</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Help Center</a></li>
                  <li><a href="#">Support Community</a></li>
                  <li><a href="#">Press</a></li>
                  <li><a href="#">Share Your Story</a></li>
                  <li><a href="#">Our Supporters</a></li>
              </ul>
          </div>
        </div>

       
      </div>
    </div>
    

  </div>
  <!-- .site-wrap -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>

<!-- pattern="^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$" -->