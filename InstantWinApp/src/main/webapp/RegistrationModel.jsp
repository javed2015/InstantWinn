<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script type="text/javascript" src="include/check.js"> </script>
<!-- <script type="text/javascript" src="include/formcheck.js"> 	</script> -->
<style type="text/css">
form {
	width: 247px;
	padding: 20px 40px;
	margin: 85px auto 0;
	background-color: white;
	box-shadow: 1px 1px 20px #0085ca;
}

.element {
	margin-bottom: 20px;
	text-align: center;
}

.cont {
	text-align: right !important;
	width: 243px;
	display: inline-flex;
}

input[type="text"] {
	width: 244px;
	height: 24px;
}

input[type="email"] {
	width: 244px;
	height: 24px;
}

input[type="password"] {
	width: 244px;
	height: 24px;
}

.hd {
	margin-bottom: 10px;
	text-align: center;
	color: cornsilk;
	position: relative;
	top: 80px;
	font-size: 28px;
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
	margin-bottom: 0px;
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

body {
	background-color: #05345c
}
#bt {
	position:relative;
	top:40px;
	border: 2px solid white;
	background-color: rgba(255, 255, 255, 0.1);
	padding-top: 5px ;
	padding-bottom: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 13px;
	margin-left: 5px;
}
#amit {
	color:Red;
}
</style>
</head>
<body>
	<div class="hd">SignUp</div>
	<a href="Enter.jsp" style="color: white; text-decoration: none;">
	<button id="bt" type="button" style="color: white; cursor: pointer">Home</button>
	</a>
	<form action="register.jsp" name="vinform" method="post">
		<div class="element">
			<span class="cont">FirstName:</span><input type="text" name="fName"
				required="required">
		</div>
		<div class="element">
			<span class="cont">LastName:</span><input type="text" name="lName"
				required="required">
		</div>
		<div class="element">
			<span class="cont">Email:</span><input type="email" name="uEmail"
				required="required" onkeydown="javascript:sendInfo()"/>
			<span id="amit" name="span"> 
		</div>
		<div class="element">
			<span class="cont">Password:</span><input type="password"
				name="uPass" required="required">
		</div>
		<div class="element" style="margin-bottom: 0px;">
			<input type="submit" name="register" value="Submit" id="submit" class="b btn btn-xl" style="cursor: pointer">
		</div>
		${message}  <!-- unknown  -->
		<!-- hari code -->
		${regmsg}    <!-- back end empty field check  -->
	</form>
</body>

</html>