<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
    

    <div align="center">
        <table border="1" cellpadding="5">
   
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>Company Name</th>
                <th>Job Description</th>
                <th>Campus Selection</th>
                <th>Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Venue</th>
                <th>UniversityRoll</th>
                  <th>student_name</th>
                    <th>student_department</th>
                      <th>current_year</th>
                
            </tr>
            
            <c:forEach var="user" items="${cdcm,cdd}"> 
                <tr>
                    <td><c:out value="${user.company_name}" /></td>
                    <td><c:out value="${user.job_desc}" /></td>
                    <td><c:out value="${user.campus_selection}" /></td>
                   <td><c:out value="${user.date}" /></td>
                    <td><c:out value="${user.start_time}" /></td>
                    <td><c:out value="${user.end_time}" /></td>
                    <td><c:out value="${user.venue}" /></td>
                     <td><c:out value="${user.university_roll}" /></td>
                      <td><c:out value="${user.student_name}" /></td>
                       <td><c:out value="${user.student_department}" /></td>
                        <td><c:out value="${user.current_year}" /></td>
                    
                    
                    
                </tr>
            </c:forEach>
        </table>
    </div>
        </body>
</html>