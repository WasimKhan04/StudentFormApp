<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Registration</title>
</head>
<body background="https://wallpaperaccess.com/full/187170.jpg">
	<%
HttpSession s=request.getSession(false);
if(s.getAttribute("email")!=null){

%>
	<h2>All Registration List</h2>
	<br/>
	<table border=10>
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<%
   ResultSet result=(ResultSet)request.getAttribute("all");
   while(result.next()){
   %>
		<tr>
			<td><%=result.getString(1)%></td>
			<td><%=result.getString(2)%></td>
			<td><%=result.getString(3)%></td>
			<td><%=result.getString(4)%></td>
			<td><a href="delete?email=<%=result.getString(3)%>">Delete</a></td>
			<td><a
				href="update?email=<%=result.getString(3)%>&mobile=<%=result.getString(4)%>">Update</a></td>

		</tr>

		<%} %>
	</table>
	<%}else{
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.forward(request, response);
}%>

<%@ include file="menu.jsp" %>

</body>
</html>