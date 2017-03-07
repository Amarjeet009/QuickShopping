<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>

<h2> <center> QuickShopping  </center></h2>
 <center> ${msg}</center>
 <h3>${successMessage}</h3>
 <h3>${errorMessage}</h3>
 ${loginMessage}
<hr>

<a href="login">Login</a> <br>
<a href="register"> Register</a>
<br>

<c:if test="${isUserClickedLogin==true}">
	<jsp:include page="Login.jsp"></jsp:include>  
</c:if>
<c:if test="${isUserClickedRegister==true}">
<jsp:include page="Registraion.jsp"></jsp:include> 
</c:if>

