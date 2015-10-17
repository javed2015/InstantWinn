function required()  
{  
	
	var val = 0;
	
	if(globevar==1) {
		val = 1;
		document.vinform.uEmail.value = "";
		document.vinform.uEmail.style.background = 'Yellow';   
    }  
	/*else {
		alert(white);
		document.vinform.uEmail.style.background = 'White';
	}*/
	
	if(val == 0){
		/*alert("success");*/
		return true;
	}
	else if(val == 1) {
		alert("change email, already exist");
		return false;
	}
	

}






