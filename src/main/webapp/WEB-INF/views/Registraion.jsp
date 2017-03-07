<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<p>QuickShopping</p>
<p>Enter your details for Registration.</p>
<form action="">
  First name:<input type="text" name="firstname">
  <br>
  Last name:<input type="text" name="lastname">
  <br>
  Male<input type="radio" name="gender" value="male" checked> 
  <br>
  Female<input type="radio" name="gender" value="female"> 
  <br>
  Birthday:<input type="date" name="bday">
  <br>
  MobileNumber:<input type="text" name="number">
  <br>
  E-mail:<input type="email" name="email">
  <br>
  confirm E-mail:<input type="email" name="email">
  <br>
  Password:<input type="text" name="password">
  <br>
  Confirm Password:<input type="text" name="password">
  <br>
  <input type="submit" value="Submit">
  <input type="reset" value="reset">
</form>
</body>
</html>