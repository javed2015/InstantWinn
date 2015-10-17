<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.ResultSet" %>
<%@page import="com.winapp.support.ConnectionProvider" %>

<% 
	String s=request.getParameter("val");
	Connection con =null;
	if(s==null || s.trim().equals("")){  
		out.print("Please enter emailid");  
	}
	else {
		try {
			con=ConnectionProvider.getConnection();
			PreparedStatement ps=con.prepareStatement("select email from winappreg where email=?");
			ps.setString(1,s);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				out.print("Email ID already exists");
			}
			else {
				out.print("user is available");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	finally {
		con.close();
	}
}

%>