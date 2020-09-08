<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var b=[];
var c=[];
var d=[];
/* $(document).ready(function(){
  $("button").click(function(){
   var a= $("#we").val();
   var e = document.getElementById("we").value;
   b.push(e);
   c.push(a);
   d.push(a);
   $("#r").val(b);
   document.getElementById("r").value=e;
  });
  $("#send").click(function(){
	 
	  $.ajax({
		    type : "POST",
		    url : "/getvalues",
		  //  contentType: "application/x-www-form-urlencoded",
		    data : {
		        "firstArray" : b
		       
		    },
		    success : function(response) {
		       // do something ... 
		    },
		    error : function(e) {
		       alert('Error: ' + e);
		       console.log(e);
		    }
		}); 
	
		/* var config = {
			   // transformRequest : angular.identity,
			    headers: { "Content-Type": undefined }
			}
		$http.post('/getvalues', {
	        firstArray : b,
	        secondArray:c,
	        thirdArray:d
	    }, config).success(function(data,status) {
		    $scope.loader.loading = false;
		})
	  }); */
//}); \

/* $(document).ready(function() {
        $('button').click(function() {
                var e = $('#field').val();
                var f = $('#operator').val();
                var g = $('#we').val();
                b.push(e);
         	   c.push(f);
         	   d.push(g);
        });
        $('#send').click(function(){
        	$.ajax({
    		    type : "POST",
    		    url : "/getvalues,
    		  //  contentType: "application/x-www-form-urlencoded",
    		    data : {
    		    	firstArray : b,
    		        secondArray:c,
    		        thirdArray:d
    		       
    		    }, 
    		    success : function(response) {
    		       // do something ... 
    		    },
    		    error : function(e) {
    		       alert('Error: ' + e);
    		       console.log(e);
    		    }
    		});
            });
});
 */



 function my()
 {
	var e = document.getElementById("field").value;
	var f = document.getElementById("operator").value;
	var g = document.getElementById("we").value;
	b.push(e);
	   c.push(f);
	   d.push(g);
	document.getElementById("r").value=b;
}
function sn(){

	 /*  $.post("/getvalues",{
	   
	        firstArray : b,
	        secondArray:c,
	        thirdArray:d
	   
	});   */

	$.ajax({
	    type : "POST",
	   // window.location = "/getvalues";
	    url : "/getvalues",
	    
	    data : {            
	        
	           firstArray: b,
	           secondArray: c,
	           thirdArray: d        
	    },
	    
	    success : function(response) {
	       // do something ... 
	       //type:"POST";
		       window.location="/show";
	    	
	    },
	    error : function(e) {
	       alert('Error: ' + e);
	    }
	}); 

	
} 
</script>
</head>
<body>

<button onclick="my()">Set the value of the input field</button>
<p>Name: </p>
<input type="text" name="user" id="r" >


											<select id="field">
                                            <option value="select">--Select--</option>
                                            <option value="roll_no">RollNo</option>
                                            <option value="registration">registration</option>
                                            <option value="student_name">studentName</option>
                                            <option value="class10marks">class10Marks</option>
                                            <option value="blood_group">bloodGroup</option>
                                            <option value="department">department</option>
                                            <option value="college_code">collegeCode</option>
                                            <option value="student_dob">studentDob</option>
                                            <option value="gender">gender</option>
                                            <option value="catagory">catagory</option>
                                            <option value="differently_abled">differentlyAbled</option>
                                            <option value="permenant_location">permenantLocation</option>
                                            <option value="current_location">currentLocation</option>
                                            <option value="class12marks">class12Marks</option>
                                            <option value="diploma_marks">diplomaMarks</option>
                                            <option value="skill">skill</option>
                                            <option value="skill">skill</option>
                                            <option value="skill">skill</option>
                                            <option value="skill">skill</option>
                                            <option value="skill">skill</option>
                                      	 </select>
                                      	 <select id="operator">
                                            <option value="select">--Select--</option>
                                            <option value=">">></option>
                                            <option value="<"><</option>
                                            <option value="=">=</option>
                                            <option value="!=">!=</option>
                                            
                                      	 </select>
											<input type="text" name="user" id="we">
<input type="submit" id="send" onclick="sn()">

</body>
</html>