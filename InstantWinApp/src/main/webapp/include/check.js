var request;  

function sendInfo()  
{  
var v=document.vinform.uEmail.value;  
var url="userValidate.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
var val;
if(request.readyState==4){  
val=request.responseText;  
document.getElementById('amit').innerHTML=val;  

}  
}
 