<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page import="com.gmit.model.ReminderPageModel"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" media="all" rel="stylesheet" type="text/css">  
  <link rel="stylesheet" href="css/style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.js">
      </script>
      <script src="yearpicker.js"></script>
     <script>
  document.querySelector("input[type=number]")
  .oninput = e => console.log(new Date(e.target.valueAsNumber, 0, 1))
</script>
      
      

</head>
<body>


					<table>
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
							<c:forEach var="user" items="${studentdetail}">
								<tr>
								<th>${user.id}</th>
								<th>${user.catagory}</th>
								<th>${user.department}</th>
								<th>${user.studentName}</th>
								<th>hi</th>
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
							</c:forEach>
						</tbody>
					</table>
					
					<div class="form-group">
   <div class='input-group date' >                                                
    <input type="text" id="date">
   </div>
</div> 
				

</body>
</html>