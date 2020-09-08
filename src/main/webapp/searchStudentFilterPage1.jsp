
<%@page import="java.util.ArrayList"%>
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

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
function changeStatus(){
	
	var status = document.getElementById("filteroption");
	
	if(status.value == "rollno" || status.value == "regno" ){
		$("#fordiv").show();
		$("#numericvalue").show();
		document.getElementById("numericvalue").disabled = false;
		
		document.getElementById("textbox").disabled = true;
		$("#textbox").hide();
		document.getElementById("dynamicselect").disabled = true;
		$("#dynamicselect").hide();
		document.getElementById("datevalue").disabled = true;
		$("#datevalue").hide();
	}
	else if(status.value == "name" ||
			status.value =="10markslessthan" || status.value =="10marksgreaterequal" ||
			status.value =="12markslessthan" || status.value =="12marksgreaterequal"){
		$("#fordiv").show();
		$("#textbox").show();
		document.getElementById("textbox").disabled = false;
		
		document.getElementById("numericvalue").disabled = true;
		$("#numericvalue").hide();
		document.getElementById("dynamicselect").disabled = true;
		$("#dynamicselect").hide();
		document.getElementById("datevalue").disabled = true;
		$("#datevalue").hide();
	}
 	else if(status.value == "bloodgroup" ||
 			status.value =="department" ||
 			status.value =="gender" ||
 			status.value =="category" ||
 			status.value =="differentlyabled" ||
 			status.value =="batch"){
 		
 		dynamicOptionFunction(status.value);
 		
 		$("#fordiv").show();
		$("#dynamicselect").show();
		document.getElementById("dynamicselect").disabled = false;
		
		document.getElementById("numericvalue").disabled = true;
		$("#numericvalue").hide();
		document.getElementById("textbox").disabled = true;
		$("#textbox").hide();
		document.getElementById("datevalue").disabled = true;
		$("#datevalue").hide();
		}
 	else if(status.value == "dob"){
 		$("#fordiv").show();
 		$("#datevalue").show();
		document.getElementById("datevalue").disabled = false;
		
		document.getElementById("dynamicselect").disabled = true;
		$("#dynamicselect").hide();
		document.getElementById("numericvalue").disabled = true;
		$("#numericvalue").hide();
		document.getElementById("textbox").disabled = true;
		$("#textbox").hide();

 	}	
	else{
		$("#fordiv").hide();
		$("#textbox").hide();
		$("#numericvalue").hide();
		$("#dynamicselect").hide();
		$("#datevalue").hide();
		}
	
}


function dynamicOptionFunction(dynamicselectvalue){
	document.getElementById("dynamicselect").options.length=1;
	
	var dynamicoption = document.getElementById("dynamicselect");
	var opoptionArray = [];
	var newOption;
	opoptionArray.length = 0;
	
	
	if(dynamicselectvalue == "bloodgroup"){
		optionArray = ["A+|A+","B+|B+","AB+|AB+","O+|O+","A-|A-","B-|B-","AB-|AB-","O-|O-"];
	}
	else if(dynamicselectvalue =="department"){
		 optionArray = ["ComputerScienceAndEngineering|Computer Science and Engineering(CSE)",
			"ElectricalAndElectronics|Electronics and Communications Engineering (ECE)",
			"ElectricalEngineering|Electrical Engineering(EE)",
			"MechanicalEngineering|Mechanical Engineering(ME)",
			"CivilEngineering|Civil Engineering (CE)"];	
	}
	else if(dynamicselectvalue =="gender"){
		optionArray = ["male|Male","female|Female","other|Other"];	
	}
	else if(dynamicselectvalue =="category"){
		optionArray = ["General|General","S.C|SC","S.T|ST","O.B.C|OBC","P.H|PH","P.W.D|PWD"];	
	}
	else if(dynamicselectvalue =="differentlyabled"){
		optionArray = ["yes|YES","no|NO"];	
	}
	else{
		optionArray = ["${fourbatches[0]}|${fourbatches[0]}",
		"${fourbatches[1]}|${fourbatches[1]}","${fourbatches[2]}|${fourbatches[2]}",
		"${fourbatches[3]}|${fourbatches[3]}"];	
	}
	for(opvalue in optionArray){
		var pair = optionArray[opvalue].split("|");
		newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		dynamicoption.options.add(newOption);
	}
}

</script>


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
		<div class="container"> <jsp:include page="headermenu.jsp"></jsp:include> </div>
	</header>
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Campus Camping and Learning Session</h2>
            </div>
          </div>
        </div>
      </div> 


<div class="site-section">
	<div class="container">

<form method="post" action="searchDb"><!-- from action -->


		<div class="col-md-12 form-group">
			<div class="row">
			

			
                    <div class="col-md-4">
                    <h6> <label style="color:#2366a6;">* Select</label> </h6>
                   <h5> <span id="filteroptionmsg"></span> </h5>
                         <select name="filteroption" id="filteroption" onchange="changeStatus()" style="padding:10px;">
                             <option value="select">--Choose Option--</option>
                             <option value="rollno">Roll no.</option>
                             <option value="regno">Registration no.</option>
                             <option value="name">Name.</option>
                             <option value="batch">Batch</option>
                             <option value="10markslessthan">10th Marks Less Than(&lt;)(in %)</option>
                             <option value="10marksgreaterequal">10th marks Greater Equal(&ge;)(in %)</option>
                             <option value="12markslessthan">12th marks Less Than(&lt;)(in %)</option>
                             <option value="12marksgreaterequal">12th marks Greater Equal(&ge;)(in %)</option>
                             <option value="bloodgroup">Blood Group</option>
                             <option value="department">Department</option>
                             <option value="dob">Date of birth</option>
                             <option value="gender">Gender</option>
                             <option value="category">Category</option>
                             <option value="differentlyabled">Differently abled</option>
                         </select>
                        <h5 style="color:Red;">${dynamicselectmsg} </h5>
               		</div>
               		
      <div class="col-md-5" id="fordiv" style ="display:none;">
      <h6> <label style="color:#2366a6;">* Mandatory</label> </h6>
         <input style ="display:none;" type="text" id="textbox" name="textbox" class="form-control form-control-lg" placeholder="Enter">
         <input style ="display:none;" type="number" id="numericvalue" name="numericvalue" class="form-control form-control-lg" placeholder="num">
		<select id="dynamicselect" name="dynamicselect" style="padding:10px; display:none;">
			<option value="select" selected="selected">--Choose Option--</option>
		</select>
		<input style ="display:none;" type="date" id="datevalue" name="datevalue" class="form-control form-control-lg">
		</div>

 

			<div class="col-md-1">
           		<input type="submit" value="Add Filter" class="btn btn-primary btn-lg px-5" onclick="return Validate()">
           	</div>
           	
           </div>
		</div>
</form>
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
  <script src="js/filterpagevalidation.js"></script>


  <script src="js/main.js"></script>

</body>

</html>