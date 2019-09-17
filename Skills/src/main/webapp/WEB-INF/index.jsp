<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>
<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
	name="viewport">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/daomite-material/css/material.min.css" rel="stylesheet">

</head>
<body>
	<h1>Test</h1>
	<h3>Login</h3>
	<form action="profile.do" method="POST">
		<table>
			<tr>
				<td>UserName</td>
				<td><input name="username" /></td>
				<td>Password</td>
				<td><input name="password" /></td>
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


	<form action="crud.do" method="GET">
		<input type="submit" value="Go Do Crud" />
	</form>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<script src="path_to/material.min.js"></script>


</body>
</html>
