<%@page import="com.gmit.model.ReminderPageModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <%
    ReminderPageModel reminder = (ReminderPageModel)request.getAttribute("reminder");
    
    if (reminder != null )
    {
    System.out.println(reminder.getCompanyname());
    %>
	<div class="alert alert-danger alert-dismissible">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>Alert</strong> You have to contact <Strong><% out.print(reminder.getCompanyname()); %></Strong>
  	</div>
  	<%
  	}
    %>
      <div class="container">
               <jsp:include page="headermenu.jsp"></jsp:include>
       
      </div>

    </header>
	
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Campus Camping and Learning Session</h2>
              <p>${cdcUser.fullname}</p>
            </div>
          </div>
        </div>
      </div> 
      
    

<c:choose>
<c:when test="${batchyear == 'allow'}">
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-latest?batch=${batches[0]}" >${batches[0]}</a>
          
          <a class="dropdown-item" href="info-bach-2ndlatest?batch=${batches[1]}">${batches[1]}</a>
          
          <a class="dropdown-item" href="info-bach-3rdlatest?batch=${batches[2]}">${batches[2]}</a>
          
          <a class="dropdown-item" href="info-bach-4thlatest?batch=${batches[3]}">${batches[3]}</a>
          
          <a class="dropdown-item" href="info-bach-5thlatest?batch=${batches[4]}">${batches[4]}</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
</c:when>
</c:choose>






<c:choose>
<c:when test="${modedept == dept}">
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Department 
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
  
 
  </c:when>

</c:choose>
 




<c:choose>
 
 <c:when test="${mode == 'mechanical'}">
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
				<h3>Mechanical Engineering BATCH (${dept})</h3>
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
   
    
 
 
 
 
 <c:when test="${mode == 'civil'}">
 
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
				<h3>Civil Engineering BATCH (${dept})</h3>
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
   
 
 


 <c:when test="${mode == 'computer_science'}">
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
				<h3>Computer Science and  Engineering BATCH (${dept})</h3>
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
   
 
 
 
 
 
 <c:when test="${mode == 'electronics'}">
 
<%--  <nav class="navbar navbar-light bg-light">
  
 

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
				<h3>Electronics and Communication BATCH (${dept})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
																<th>Registration No</th>
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
   
 

 
 
 
 
 <c:when test="${mode == 'electrical'}">
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
				<h3>Electrical engineering BATCH (${dept})</h3>
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
    


<c:choose>
 <c:when test="${mode == 'info_2016_2020'}">
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-latest-me?batch=${student[0].batch}" >Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2ndlatest-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-3rdlatest-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-4thlatest-ece">Electronic s and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-5thlatest-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
  </c:when>
 
 
 
 
 <c:when test="${mode == 'info_2016_2020_me'}">
 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-2016-2020-me">Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ece">Electronis and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Mechanical Engineering BATCH (${dept})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th>Placement Details</th>
								<th>Any feedback</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${cdUusers}">
								<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th></th>
								<th></th>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
    
 
 
 
 
 <c:when test="${mode == 'info_2016_2020_ce'}">
 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-2016-2020-me">Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ece">Electronis and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Civil Engineering BATCH (${dept})</h3>
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
								<th>Further Higher Studies</th>
								<th>Hobbies</th>
								<th>Foreign Language Known</th>
								<th>Foreign Language Details</th>
								<th>Indian Language Details</th>
								<th>Subject Of Interest</th>
								<th>Reason Choose Engineering</th>
								<th>Strength</th>
								<th>Weakness</th>
								<th>Learning Method</th>
								<th>Suggestion Seeking</th>
								<th>Interest</th>
								<th>Personal Wish</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${cdUusers}">
								<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th></th>
								<th></th>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 
 
 
 
 <c:when test="${mode == 'info_2016_2020_cse'}">
 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-2016-2020-me">Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ece">Electronis and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Computer Science and  Engineering BATCH (${dept})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th>Placement Details</th>
								<th>Any feedback</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${cdUusers}">
								<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th></th>
								<th></th>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 
 
 
 
 
 <c:when test="${mode == 'info_2016_2020_ece'}">
 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-2016-2020-me">Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ece">Electronis and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Electronics and Communication BATCH (${dept})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th>Placement Details</th>
								<th>Any feedback</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${cdUusers}">
								<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th></th>
								<th></th>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   
 

 
 
 
 
 <c:when test="${mode == 'info_2016_2020_ee'}">
 
 <nav class="navbar navbar-light bg-light">
  
 

  <div class=" justify-content-end" >
    <ul class="navbar-nav mr-auto">
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Choose Batch 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="info-bach-2016-2020-me">Mechanical Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ce">Civil Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-cse">Computer Science and Engineering</a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ece">Electronis and Communication Engineering </a>
          
          <a class="dropdown-item" href="info-bach-2016-2020-ee">Electrical Engineering</a>
          </div>
          
      </li>
      
    </ul>
   
  </div>
</nav>
  
 
    <div class="site-section">
        <div class="container-fluid">
           <div class="container-fluid text-center" id="tasksDiv">
				<h3>Electrical engineering BATCH (${dept})</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th>Placement Details</th>
								<th>Any feedback</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${cdUusers}">
								<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Dept</th>
								<th>Act. Attendence</th>
								<th>Fake. Attendence</th>
								<th>Skills</th>
								<th>Marks 10th</th>
								<th>Marks 12th</th>
								<th>Marks 1st sem</th>
								<th>Marks 2nd sem</th>
								<th>Marks 3rd sem</th>
								<th>Marks 4th sem</th>
								<th>Marks 5th sem</th>
								<th>Marks 7th sem</th>
								<th>Marks 8th sem</th>
								<th>CGPA</th>
								<th></th>
								<th></th>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>
    </c:when>
   

    </c:choose>
    
    


   
      

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