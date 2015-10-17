<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.winapp.support.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Redemption</title>
</head>
<%
String html="<html><body><br /> <div id=\"bt\"><a href=\"logout.jsp\"><button type=\"button\">Logout</button></a></div></body></html>";
%>
<body>

<%
	
try {
	
	if(!session.getAttribute("name").equals(null)) {
		String code = request.getParameter("code");
		Connection con = ConnectionProvider.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select code from winappcode where code='"+code+"' and status = '0'");
		if(rs.next()) {
			
			try {
				
				st.executeUpdate("update winappcode set status='1' where code='"+code+"'");
				}
			catch(SQLException ie) {
				System.out.print(ie);
			} 
			response.sendRedirect("winning.jsp");
			/* out.print("your code is valid, you won");
			try {
				out.write(html); 
				st.executeUpdate("update winappcode set status='1' where code='"+code+"'");
				}
			catch(IOException ie) {
				System.out.print(ie);
			} */
						
		}
		else {
			request.setAttribute("resmsg", "Redemption code is invalid");
			request.getRequestDispatcher("Enter.jsp").forward(request, response);
			/* out.print("your code is not valid");
			try {
				out.write(html);
				}
			catch(IOException ie) {
				System.out.print(ie);
			} */
		}
		
	}
}catch(NullPointerException ne) {
	request.setAttribute("resmsg", "You are not logged in. Please login");
	request.getRequestDispatcher("Enter.jsp").forward(request, response);
}

%>


</body>
</html>