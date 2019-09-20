<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
		<br>
	
	<h1>Admin</h1>
	<h1>Create New User</h1>
	<form action="register.do" method="POST" modelAttribute="user">
		<table>
			<tr>
			<!-- required -->
				<td><input name="id" type="hidden" value="0" /></td>
				<td>UserName</td>
				<td><input name="userName" required /></td>
				<td>Password</td>
				<td><input name="password" type="password" required /></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>


	<c:forEach items="${users}" var="user">
		<h5>
			<a href="getUser.do?id=${user.id}">${user.userName} </a>
			User Enabled: (${user.enabled}) ID: ${user.id}
	
		</h5>
	</c:forEach>
		<form:form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form:form>
</body>
</html>