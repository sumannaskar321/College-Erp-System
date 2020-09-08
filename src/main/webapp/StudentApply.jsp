  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html>
 <html>
     <head>Apply</head><br><br><br><br> 
     
     <%
     
     String notice_id = (String)request.getParameter("notice_id");
     %>
     
     <body>
         <form action="studapply" method="POST">
         
         <label for="Notice_id">Notice ID:</label>
         <input type="text" name="noticeid" value="<%= notice_id %>" readonly="readonly">
         
         
          
            <label for="University Roll">University Roll:</label>
            <input type="number" id="University" name="university_roll"><br><br>

            <label for="Student_name">Student_name:</label>
            <input type="text" id="Student_name" name="student_name"><br><br>

           
            


            <label for="department"  > Department</label>
            
                <select name="student_department">
                    <option value="select">--Select--</option>
                    <option value="Cse">Cse</option>
                    <option value="EE">EE</option>
                    
                  </select> <br><br><br><br><br>
                  
                  
                    <label for="experience"  > Experience:</label>
            		 <input type="text" id="experience" name="student_experience"><br><br>
            		 
            		
            	
                <label for="current_year"  > Current Year:</label>
            
                <select name="current_year">
                    <option value="select">--Select--</option>
                    <option value="1st-year">First Year</option>
                    <option value="2nd-year">Second Year</option>
                    <option value="3rd-year">Third Year</option>
                    <option value="4th-year">Fourth Year</option>
                    
                  </select> <br><br><br><br><br>
                   
                  
                  
                  


                  <button type="submit" class="btn btn-primary">
                    Apply
                    </button>

    </form>
    </body>
    </html>