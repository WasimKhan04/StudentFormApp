<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
</head>
<body background="https://wallpaperaccess.com/full/187170.jpg">
	<%
	HttpSession s = request.getSession(false);
	if (s.getAttribute("email") != null) {
	%>
	<h2>Welcome to New Registration</h2>
	<form action="saveReg" method="post">
		<pre>
      NAME   <input type="text" name="name">
      CITY   <input type="text" name="city">
      EMAIL  <input type="text" name="email">
      MOBILE <input type="text" name="mobile">
                     <input type="submit" value="Save">
   </pre>

	</form>
	<%
	if (request.getAttribute("msg") != null) {
		out.println(request.getAttribute("msg"));
	}
	%>
	<%
	} else {
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	}
	%>
	
	<%@ include file="menu.jsp" %>
</body>
</html>