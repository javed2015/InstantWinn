<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.winapp.service.RegisterDAOService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.winapp.support.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.ClassNotFoundException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginCheck</title>
</head>
<body>
<%
	String html="<html><body><a href=\"Registration.jsp\"><button type=\"button\">Logout</button></a></body></html>";
%>

<%
	int j = 0;
	try {
		if(!session.getAttribute("name").equals(null)){
			request.setAttribute("loginmsg", "you are already logged in, enter your code");/* hari code to replace this */
			request.getRequestDispatcher("Enter.jsp").forward(request, response);
		}
		
	}
	catch(NullPointerException ne)	{
		j=1;
	}
%>
<%
		if(j==1) {
			
			String uEmail = request.getParameter("uEmail");
			String uPass = request.getParameter("uPass");
			
			try {
				Connection con = ConnectionProvider.getConnection();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select first_name from winappreg where email = '"+uEmail+"' and password = '"+uPass+"'");
				if(rs.next()) {
					session = request.getSession();
					String fName=rs.getString("first_name");
					session.setAttribute("name",fName);
					//request.setAttribute("loginmsg", "you are successfully logged in, enter your code");
					request.getRequestDispatcher("Enter.jsp").forward(request, response);
				}
				else {
					request.setAttribute("message", "Invalid User name/Password");
					request.getRequestDispatcher("SignIn.jsp").forward(request, response);
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
%>
</body>
</html>