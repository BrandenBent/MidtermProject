<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>
</head>
<body>
	<h1>Test</h1>
	<h3>Login</h3>
	<form action="profile.do" method="POST">
		<table>
			<tr>
				<td>UserName</td>
				<td><input name="userName" required /></td>
				<td>Password</td>
				<td><input name="password" type="password" required/></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
	<div>
		<form action="showAllSkills.do" method="GET">
			<!-- <input name="allSkills"> -->
			<input type="submit" value="Show All Skills" />
		</form>


		<c:forEach items="${skillset}" var="skill">
			<h5>
				<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
				(${skill.description})
			</h5>

		</c:forEach>
	</div>
	<form action="register.do" method="POST" modelAttribute ="user">
		<table>
			<tr>
	<td><input name="id" type="hidden" value="0" /></td>
				<td>UserName</td>
				<td><input name="userName" required/></td>
				<td>Password</td>
				<td><input name="password" type="password" required/></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>

	<form action="crud.do" method="GET">
		<input type="submit" value="Go Do Crud" />
	</form>
</body>
</html>
