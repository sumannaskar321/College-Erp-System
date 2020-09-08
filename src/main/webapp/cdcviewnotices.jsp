
<%@page import="com.gmit.model.CdcUser"%>
<%@page import="com.gmit.model.CdcModel"%>
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
                <%
                	CdcUser cdcuser = (CdcUser)session.getAttribute("cdcuser");
                if (cdcuser != null)
                {
                %>
                <th>Edit</th>
                <th>Delete</th>
                <%
                }
                else
                {
                %>
                <th>Apply</th>
                <%
                }
                %>
            </tr>
            
            <c:forEach var="user" items="${notices}"> 
                <tr>
                    <td><c:out value="${user.company_name}" /></td>
                    <td><c:out value="${user.job_desc}" /></td>
                    <td><c:out value="${user.campus_selection}" /></td>                    
                    <td><c:out value="${user.date}" /></td>
                    <td><c:out value="${user.start_time}" /></td>
                    <td><c:out value="${user.end_time}" /></td>
                    <td><c:out value="${user.venue}" /></td>
                  	<%
                  	if (cdcuser != null)
                    {
                  	%>
                  	<td><a href="update-notice?notice_id=${user.notice_id}">Edit</a></td>
                  	<td><a href="delete-notice?notice_id=${user.notice_id}">Delete</a></td>
                  	<%
                    }
                  	else
                  	{
                  	%>
					<td><a href="StudentApply.jsp?notice_id=${user.notice_id}">Apply Here</a></td> 
					<%
                  	}
					%>  
					 </tr>
            </c:forEach>
        </table>
    </div>
        </body>
</html>