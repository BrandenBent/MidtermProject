<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%@ include file="navBar.jsp"%>
<br>
<br>
	<form action="login.do" method="GET" modelAttribute="login">
		<table>
			<tr>
				<td>User Name</td>
				<td><input name="userName" required /></td>
				<td>Password</td>
				<td><input name="password" type="password" required /></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
	
</body>
</html>