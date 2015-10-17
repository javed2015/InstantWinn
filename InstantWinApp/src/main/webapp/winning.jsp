
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Winning</title>
<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
</head>
<script>$(document).ready(function(){});</script>
<style>
body {
	background-color: #4183D7;
	
}

h1 {
	color: orange;
	text-align: center;
}
#snow{
	background: none;
	font-family: Androgyne;
	background-image: url('http://www.wearewebstars.dk/codepen/img/s1.png'), url('http://www.wearewebstars.dk/codepen/img//s2.png'), url('http://www.wearewebstars.dk/codepen/img//s3.png');
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
	z-index:1;
	-webkit-animation: snow 10s linear infinite;
	-moz-animation: snow 10s linear infinite;
	-ms-animation: snow 10s linear infinite;
	animation: snow 10s linear infinite;
}
@keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}
@-moz-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 400px 1000px, 200px 400px, 100px 300px;}
}
@-webkit-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}
@-ms-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}	
#cong {
	position:relative;
	text-align:center;
	top:250px;
	font-family: 'Pacifico', cursive;
	font-size:50px;
	color:aliceblue;
}
#bt {
	z-index:100;
	position:relative;
	top:40px;
	border: 2px solid white;
	background-color: rgba(255, 255, 255, 0.1);
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 13px;
	margin-left: 5px;
}
</style>
<body>
	<a href="Enter.jsp" style="color: white; text-decoration: none;">
	<button id="bt" type="submit" style="color: white; cursor: pointer">Home</button>
	</a>
	<div id="snow"></div>
	<div id="cong">Congratulations You Have Won</div> 
</body>
</html>