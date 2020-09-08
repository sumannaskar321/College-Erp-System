<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>THIS IS CDC POST PAGE</head><br><br>
    <body>
        <form action="cdcnot" method="POST">
            <label for="Company Name">Company name:</label>
            <input type="text" id="company_name" name="company_name"><br><br>



            <label for="Job Description">Job Description:</label>
            <textarea id="job_desc" name="job_desc" rows="5" cols="33"></textarea><br><br><br><br>





            <label for="offoncamp"  > place</label>
            
                <select name="campus_selection">
                    <option value="select">--Select--</option>
                    <option value="On-campus">On-campus</option>
                    <option value="Off-campus">off-campus</option>
                    
                  </select> <br><br><br><br><br>



                  <label for="date">Date of Visit:</label>
                  <input type="date" id="date" name="date"><br><br><br><br><br><br>


                  <label for="start_time"> start_time:</label>
                  <input type="time" id="start_time" name="start_time"><br><br><br><br><br><br>
                  <label for="end_time">end_time:</label>
                  <input type="time" id="end_time" name="end_time"><br><br><br><br><br><br>
                  
                  
                  
            <label for="Venue">Venue:</label>
            <input type="text" id="venue" name="venue"><br><br>
                  


                  <button type="submit" class="btn btn-primary">
                    Post Notice
                    </button>
        </form>
    </body>
</html>