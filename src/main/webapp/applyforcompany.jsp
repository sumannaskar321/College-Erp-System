<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <%
     
     String placementCompanyName = (String)request.getParameter("placementCompanyName");
     String campusSelection = (String)request.getParameter("campusSelection");
     String companyjobdescription = (String)request.getParameter("companyjobdescription");
     
     %>
</head>
<body>

<form action="studentnameandotherinfosstoreintodb" , method="post">

<input type="text" id="studentName" name="studentName" value = "studentName" placeholder="StudentName" >
<input type="hidden" id="placementCompanyName" name="placementCompanyName" value="<%= placementCompanyName %>">
<input type="hidden" id="campusSelection" name="campusSelection" value="<%= campusSelection %>">
<input type="hidden" id="companyjobdescription" name="companyjobdescription" value="<%= companyjobdescription %>">
<button type="submit" value="submit">Ok</button>


</form>




</body>
</html>