<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

	<h2>
		<center>QuickShopping</center>
	</h2>
	<center>${msg}</center>

	$
	<center>${role}</center>

	<center>${successMessage}</center>

	<center>${errorMessage}</center>


	${loginMessage}
	<hr>
	<jsp:include page="menu/CategoryMenu1.jsp"></jsp:include>



	<c:if test="${isAdmin==true }">
		<jsp:include page="Admin/AdminHome.jsp"></jsp:include>


	</c:if>


	<c:if test="${empty loginMessage}">
		<a href="login">Login</a>
		<br>

		<a href="register"> Register</a>

	</c:if>



	<c:if test="${not empty loginMessage}">
		<a href="logout">Logout</a>
		<br>


	</c:if>

	<c:if test="${isAdmin==false }">
		<a href="myCart"> My Carts</a>

	</c:if>






	<br>
	<br>
	<br>
	<br>
	<c:if test="${isUserClickedLogin==true}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>

	<c:if test="${not empty errorMessage}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>




	<c:if test="${isUserClickedRegister==true}">
		<jsp:include page="Registraion.jsp"></jsp:include>
	</c:if>



</body>
</html>