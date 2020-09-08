


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Gargi Memorial Institute of Technology</title>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 		<script>
 		$(document).on("click", ".btn-primary", function () {
	    var itemid= $(this).attr('data-item');
	    $("#lineitem").attr("action","notpresent-reason?"+itemid)
	 	});
 		</script>
 		
 		
 		
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 		<script>
 		$(document).on("click", ".btn-success", function () {
	    var itemid= $(this).attr('data-item');
	    $("#lineitemm").attr("action","notcrack-reason?"+itemid)
	 	});
 		</script>






<style>

.scrollable {
    height: 1000px; /* or any value */
    overflow-y: auto;
}

.comment {
      resize: none;
      height: 100px;
      width: 350px;
      }

</style>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

   <!--  <div class="site-mobile-menu site-navbar-target">
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
            <a href="/cdcregister" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container"> -->
               <jsp:include page="headermenu.jsp"></jsp:include>
       
     <!--  </div>

    </header> -->

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Notification</h2>
<!--               <p>Lorem ipsum dolor sit amet consectetur adipisicing.</p>
 -->            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="StudentHomepage.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">notification</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">
        
        
        
        <div class="scrollable">
        
        
        <div class="list-group">
        <c:forEach var="notify" items="${notification}">
        <c:choose>
        <c:when test="${notify.placementstatus == 'notPresent'}"> 
        <li class="list-group-item d-flex justify-content-between align-items-center">
    You were absent for the interview of ${notify.companyname}
    <button type="button" class="btn btn-primary" data-toggle="modal" data-item="ignoreid=${notify.ignoremergeid}" data-target="#exampleModal1" id="placesbtn">Give reason</button>
  </li>
  </c:when>
  <c:when test="${notify.placementstatus == 'notcracked'}">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    You were not able to crack  the interview of ${notify.companyname}
    <button type="button" class="btn btn-success" data-toggle="modal" data-item="ignoreid=${notify.ignoremergeid}" data-target="#exampleModal2" id="placesbtn">Give reason</button>
  </li>
  
</c:when>
<c:when test="${notify.teacherName != NULL}">
        <div class="list-group">
  <a href="#!" class="list-group-item list-group-item-action list-group-item-info"> <b>Date of Message:</b>&nbsp;&nbsp;&nbsp;${notify.date} <br/><b>Teacher Name:</b>&nbsp;&nbsp;&nbsp;${notify.teacherName} <br/><b>Message:</b>&nbsp;&nbsp;&nbsp;${notify.messagebyTeacher}</a>
</div>






  </c:when>
</c:choose>
  </c:forEach>
  
<%--   <br/>
          <c:forEach var="abc" items="${message}">
           <div class="list-group">
  <a href="#!" class="list-group-item list-group-item-action list-group-item-info"> <b>Date of Message:</b>&nbsp;&nbsp;&nbsp;${abc.date} <br/><b>Teacher Name:</b>&nbsp;&nbsp;&nbsp;${abc.teachername} <br/><b>Message:</b>&nbsp;&nbsp;&nbsp;${abc.message}</a>
</div>
          </c:forEach> --%>
  
  
	</div>
	
	
	
	
	
	
	 <c:forEach var="notify" items="${notification}">
	<!-- MODAL --> 		                   <form id="lineitem" action="notpresent-reason?ignoreid=${notify.ignoremergeid}" method="post" id="modalform">
								<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModal3Label" aria-hidden="true">
		  							<div class="modal-dialog" role="document">
		   					 			<div class="modal-content">
		     				 				<div class="modal-header">
					        					<h5 class="modal-title" id="exampleModal3Label">Reason For Not Present:</h5>
					        					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          					<span aria-hidden="true">&times;</span>
					        					</button>
		     				 				</div>															<!-- placed STUDENT MODAL -->
		      									<div class="modal-body">										<!--INTER-PLACED CONTROLLER  -->
  												<textarea class="comment"  id="notPresentReason" name="notPresentReason"></textarea>
				    							</div>
		      										<div class="modal-footer">
		       											 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		    												<input type="submit" value="Save" />
		      										</div>
		    							</div>
		  							</div>
								</div>
 					</form>
		
		
		
		
							<!-- Modal -->
 								 <form id="lineitemm" action="notcrack-reason?ignoreid=${notify.ignoremergeid}" method="post">
 									
												<!--redirect to ignore controller  -->
									
									
									<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModal4Label" aria-hidden="true">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModal3Label">Reason For Not Cracked:</h5>
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
									          <span aria-hidden="true">&times;</span>											<!-- INTERNSHIP MODAL -->
									        </button>																				<!-- INTER-PLACED CONTROLLER -->
									      </div>
									      <div class="modal-body">
  										<textarea class="comment"  id="notCrackReason" name="notCrackReason"></textarea>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									    <input type="submit" value="Save" />
									      </div>
									    </div>
									  </div>
									</div>
								</div>
								</form>
								</c:forEach>
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>
       
        
        
        
        
        
        </div>
         </div>

<!--     <input type="submit" value="print" onClick="window.print()"/>
 -->
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