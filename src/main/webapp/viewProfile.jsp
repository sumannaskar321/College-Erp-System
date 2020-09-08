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

      <div class="container"> -->
        
        <jsp:include page="headermenu.jsp"></jsp:include>
        
        
<!--               </div>

    </header> -->

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0"><b>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Student Details</b></h2>
              <p>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
              &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
              Welcome in Gargi Memorial Institute Of Technology</p>
            </div>
          </div>
        </div>
      </div> 
    
      
    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="viewProfile.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">View Details</span>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-5">
        <dl class="row">
        <dt class="col-sm-5">University Roll no :</dt>
        <dd class="col-sm-7">${student.rollNo}</dd>
      
        <dt class="col-sm-5">University Reg no :</dt>
        <dd class="col-sm-7">${student.registration}</dd>
      
        <dt class="col-sm-5">Email :</dt>
        <dd class="col-sm-7">${student.emailAddress}</dd>
      
        <dt class="col-sm-5 text-truncate">Phone no :</dt>
        <dd class="col-sm-7">${student.mobileNumber}</dd>
        
        <dt class="col-sm-5 text-truncate"> Alternate Ph no :</dt>
        <dd class="col-sm-7">${student.alternatemobileNumber}</dd>
        
      </dl>
    </div>

    <div class="col-sm-7">
      <dl class="row">
      
    
    
    <dt class="col-sm-4">Date-of-Birth :</dt>
      <dd class="col-sm-8">${student.studentDob}
      </dd>
      
      <dt class="col-sm-4">Gender :</dt>
      <dd class="col-sm-8">${student.gender}
      </dd>
    
    
    <dt class="col-sm-4">Batch :</dt>
      <dd class="col-sm-8">${student.batch}
      </dd>
    
    
    
    <dt class="col-sm-4">Department :</dt>
      <dd class="col-sm-8">${student.department}
      </dd>
    
    
    
      
      
    </dl>
  </div>
  </div>
  <div class="row">
      
    <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Personal Details</h5></samp></div>
  </div>
  <div class="row">
    
    <div class="col-sm-6">
    <dl class="row">
    
    <dt class="col-sm-6">Nationality :</dt>
      <dd class="col-sm-6">${student.nationality}
      </dd>
    
    
    <dt class="col-sm-6"> Category :</dt>
      <dd class="col-sm-6">${student.catagory}
      </dd>
    <dt class="col-sm-6">Father's name :</dt>
    <dd class="col-sm-6">${student.fatherName}</dd>
    <dt class="col-sm-6">Mother's name :</dt>
    <dd class="col-sm-6">${student.motherName}</dd>
    <dt class="col-sm-6">Father's Occupation :</dt>
    <dd class="col-sm-6">${student.fatheroccupation}</dd>
    
    <dt class="col-sm-6 ">Guardian's Ph no :</dt>
    <dd class="col-sm-6">${student.fatherPhoneNo}</dd>

    <dt class="col-sm-6 text-truncate">Guadian's Alternate ph no :</dt>
    <dd class="col-sm-6">${student.motherPhoneNo}</dd>

   
  <dt class="col-sm-6">Current Location :</dt>
      <dd class="col-sm-6">${student.currentLocation}
      </dd>
      <dt class="col-sm-6">Permanent Location :</dt>
      <dd class="col-sm-6">${student.permenantLocation}
      </dd>
  </dl>
</div></div>

  
    <div class="row">
      
      <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Educational Details</h5></samp></div>
    </div>
    
      <dl class="row">
      
      
      
       <dt class="col-sm-3">Madhyamik Percentage :</dt>
        <dd class="col-sm-9">${student.class10Marks}%</dd>
    
    
    <dt class="col-sm-3">Highest Study Percentage :</dt>
      <dd class="col-sm-9">${student.class12Marks}%
      </dd>
    
  
        
   
       
      <dt class="col-sm-3">Btech Semester Marks :</dt>
      
      <dd class="col-sm-9"><b>Gargi Memorial Institute of Technology</b></br> <div class="dropdown">
        <a href="" class="text-left  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Your S.G.P.A
        </a>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
         
          <dl class="row">
            <div class="col-sm-6">
            <dt class="col"><b>1st Sem</b></dt>
            <dd class="col">${student.firstsemsgpa}</dd>
            <dt class="col"><b>2nd sem</b></dt>
            <dd class="col">${student.thirdsemsgpa}</dd>
          
            <dt class="col"><b>3rd sem</b></dt>
            <dd class="col">${student.secondsemsgpa}</dd>
            <dt class="col"><b>4th sem</b></dt>
            <dd class="col">${student.fourthsemsgpa}</dd>

            </div>
            <div class="col-sm-6">
              <dt class="col"><b>5th Sem</b></dt>
              <dd class="col">${student.fifthsemsgpa}</dd>
              <dt class="col "><b>6th sem</b></dt>
              <dd class="col">${student.sixthsemsgpa}</dd>
       
              <dt class="col"><b>7th sem</b></dt>
              <dd class="col">${student.seventhsemsgpa}</dd>
              <dt class="col "><b>8th sem</b></dt>
              <dd class="col">${student.eighthsemsgpa}</dd>
  
              </div>
          </dl>

        </div>
      </div></dd>
    </dl>
   
    
    
  <div class="row">
      
    <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Other Details</h5> </samp></div>
  </div>
  <div class="row">
    
    <div class="col-sm-6">
    <dl class="row">
    
    <dt class="col-sm-6">Blood Group :</dt>
      <dd class="col-sm-6">${student.bloodGroup}
      </dd>
    

    <dt class="col-sm-6">Subject of Interest :</dt>
    <dd class="col-sm-6">${student.subjectofInterest}</dd>
    
   
  <dt class="col-sm-6">Area of Interest :</dt>
      <dd class="col-sm-6">${student.subjectofInterest}
      </dd>
      <dt class="col-sm-6">Future Goal :</dt>
      <dd class="col-sm-6">${student.futuregoal}
      </dd>
  </dl>
</div></div>
    
    
 
    
    
    
    

    <div class="row">
      
      <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5> Hobbies </h5></samp></div>
      <ul>
      <li>${student.hobbies}</li>
        
        
      </ul>
    </div>

    <div class="row">
      
      <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Languages</h5> </samp></div>
      <ul>
      <li> ${student.indianLanguageDetails},${student.foreignLanguageDetails}</li>
    </ul>
    </div>
    
    <div class="row">
      
      <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Strengths</h5> </samp></div>
      <ul>
      <li> ${student.indianLanguageDetails},${student.yourStrenghts}</li>
    </ul>
    </div>
    
    <div class="row">
      
      <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Weaknesses</h5> </samp></div>
      <ul>
      <li> ${student.indianLanguageDetails},${student.yourWeakness}</li>
    </ul>
    </div>
     <div class="row">

    <div class=" col-sm-12 p-2 mb-4 mt-4 bg-primary text-white"><samp><h5>Computer Skills </h5></samp></div>
      <ul>
       <li>${student.computerlanguageknown}</li>
        
      </ul>
    </div>
  

    


      </div>
<!-- 
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                        <a href="course-single.html"><img src="images/course_1.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                                <a href="course-single.html"><img src="images/course_2.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                                <a href="course-single.html"><img src="images/course_3.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                                <a href="course-single.html"><img src="images/course_4.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                                <a href="course-single.html"><img src="images/course_5.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="course-1-item">
                        <figure class="thumnail">
                                <a href="course-single.html"><img src="images/course_6.jpg" alt="Image" class="img-fluid"></a>
                        <div class="price">$99.00</div>
                        <div class="category"><h3>Mobile Application</h3></div>  
                        </figure>
                        <div class="course-1-content pb-4">
                        <h2>How To Create Mobile Apps Using Ionic</h2>
                        <div class="rating text-center mb-3">
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                            <span class="icon-star2 text-warning"></span>
                        </div>
                        <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                        <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div> -->

    <div class="section-bg style-1" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
              <span class="icon flaticon-mortarboard"></span>
              <h3>Our Philosphy</h3>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Reiciendis recusandae, iure repellat quis delectus ea? Dolore, amet reprehenderit.</p>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
              <span class="icon flaticon-school-material"></span>
              <h3>Academics Principle</h3>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Reiciendis recusandae, iure repellat quis delectus ea?
                Dolore, amet reprehenderit.</p>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
              <span class="icon flaticon-library"></span>
              <h3>Key of Success</h3>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Reiciendis recusandae, iure repellat quis delectus ea?
                Dolore, amet reprehenderit.</p>
            </div>
          </div>
        </div>
      </div>
      

    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <p class="mb-4"><img src="images/logo.png" alt="Image" class="img-fluid"></p>
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

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
            </div>
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