<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User Page</title>
<link href="daomite-material/css/material.min.css" rel="stylesheet">

</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>

	<form action="editUser.do" method="POST">
		<table>
			<tr>
				

				<td><input name="id" type="hidden" value="${user.id}" /></td>

			</tr>
			<tr>
				<td>User Name</td>
				<td><input name="userName" required type="text" value="${user.userName}" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input name="password" required type="text" value="${user.password}" /></td>
			</tr>
			<tr>
				<td>Enabled</td>
				<td><input name="enabled" required type="text" value="${user.enabled}" /></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><input name="role"  required type="text" value="${user.role}" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form>
	<form action="deleteUser.do" method="POST">
		<button class="btn btn-secondary" type="submit">Delete</button>
		<input type="hidden" name="id" value="${user.id }" />
	</form>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
</body>
</html>