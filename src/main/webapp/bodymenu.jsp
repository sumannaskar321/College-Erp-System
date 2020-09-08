<%@page import="com.gmit.model.StudentDetails"%>
<%@page import="com.gmit.model.CdcUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	CdcUser cdcuser= (CdcUser)session.getAttribute("cdcuser"); //returning obj
	StudentDetails student = (StudentDetails)session.getAttribute("studentdetail");
	if(cdcuser!= null || student !=null)
{
	
%>

<!-- BodyMenu Disable -->
<%
}

else
{

%>

 
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>For CDC, Department and Students</span>
            </h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">

            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-mortarboard text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>Student's and Teacher's Login</h2>
                <p>For Faculty and Students </p>
                <p><a href="student-teacher-login" class="btn btn-primary px-4 rounded-0">Deparment Section</a></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-school-material text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>CDC Login</h2>
                <p>For CDC Member </p>
                <p><a href="/cdclogin" class="btn btn-primary px-4 rounded-0">CDC Login</a></p>
              </div>
            </div> 
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-library text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>Admin</h2>
                <p>Only for Admin</p>
                <p><a href="adminlogin.jsp" class="btn btn-primary px-4 rounded-0">Admin Panel</a></p>
              </div>
            </div> 
          </div>
        </div>
     
    
<!-- Body Enable -->


<%	} %>

</body>
</html>