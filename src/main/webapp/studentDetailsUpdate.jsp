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



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <!-- <div class="site-mobile-menu site-navbar-target">
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
            <a href="register.html" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
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
 -->
     <jsp:include page="headermenu.jsp"></jsp:include>
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
             <h2 class="mb-0"><b>Update Student Details</b></h2>
              <p>You are welcome in Gargi Memorial Institute of Technology</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="StudentHomepage.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Update Your Details</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">

<form method="post" action="save-student-update"> <!-- "viewProfile.jsp" page re=direct "form action -->

            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="row">
                        
                         
                   
                      
                     
                     
                     <div class="col-md-12 form-group">
                        <label for="mobileNumber"><b>Student Contact Number : </b></label>
                            <input type=number" id="mobileNumber" name="mobileNumber"   pattern="^[6-9]\d{9}$" title="Enter Valid Mobile Number"   value="${studentdetail.mobileNumber }" class="form-control form-control-lg">
                        </div>
                        
                        <div class="col-md-12 form-group">
                        <label for="alternatemobileNumber"><b>Enter Alternate Contact Number:</b></label>
                            <input type="number" id="alternatemobileNumber" name="alternatemobileNumber" pattern="^[6-9]\d{9}$" title="Enter Valid Mobile Number"  value="${studentdetail.alternatemobileNumber }"  class="form-control form-control-lg">
                        </div>
                        
                         <div class="col-md-12 form-group">
                        <label for="emailAddress"><b>Email Address :</b></label>
                            <input type="text" id="emailAddress" name="emailAddress" value="${studentdetail.emailAddress}" class="form-control form-control-lg">
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="fatherPhoneNo"><b> Guardian's Phone No. :</b></label>
                            <input type="number" id="fatherPhoneNo" name="fatherPhoneNo" value="${studentdetail.fatherPhoneNo}" class="form-control form-control-lg">
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        
                            <label for="motherPhoneNo"><b>Guardian's alternate Contact Number :</b></label>
                            <input type="number" id="motherPhoneNo" name="motherPhoneNo"pattern="^[6-9]\d{9}$" title="Enter Valid Mobile Number" value="${studentdetail.motherPhoneNo}"class="form-control form-control-lg" required>
                        </div>
                        
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="currentLocation"><b>Enter Student Currennt Location :</b></label>
                             <textarea class="form-control form-control-lg" rows="5" id="currentLocation"  name="currentLocation">${studentdetail.currentLocation}</textarea>
                        </div>
                        
                     
                        
                          <div class="col-md-12 form-group">
                        <label for="hobbies"><b>Hobbies (put comma and add) :</b></label>
                         <input type="text" id="hobbies" name="hobbies" value="${studentdetail.hobbies}" class="form-control form-control-lg">
                            
                        </div>
                        
                        
                              
                     
                         <div class="col-md-12 form-group">
                         <label for="foreignLanguageKnown"><b>Foreign Language Known :</b></label>
                       
                                            <div class="col-md-6">
                                            <div class="radio">
                                                <label><input type="radio" name="foreignLanguageKnown" value="yes">&nbsp;Yes</label>
                                              </div>
                                              <div class="radio">
                                                <label><input type="radio" name="foreignLanguageKnown" value="no">&nbsp;No</label>
                                              </div>
                                             
                                            </div>
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="foreignLanguageDetails"><b>Foreign Language (put comma and add) :</b></label>
                         <input type="text" id="foreignLanguageDetails" name="foreignLanguageDetails" value="${studentdetail.foreignLanguageDetails}" class="form-control form-control-lg">
                            
                        </div>
                        
                        
                          <div class="col-md-12 form-group">
                        <label for="indianLanguageDetails"><b>Indian Language (put comma and add) :</b></label>
                         <input type="text" id="indianLanguageDetails" name="indianLanguageDetails" value="${studentdetail.indianLanguageDetails}" class="form-control form-control-lg">
                            
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="subjectofInterest"><b>Subject of Interest (put comma and add) :</b></label>
                         <input type="text" id="subjectofInterest" name="subjectofInterest" value="${studentdetail.subjectofInterest}" class="form-control form-control-lg">
                            
                        </div>
                        
                        
                        
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="yourStrenghts"><b>Your Strengths :</b></label>
                        <textarea class="form-control form-control-lg" rows="4" id="yourStrenghts"  name="yourStrenghts">${studentdetail.yourStrenghts}</textarea>
                         
                            
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="yourWeakness"><b>Your Weaknesses :</b></label>
                        <textarea class="form-control form-control-lg" rows="4" id="yourWeakness"  name="yourWeakness">${studentdetail.yourWeakness}</textarea>
                         
                            
                        </div>
                        
                        <div class="col-md-12 form-group">
                        <label for="bloodGroup"><b>Enter Blood Group :</b></label>
                         <input type="text" id="bloodGroup" name="bloodGroup"  value="${studentdetail.bloodGroup}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="learningMethod"><b>Compatibility of Learning Method :</b></label>
                         <input type="text" id="learningMethod" name="learningMethod" value="${studentdetail.learningMethod}" class="form-control form-control-lg">
                            
                        </div>
                        
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="computerlanguageknown"><b>Computer Languages Known(put comma and add) : </b> </label>
                         <input type="text" id="computerlanguageknown" name="computerlanguageknown" value="${studentdetail.computerlanguageknown}"class="form-control form-control-lg">
                            
                        </div>
                        
                        
                         <div class="col-md-12 form-group">
                        <label for="interest"><b>Area of Interest :</b></label>
                         <input type="text" id="interest" name="interest" value="${studentdetail.interest}" class="form-control form-control-lg">
                            </div>
                            
                            
                             <div class="col-md-12 form-group">
                              <input type="hidden" value="${studentdetail.id}" name="id">
                        <label for="personalWish"><b>Personal Wishes :</b></label>
                         <input type="text" id="personalWish" name="personalWish" value="${studentdetail.personalWish}" class="form-control form-control-lg">
                            </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="futuregoal"><b>Future Goal :</b></label>
                         <input type="text" id="futuregoal" name="futuregoal"   value="${studentdetail.futuregoal }" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="lookingforjobOrhigherStudies"><b> Looking For :</b></label>
                                            <div class="col-md-6">
                                            <div class="radio">
                                                <label><input type="radio" name="lookingfor" value="higherstudies"><i>Higher Studies</i></label>
                                              </div>
                                              <div class="radio">
                                                <label><input type="radio" name="lookingfor" value="job"><i>Job</i></label>
                                              </div>
                                              
                                            </div>
                        </div>
                        
                        
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="firstsemsgpa"><b>First Semester SGPA :</b></label>
                         <input type="number" step="any" id="firstsemsgpa" name="firstsemsgpa"   value="${studentdetail.firstsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="secondsemsgpa"><b>Second Semester SGPA :</b></label>
                         <input type="number" step="any" id="secondsemsgpa" name="secondsemsgpa"   value="${studentdetail.secondsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="thirdsemsgpa"><b>Third Semester SGPA :</b></label>
                         <input type="number" step="any" id="thirdsemsgpa" name="thirdsemsgpa"   value="${studentdetail.thirdsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        <div class="col-md-12 form-group">
                        <label for="fourthsemsgpa"><b>Fourth Semester SGPA :</b></label>
                         <input type="number" step="any" id="fourthsemsgpa" name="fourthsemsgpa"   value="${studentdetail.fourthsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="fifthsemsgpa"><b>Fifth Semester SGPA :</b></label>
                         <input type="number" step="any" id="fifthsemsgpa" name="fifthsemsgpa"   value="${studentdetail.fifthsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        <div class="col-md-12 form-group">
                        <label for="sixthsemsgpa"><b>Sixth Semester SGPA :</b></label>
                         <input type="number" step="any" id="sixthsemsgpa" name="sixthsemsgpa"   value="${studentdetail.sixthsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        <div class="col-md-12 form-group">
                        <label for="seventhsemsgpa"><b>Seventh Semester SGPA :</b></label>
                         <input type="number" step="any" id="seventhsemsgpa" name="seventhsemsgpa"   value="${studentdetail.seventhsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                        
                        
                        <div class="col-md-12 form-group">
                        <label for="eighthsemsgpa"><b>Eighth Semester SGPA :</b></label>
                         <input type="number"step="any" id="eighthsemsgpa" name="eighthsemsgpa"   value="${studentdetail.eighthsemsgpa}" class="form-control form-control-lg" >
                            
                        </div>
                       
                       
                    </div>
                    <div class="row">
                        <div class="col-12">-
                            <input type="submit" value="Update Details" class="btn btn-primary btn-lg px-5">
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