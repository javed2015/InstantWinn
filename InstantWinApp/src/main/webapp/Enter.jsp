<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instant Win APP</title>
</head>
<body style="background-color: #05345c; margin-top: 25px;">
<%
int j =0;
try {
	
	if(!session.getAttribute("name").equals(null)) {
		String s = "Hi " + (String)session.getAttribute("name");
		pageContext.setAttribute("status",s);
		j=1;
	}
	
}catch(NullPointerException ne) {
	String s = "Hi Guest!";
	j=0;
	
	pageContext.setAttribute("status",s);
}
%>
<style type="text/css">
form {
	width: 247px;
	padding: 20px 40px;
	margin: 98px auto 0;
	background-color: white;
	box-shadow: 1px 1px 20px #0085ca;
}

.element {
	margin-bottom: 20px;
	text-align: center;
}

.element1 {
	position: absolute;
	top: 40px;
	right: 46px;
}

.hd {
	color: #cddc39;
	position: relative;
	top: 40px;
	left: 80px;
	font-size: larger;
}

.hd1 {
	color: #fff;
	text-align: center;
	font-size: xx-large;
	position: relative;
	top: 72px;
}

.b {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 180px;
	text-decoration: none;
	padding: 20px 30px;
	color: white;
	box-shadow: white 0 0px 0px 2px inset;
	background-color: #e8112d;
	border-left-width: 1px;
	border-right-width: 1px;
	border-top-width: o;
	border-bottom-width: 1px;
	border-top-width: 1px;
	padding-top: 15px;
	padding-bottom: 15px;
}

.btn-xl:hover, .btn-xl:focus, .btn-xl:active, .btn-xl.active, .open .dropdown-toggle.btn-xl
	{
	color: white;
	box-shadow: #0085ca 0 80px 0px 2px inset;
}

.btn-xl:active, .btn-xl.active, .open .dropdown-toggle.btn-xl {
	background-image: none;
}

.btn-xl.disabled, .btn-xl[disabled], fieldset[disabled] .btn-xl, .btn-xl.disabled:hover,
	.btn-xl[disabled]:hover, fieldset[disabled] .btn-xl:hover, .btn-xl.disabled:focus,
	.btn-xl[disabled]:focus, fieldset[disabled] .btn-xl:focus, .btn-xl.disabled:active,
	.btn-xl[disabled]:active, fieldset[disabled] .btn-xl:active, .btn-xl.disabled.active,
	.btn-xl[disabled].active, fieldset[disabled] .btn-xl.active {
	border-color: #f44336;
	background-color: #f44336;
}

.btn-xl .badge {
	color: #f44336;
	background-color: #fff;
}

#bt {
	position:relative;
	top:21px;
	border: 2px solid white;
	background-color: rgba(255, 255, 255, 0.1);
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 13px;
	margin-left: 5px;
}
.al{
	color:red;
}
</style>
	<div class="hd"><%=(String)pageContext.getAttribute("status")%></div> 
	<c:set var="jj" value="<%=j %>"> </c:set>
	
	
	<div class="hd1">Instant Win App - Version 1</div>
	
	<div class="element1"> 
			<c:if test="${jj==1}">
   				<!-- <button type="button"><a href="logout.jsp">Logout</a></button> -->
   				<a href="logout.jsp" style="color: white; text-decoration: none;">
   				<button id="bt" type="button" style="color: white; cursor: pointer">SignOut</button>
				</a>
			</c:if>
			<c:if test="${jj==0}">
   				<!-- <button type="button"><a href="logout.jsp">Logout</a></button> -->
   				<a href="SignIn.jsp" style="color: white; text-decoration: none;">
   				<button id="bt" type="button" style="color: white; cursor: pointer">SignIn</button>
   				</a>
				<a href="RegistrationModel.jsp" style="color: white; text-decoration: none;">
				<button id="bt" type="button" style="color: white; cursor: pointer">SignUp</button>
				</a>
			</c:if>
	</div>
	
	
	<form action="result.jsp" method="post">
		<div class="element">
			Enter code:<input type="text" name="code" required="required">
		</div>
		
		<div class="element" style="margin-bottom: 0px;">
			<input type="submit" name="register" class="b btn btn-xl" value="Submit"
				style="margin-bottom: 0px; cursor: pointer">
		</div>
		<div class="al">${resmsg}</div>  
	</form>
	
	
</body>
</html>
