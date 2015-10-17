<%@page import="javax.print.attribute.standard.PagesPerMinuteColor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.winapp.service.RegisterDAOService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<jsp:useBean id="regObj" class="com.winapp.support.RegBean"></jsp:useBean>
<jsp:setProperty property="*" name="regObj"/>

<%
if(regObj.getuEmail()!= null | regObj.getuEmail().isEmpty() | !regObj.getuPass().equals(null) | !regObj.getfName().equals(null)){
	int status =RegisterDAOService.regDAO(regObj);
	pageContext.setAttribute("i",status);
	//System.out.print(status + "---" +pageContext.getAttribute("i"));
	String name = regObj.getfName();
}
else {
	request.setAttribute("regmsg", "required fields are empty");
	request.getRequestDispatcher("RegistrationModel.jsp").forward(request, response);
}
%>

<%-- <jsp:getProperty name="regObj" property="fName"> --%>

<c:if test="${i > 0}">
<%-- <jsp: page = "SignIn.jsp">
<jsp:param value="param1" name="welcome"/>
</jsp:forward> --%>

<%response.sendRedirect("SignIn.jsp"); %>
</c:if>



    