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
	<form action="login.do" method="POST">
		<table>
			<tr>
				<td>UserName</td><td><input name="username" /></td>
				<td>Password</td><td><input name="password" /></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
	<div>
	
	<c:forEach items="${skillset}" var="skill">

  <h5><a href="getSkill.do?fid=${skill.id}">${skill.name} </a> (${skill.description})</h5>

</c:forEach>
</div>
</body>
</html>