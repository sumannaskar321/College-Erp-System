<%@page import="com.gmit.model.CdcUser"%>
<%@page import="com.gmit.model.StudentDetails"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 		<script>
 		$(document).on("click", ".btn-primary", function () {
	    var itemid= $(this).attr('data-item');
	    $("#lineitem").attr("action","placementignorebystudent?"+itemid)
	 	});
 		</script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">
<%
CdcUser cdcuser1 = (CdcUser)session.getAttribute("cdcuser");
if(cdcuser1 != null)
{
	%>
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
        </div>
      </div>
    </div>	
   
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
          <div class="container"><jsp:include page="headermenu.jsp"></jsp:include></div>
    </header>
    <%
	    }
		else
		{
	%>
		<jsp:include page="headermenu.jsp"></jsp:include>
 	<%
 		}
	%>
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Placement Notices</h2>
             
            </div>
          </div>
        </div>
      </div> 
    

   

    <div class="site-section">
        <div class="container">
           <div class="container text-center" id="tasksDiv">
				<h3>Notices</h3>
				<hr>
				<div class="table-responsive">
				
<%
StudentDetails student = (StudentDetails)session.getAttribute("studentdetail");
%>				
							
				
        <table class="table table-striped table-bordered">
   
    <thead>
            <tr>
                <th>Company Name</th>
               <th>Job Description</th> 
                <th>Campus Selection</th>
                <th>Visit Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Venue</th>
                <th>Last Date of Apply</th>
                                <%
                	CdcUser cdcuser = (CdcUser)session.getAttribute("cdcuser");
                if (cdcuser != null)
                {
                %>
                <th>Edit</th>
                <th>Delete</th>
                <%							/* RESPONSE FOR BOTH STUDENT AND TEACHER FOR TEACHER NOTICE EDIT/DELETE */
                }
                else						/* FOR STUDENT APPLY OR IGNORE */
                {
                %>
                <th>Apply</th>
                <th>Ignore</th>
                 <%
                }
                %>
                
                
                
            </tr>
            </thead>
             <%

//CdcUser cdcuser1 = (CdcUser)session.getAttribute("cdcuser"); //returning obj
//StudentDetails student = (StudentDetails)session.getAttribute("studentdetail");
if(cdcuser1!= null || student != null)
{
	
%>
            <tbody>
            <c:forEach var="user" items="${abc}"> 
                <tr>
                    <td><c:out value="${user.placementCompanyName}" /></td>
                       <td><c:out value="${user.companyjobdescription}" /></td>
<%-- 						                       <td><c:out value="${user.placementNoticeId}" /></td>
 --%>						                       
                   <%--  <td><%out.print("hi"); %></td> --%>
                    <td><c:out value="${user.campusSelection}" /></td>                    
                    <td><c:out value="${user.visitDate}" /></td>
                    <td><c:out value="${user.startTime}" /></td>
                    <td><c:out value="${user.endTime}" /></td>
                    <td><c:out value="${user.venue}" /></td>
                    <td><c:out value="${user.lastdateofApply}" /></td>
                    <%

                  	if (cdcuser != null)
                    {
                  	%>
                  	<td><a href="edit-placementNotices?placementCompanyName=${user.placementCompanyName}&campusSelection=${user.campusSelection}&companyjobdescription=${user.companyjobdescription}&serial=${user.placementNoticeId}&starttime=${user.startTime}&endtime=${user.endTime}&lastdate=${user.lastdateofApply}&visitdate=${user.visitDate}&venue=${user.venue}">Edit</a></td>
                  	<td><a href="delete-placementNotices?serial=${user.placementNoticeId}">Delete</a></td>
                  	<%
                    }
                  	else
                  	{
                  	%>
					
					
                    <td><a href="student-applyforCompany?placementCompanyName=${user.placementCompanyName}&campusSelection=${user.campusSelection}&companyjobdescription=${user.companyjobdescription}&student=<%= student.getStudentName() %>&batch=<%= student.getBatch() %>&rollno=<%= student.getRollNo() %>&department=<%= student.getDepartment() %>&noticeid=${user.placementNoticeId}">Apply</a></td>
                    
                    
                    <td><!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3" id="placebtn" data-item="placementCompanyName=${user.placementCompanyName}&campusSelection=${user.campusSelection}&companyjobdescription=${user.companyjobdescription}&serial=${user.placementNoticeId}&student=<%= student.getStudentName() %>&batch=<%= student.getBatch() %>&department=<%= student.getDepartment() %>&rollno=<%= student.getRollNo() %>&noticeid=${user.placementNoticeId}">
  ignore</button>

<!-- Modal -->
<form id="lineitem" action="placementignorebystudent?placementCompanyName=${user.placementCompanyName}&campusSelection=${user.campusSelection}&companyjobdescription=${user.companyjobdescription}&student=<%= student.getStudentName() %>&batch=<%= student.getBatch() %>&deparment=<%= student.getDepartment() %>&rollno=<%= student.getRollNo() %>&noticeid=${user.placementNoticeId}" method="post"> 

			<!--redirect to ignore controller  -->


<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModal3Label" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModal3Label">Write Down Your Reason</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      
      
      
    <textarea class="form-control" name="ignorereason" id="exampleFormControlTextarea1" rows="3"></textarea>
    
    
    
    
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <input type="submit" value="Ignore" />
      </div>
    </div>
  </div>
</div>
</form>
</td>
<%
                  	}
                    
					%>


					
					 </tr>
            </c:forEach>
            </tbody>
                       <%
}



%>
       </table>
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