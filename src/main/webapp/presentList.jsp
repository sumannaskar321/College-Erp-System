<%@page import="com.gmit.model.Placementmodel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  

<!DOCTYPE html>
<html lang="en">

<head>
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
 <!--          <div class="col-lg-3 text-right">
            <a href="register.html" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Logout</a>
          </div>  --> 
        </div>
      </div>
    </div>
   
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      <div class="container">
       <jsp:include page="headermenu.jsp"></jsp:include>
      </div>
    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Students whom Are Present During Placement</h2>
            </div>
          </div>
        </div>
      </div> 
      
     <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="cdclogin">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Student Status</span>
      </div>
    </div>

       						
      <!-- LIST OF STUDENTS WHOM ARE PRESENT AT PLACEMENT <TEACHERRESPONSE.JAVA> -->
    		<!-- TEACHER WILL CHOOSE WHETHER STUDENT CRACKED INTERVIEW NOT -->

   
    <div class="site-section">
        <div class="container">
           <div class="container text-center" id="tasksDiv">
				<h3>Selected Student List</h3>
				<hr>
				<div class="table-responsive">
				
				
				<%
				Placementmodel pcm = (Placementmodel)session.getAttribute("pm");
				%>
		 		
				
        <table class="table table-striped table-bordered">
   
    <thead>
            <tr>
            <th>Student Name</th>
            <th>Department</th>
            <th>Company Name</th>
            <th>Job Description</th> 
            <th>Campus Selection</th>
            <th>Response</th>
                
                 
                <!--  <th>Teacher Response</th> -->
               
                
            </tr>
            </thead>
          
            <tbody>
           
            
            
            <c:forEach var="user" items="${infos}"> 
                <tr>
	                <td><c:out value="${user.studentName}" /></td>
	               	<td><c:out value="${user.department}" /></td>
	                <td><c:out value="${user.placementCompanyName}" /></td>
	                <td><c:out value="${user.companyjobdescription}" /></td>
	                <td><c:out value="${user.campusSelection}" /></td>				<!-- TEACHERRESPONSEMODEL -->
	                <td>
						<form action="teacherresponseforcrackednotcracked?placementCompanyName=${user.placementCompanyName}&campusSelection=${user.campusSelection}&department=${user.department}&companyjobdescription=${user.companyjobdescription}&studentname=${user.studentName}&placementnoticeid=${user.placementnoticeid}&batch=${user.batch}&rollno=${user.rollno}&id=${user.sno}" method="post">
			               			<input type="radio" id="status1" name="status1" value="cracked">
										<label for="cracked">cracked</label><br>
										<input type="radio" id="status1" name="status1" value="notcracked">
										<label for="notcracked">not cracked</label><br>
			    						<button type="submit" value="submit">Save Details</button>    <!--STUDENTCRACKCONTROLLER  -->    			
			            </form>
	                   			</td>
               </tr>
   			</c:forEach>
   			</tbody>
   			</table>
                   			
                   			<!-- 		teacher response controller a mapped		
 -->
<!-- 		<a href="showcrackedstudentlist">SHOW CRACKED STUDENT LIST</a>		
 -->                   			
				</div>
			</div>
        </div>
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
<!--   <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div> -->

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