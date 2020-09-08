    function Validate() {
		
		//for filteroption dropdown
		var filterOption = document.getElementById("filteroption");

		if(filterOption.value =="select"){
			// If --chose option-- is selected display error
			filterOption.focus();
			// show some error msg in span tag
			document.getElementById("filteroptionmsg").style.visibility = 'visible';
			document.getElementById("filteroptionmsg").innerText=" Please! Select a Option";
			document.getElementById("filteroptionmsg").style.color = 'Red';
			return false;
		}else{
			return true;
		}
    }