<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

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
<%
int teacherarea = (int)session.getAttribute("teacherarea");
if(teacherarea == 1)
{
	
%>
<!-- here body tag before update -->
  <div class="site-wrap">

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
      <div class="container">
   
 		<div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="homepage.jsp" class="d-block">
              <img src="images/logoo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="container-fluid">
            
            <nav class="navbar navbar-expand-lg navbar-light text-right site-menu main-menu">
            
            <div class="collapse navbar-collapse text-left  id="navbarTogglerDemo01">
            <a class="navbar-brand bb text-left" href="departmentHomepage.jsp">Home</a>
              <a class="navbar-brand bb text-left" href="message-details">Message</a>
              <a class="navbar-brand text- text-left" href="update-attendance-page">Attendance</a>
              <a class="navbar-brand text-primary text-left" href="student-details?department=${teacher.teacherDepartment}">Student Details  </a>
              <div class="dropdown">
                <a href="" class="text-left navbar-brand text-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Notice
                </a>
                <div class="dropdown-menu text-primary" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item text-primary" href="departmenteventpage">Post</a>
                  <a class="dropdown-item text-primary" href="departmentnoticeview">View</a>
                </div>
              </div>
              <div class="ml-auto">
               <a href="cdcuser-logout" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Log Out</a>
              </div>
              </div>
</nav>

          </div>
          <div class="ml-auto">
           <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                    class="icon-menu h3"></span></a>
               
                     </div>
         
        </div>   
      </div>

    </header>



<%
}
else
{
%>
<!-- here another body tag before update -->
  <div class="site-wrap">



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
		<jsp:include page="headermenu.jsp"></jsp:include>
    </header>
<%} %>
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">WELCOME TO DEPARTMENT SECTION</h2>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="adminpanel.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Student Details</span>
      </div>
    </div>
    
    
<c:choose>
<c:when test="${batchyear2 == 'allow'}">
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="student-bach-latest?batch=${batches[0]}&department=${department}" >${batches[0]}</a>
          
          <a class="dropdown-item" href="student-bach-2ndlatest?batch=${batches[1]}&department=${department}">${batches[1]}</a>
          
          <a class="dropdown-item" href="student-bach-3rdlatest?batch=${batches[2]}&department=${department}">${batches[2]}</a>
          
          <a class="dropdown-item" href="student-bach-4thlatest?batch=${batches[3]}&department=${department}">${batches[3]}</a>
          
          
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
</c:when>
</c:choose>
  
<c:choose>
 
 <c:when test="${mode == 'Mechanical Engineering'}">

 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Mechanical Engineering BATCH (${selectedbatch})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Registration No</th>
								<th>Roll No</th>
								<th>Full Name</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Father's Name</th>
								<th>Father's Phone No</th>
								<th>Mother's Name</th>
								<th>Mother's Phone No</th>
								<th>Department</th>
								<th>College Code</th>
								<th>Date of Birth</th>
								<th>Gender</th>
								<th>Category</th>
								<th>Differently abled</th>
								<th>Blood Group</th>
								<th>Permanent Address</th>
								<th>Current Address</th>
								<th>Class 10 Marks</th>
								<th>Class 12 Marks</th>
								<th>Diploma Marks</th>
								<th>Batch</th>
								<th>Original Attendance</th>
								<th>Fake Attendance</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.registration}</th>
								<th>${user.rollNo}</th>
								<th>${user.studentName}</th>
								<th>${user.mobileNumber}</th>
								<th>${user.emailAddress}</th>
								<th>${user.fatherName}</th>
								<th>${user.fatherPhoneNo}</th>
								<th>${user.motherName}</th>
								<th>${user.motherPhoneNo}</th>
								<th>${user.department}</th>
								<th>${user.collegeCode}</th>
								<th>${user.studentDob}</th>
								<th>${user.gender}</th>
								<th>${user.catagory}</th>
								<th>${user.differentlyAbled}</th>
								<th>${user.bloodGroup}</th>
								<th>${user.permenantLocation}</th>
								<th>${user.currentLocation}</th>
								<th>${user.class10Marks}</th>
								<th>${user.class12Marks}</th>
								<th>${user.diplomaMarks}</th>
								<th>${user.batch}</th>
								<th>${user.originalAttendance}</th>
								<th>${user.fakeAttendance}</th>
								<th>${user.hobbies}</th>
								<th>${user.foreignLanguageKnown}</th>
								<th>${user.foreignLanguageDetails}</th>
								<th>${user.indianLanguageDetails}</th>
								<th>${user.subjectofInterest}</th>
								<th>${user.reasonChooseEng}</th>
								<th>${user.yourStrenghts}</th>
								<th>${user.yourWeakness}</th>
								<th>${user.learningMethod}</th>
								<th>${user.interest}</th>
								<th>${user.personalWish}</th>								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
    
 
 
 
 
 <c:when test="${mode == 'Civil Engineering'}">
<%--  
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-me?batch=${currentbatch}" >Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ce?batch=${currentbatch}">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-cse?batch=${currentbatch}">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ece?batch=${currentbatch}">Electronic s and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-ee?batch=${currentbatch}">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav> --%>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Civil Engineering BATCH (${selectedbatch})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Registration No</th>
								<th>Roll No</th>
								<th>Full Name</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Father's Name</th>
								<th>Father's Phone No</th>
								<th>Mother's Name</th>
								<th>Mother's Phone No</th>
								<th>Department</th>
								<th>College Code</th>
								<th>Date of Birth</th>
								<th>Gender</th>
								<th>Category</th>
								<th>Differently abled</th>
								<th>Blood Group</th>
								<th>Permanent Address</th>
								<th>Current Address</th>
								<th>Class 10 Marks</th>
								<th>Class 12 Marks</th>
								<th>Diploma Marks</th>
								<th>Batch</th>
								<th>Original Attendance</th>
								<th>Fake Attendance</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.registration}</th>
								<th>${user.rollNo}</th>
								<th>${user.studentName}</th>
								<th>${user.mobileNumber}</th>
								<th>${user.emailAddress}</th>
								<th>${user.fatherName}</th>
								<th>${user.fatherPhoneNo}</th>
								<th>${user.motherName}</th>
								<th>${user.motherPhoneNo}</th>
								<th>${user.department}</th>
								<th>${user.collegeCode}</th>
								<th>${user.studentDob}</th>
								<th>${user.gender}</th>
								<th>${user.catagory}</th>
								<th>${user.differentlyAbled}</th>
								<th>${user.bloodGroup}</th>
								<th>${user.permenantLocation}</th>
								<th>${user.currentLocation}</th>
								<th>${user.class10Marks}</th>
								<th>${user.class12Marks}</th>
								<th>${user.diplomaMarks}</th>
								<th>${user.batch}</th>
								<th>${user.originalAttendance}</th>
								<th>${user.fakeAttendance}</th>
								<th>${user.hobbies}</th>
								<th>${user.foreignLanguageKnown}</th>
								<th>${user.foreignLanguageDetails}</th>
								<th>${user.indianLanguageDetails}</th>
								<th>${user.subjectofInterest}</th>
								<th>${user.reasonChooseEng}</th>
								<th>${user.yourStrenghts}</th>
								<th>${user.yourWeakness}</th>
								<th>${user.learningMethod}</th>
								<th>${user.interest}</th>
								<th>${user.personalWish}</th>								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 
 


 <c:when test="${mode == 'ComputerScienceAndEngineering'}">
 <!-- 
  <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-me?batch=${currentbatch}" >Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ce?batch=${currentbatch}">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-cse?batch=${currentbatch}">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ece?batch=${currentbatch}">Electronic s and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-ee?batch=${currentbatch}">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
 -->  

    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Computer Science and  Engineering BATCH (${selectedbatch})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Registration No</th>
								<th>Roll No</th>
								<th>Full Name</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Father's Name</th>
								<th>Father's Phone No</th>
								<th>Mother's Name</th>
								<th>Mother's Phone No</th>
								<th>Department</th>
								<th>College Code</th>
								<th>Date of Birth</th>
								<th>Gender</th>
								<th>Category</th>
								<th>Differently abled</th>
								<th>Blood Group</th>
								<th>Permanent Address</th>
								<th>Current Address</th>
								<th>Class 10 Marks</th>
								<th>Class 12 Marks</th>
								<th>Diploma Marks</th>
								<th>Batch</th>
								<th>Original Attendance</th>
								<th>Fake Attendance</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.registration}</th>
								<th>${user.rollNo}</th>
								<th>${user.studentName}</th>
								<th>${user.mobileNumber}</th>
								<th>${user.emailAddress}</th>
								<th>${user.fatherName}</th>
								<th>${user.fatherPhoneNo}</th>
								<th>${user.motherName}</th>
								<th>${user.motherPhoneNo}</th>
								<th>${user.department}</th>
								<th>${user.collegeCode}</th>
								<th>${user.studentDob}</th>
								<th>${user.gender}</th>
								<th>${user.catagory}</th>
								<th>${user.differentlyAbled}</th>
								<th>${user.bloodGroup}</th>
								<th>${user.permenantLocation}</th>
								<th>${user.currentLocation}</th>
								<th>${user.class10Marks}</th>
								<th>${user.class12Marks}</th>
								<th>${user.diplomaMarks}</th>
								<th>${user.batch}</th>
								<th>${user.originalAttendance}</th>
								<th>${user.fakeAttendance}</th>
								<th>${user.hobbies}</th>
								<th>${user.foreignLanguageKnown}</th>
								<th>${user.foreignLanguageDetails}</th>
								<th>${user.indianLanguageDetails}</th>
								<th>${user.subjectofInterest}</th>
								<th>${user.reasonChooseEng}</th>
								<th>${user.yourStrenghts}</th>
								<th>${user.yourWeakness}</th>
								<th>${user.learningMethod}</th>
								<th>${user.interest}</th>
								<th>${user.personalWish}</th>								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 
 
 
 
 
 <c:when test="${mode == 'ElectricalAndelectronics'}">
 
 <%-- <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-me?batch=${currentbatch}" >Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ce?batch=${currentbatch}">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-cse?batch=${currentbatch}">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ece?batch=${currentbatch}">Electronic s and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-ee?batch=${currentbatch}">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav> --%>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Electronics and Communication BATCH (${selectedbatch})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Registration No</th>
								<th>Roll No</th>
								<th>Full Name</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Father's Name</th>
								<th>Father's Phone No</th>
								<th>Mother's Name</th>
								<th>Mother's Phone No</th>
								<th>Department</th>
								<th>College Code</th>
								<th>Date of Birth</th>
								<th>Gender</th>
								<th>Category</th>
								<th>Differently abled</th>
								<th>Blood Group</th>
								<th>Permanent Address</th>
								<th>Current Address</th>
								<th>Class 10 Marks</th>
								<th>Class 12 Marks</th>
								<th>Diploma Marks</th>
								<th>Batch</th>
								<th>Original Attendance</th>
								<th>Fake Attendance</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.registration}</th>
								<th>${user.rollNo}</th>
								<th>${user.studentName}</th>
								<th>${user.mobileNumber}</th>
								<th>${user.emailAddress}</th>
								<th>${user.fatherName}</th>
								<th>${user.fatherPhoneNo}</th>
								<th>${user.motherName}</th>
								<th>${user.motherPhoneNo}</th>
								<th>${user.department}</th>
								<th>${user.collegeCode}</th>
								<th>${user.studentDob}</th>
								<th>${user.gender}</th>
								<th>${user.catagory}</th>
								<th>${user.differentlyAbled}</th>
								<th>${user.bloodGroup}</th>
								<th>${user.permenantLocation}</th>
								<th>${user.currentLocation}</th>
								<th>${user.class10Marks}</th>
								<th>${user.class12Marks}</th>
								<th>${user.diplomaMarks}</th>
								<th>${user.batch}</th>
								<th>${user.originalAttendance}</th>
								<th>${user.fakeAttendance}</th>
								<th>${user.hobbies}</th>
								<th>${user.foreignLanguageKnown}</th>
								<th>${user.foreignLanguageDetails}</th>
								<th>${user.indianLanguageDetails}</th>
								<th>${user.subjectofInterest}</th>
								<th>${user.reasonChooseEng}</th>
								<th>${user.yourStrenghts}</th>
								<th>${user.yourWeakness}</th>
								<th>${user.learningMethod}</th>
								<th>${user.interest}</th>
								<th>${user.personalWish}</th>								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 

 
 
 
 
 <c:when test="${mode == 'ElectricalEngineering'}">
 <!-- 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-me?batch=${currentbatch}" >Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ce?batch=${currentbatch}">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-cse?batch=${currentbatch}">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-ece?batch=${currentbatch}">Electronic s and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-ee?batch=${currentbatch}">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  --> 
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Electrical engineering BATCH (${selectedbatch})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Registration No</th>
								<th>Roll No</th>
								<th>Full Name</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Father's Name</th>
								<th>Father's Phone No</th>
								<th>Mother's Name</th>
								<th>Mother's Phone No</th>
								<th>Department</th>
								<th>College Code</th>
								<th>Date of Birth</th>
								<th>Gender</th>
								<th>Category</th>
								<th>Differently abled</th>
								<th>Blood Group</th>
								<th>Permanent Address</th>
								<th>Current Address</th>
								<th>Class 10 Marks</th>
								<th>Class 12 Marks</th>
								<th>Diploma Marks</th>
								<th>Batch</th>
								<th>Original Attendance</th>
								<th>Fake Attendance</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.registration}</th>
								<th>${user.rollNo}</th>
								<th>${user.studentName}</th>
								<th>${user.mobileNumber}</th>
								<th>${user.emailAddress}</th>
								<th>${user.fatherName}</th>
								<th>${user.fatherPhoneNo}</th>
								<th>${user.motherName}</th>
								<th>${user.motherPhoneNo}</th>
								<th>${user.department}</th>
								<th>${user.collegeCode}</th>
								<th>${user.studentDob}</th>
								<th>${user.gender}</th>
								<th>${user.catagory}</th>
								<th>${user.differentlyAbled}</th>
								<th>${user.bloodGroup}</th>
								<th>${user.permenantLocation}</th>
								<th>${user.currentLocation}</th>
								<th>${user.class10Marks}</th>
								<th>${user.class12Marks}</th>
								<th>${user.diplomaMarks}</th>
								<th>${user.batch}</th>
								<th>${user.originalAttendance}</th>
								<th>${user.fakeAttendance}</th>
								<th>${user.hobbies}</th>
								<th>${user.foreignLanguageKnown}</th>
								<th>${user.foreignLanguageDetails}</th>
								<th>${user.indianLanguageDetails}</th>
								<th>${user.subjectofInterest}</th>
								<th>${user.reasonChooseEng}</th>
								<th>${user.yourStrenghts}</th>
								<th>${user.yourWeakness}</th>
								<th>${user.learningMethod}</th>
								<th>${user.interest}</th>
								<th>${user.personalWish}</th>								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   

    </c:choose>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
    
   <!--  </div>
    
   </div>  -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     <div class="section-bg style-1" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
         <div class="row">
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-mortarboard"></span>
            <h3>Students Section</h3>
            <p>This ERP system has Student Section from where student can update their details upload their CV and can take part in any upcomming Events, Tranings Organised  by the CDC and their department faculties. Students are requested to update their profile regularly so the faculty of GMIT can see your skills and tranings  and help you for your best carrier choice.   </p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-school-material"></span>
            <h3>Department Section</h3>
            <p>Department section is for college dept faculties. Faculties are allowed to update the department notice and traning. You can also update the addendence of the your Department Students and also give them their internal marks. </p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span class="icon flaticon-library"></span>
            <h3>CDC Section</h3>
            <p>Carrer Develpment Cell help the student for their Carrier advice and also responsible for Student Placement for all the Student of any Department. Please request your student to update their profile regularly. So you can easily take help to know the information of the Students</p>
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