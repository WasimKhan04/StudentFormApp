<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
</head>
<body background="https://wallpaperaccess.com/full/187170.jpg">
<h1>Welcome to Student Form</h1>
	<h2>Login Here</h2>
	<form action="verifylogin" method="post">
		<pre>
    Email    <input type="text" name="email">
    Password <input type="text" name="password">
                     <input type="submit" value="Login">
  
  </pre>

	</form>

	<%
	if (request.getAttribute("error") != null) {
		out.println(request.getAttribute("error"));
	}
	%>
</body>
</html>