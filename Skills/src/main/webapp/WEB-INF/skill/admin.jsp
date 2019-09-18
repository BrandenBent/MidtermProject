<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>
	<h1>Admin</h1>
	<h1>Create New User</h1>
	<form action="register.do" method="POST" modelAttribute="user">
		<table>
			<tr>
			<!-- required -->
				<td><input name="id" type="hidden" value="0" /></td>
				<td>UserName</td>
				<td><input name="userName"  /></td>
				<td>Password</td>
				<td><input name="password" type="password"  /></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>

	<form action="deleteUser.do" method="POST">
		<button class="btn btn-secondary" type="submit">Delete</button>
		<input type="hidden" name="id" value="${user.id }" />
	</form>

	<form action="editUser.do" method="POST">
		<table>
			<tr>

				<td><input name="id" type="hidden" value="${user.id}" /></td>

			</tr>
			<tr>
				<td>Title</td>
				<td><input name="name" type="text" value="${user.userName}" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input name="password" type="text" value="${user.password}" /></td>
			</tr>
			<tr>
				<td>User Enabled</td>
				<td><input name="enabled" type="checkbox"
					value="${user.enabled}" /></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><input name="role" type="text" value="${user.role}" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form>


	<c:forEach items="${users}" var="user">
		<h5>
			<a href="getUser.do?id=${user.id}">${user.userName} </a>
			
			<form:form action="editUserLink.do" method="GET">
			<input type="submit" class="btn btn-success btn-lg" value="Edit">
			<br> <input type="hidden" name="id" value="${user.id}" />
		</form:form>
			<form:form action="deleteUser.do" method="POST">
				<button class="btn btn-secondary" type="submit">Delete</button>
				<input type="hidden" name="id" value="${user.id }" />
			</form:form>
		</h5>
	</c:forEach>
		<form:form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form:form>
</body>
</html>