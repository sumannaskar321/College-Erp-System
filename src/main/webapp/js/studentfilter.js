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
	document.getElementById("dynamicselect").options.length=0;
	
	var dynamicoption = document.getElementById("dynamicselect");
	var opoptionArray = [];
	var newOption;
	opoptionArray.length = 0;
	
	
	if(dynamicselectvalue == "bloodgroup"){
		optionArray = ["select|--Choose Option--",
			"A+|A+","B+|B+","AB+|AB+","O+|O+","A-|A-","B-|B-","AB-|AB-","O-|O-"];
	}
	else if(dynamicselectvalue =="department"){
		 optionArray = ["select|--Choose Option--",
			"ComputerScienceAndEngineering|Computer Science and Engineering(CSE)",
			"ElectricalAndElectronics|Electronics and Communications Engineering (ECE)",
			"ElectricalEngineering|Electrical Engineering(EE)",
			"MechanicalEngineering|Mechanical Engineering(ME)",
			"CivilEngineering|Civil Engineering (CE)"];	
	}
	else if(dynamicselectvalue =="gender"){
		optionArray = ["select|--Choose Option--","male|Male","female|Female","other|Other"];	
	}
	else if(dynamicselectvalue =="category"){
		optionArray = ["select|--Choose Option--",
			"General|General","S.C|SC","S.T|ST","O.B.C|OBC","P.H|PH","P.W.D|PWD"];	
	}
	else if(dynamicselectvalue =="differentlyabled"){
		optionArray = ["select|--Choose Option--","yes|YES","no|NO"];	
	}
	else{
		optionArray = ["select|--Choose Option--","${batches[0]}|${batches[0]}"];	
	}
	for(opvalue in optionArray){
		var pair = optionArray[opvalue].split("|");
		newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		dynamicoption.options.add(newOption);
	}
}
