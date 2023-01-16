<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update here...</title>
</head>
<body background="https://wallpaperaccess.com/full/187170.jpg">
	<%
	HttpSession s = request.getSession(false);
	if (s.getAttribute("email") != null) {
	%>
	<h2>Update here</h2>
	<form action="update" method="post">
		<pre>
     Email  <input type="text" name="email"
				value="<%=request.getAttribute("email")%>">
     Mobile <input type="text" name="mobile"
				value="<%=request.getAttribute("mobile")%>">
                   <input type="submit" value="Update">
  </pre>
	</form>
	<%
	} else {

	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	}
	%>
	
	<%@ include file="menu.jsp" %>
</body>
</html>