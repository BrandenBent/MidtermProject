<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>

<form action="updateSkill.do" method="POST">
		<table>
			<tr>

				<td><input name="id" type="hidden" value="${skill.id}" /></td>

			</tr>
			<tr>
				<td>Title</td>
				<td><input name="name" type="text" required value="${skill.name}" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input name="description" type="text"
				required	value="${skill.description}" /></td>
			</tr>
			<tr>
				<td>Supply</td>
				<td><input name="supplies" type="text"
				required	value="${skill.supplies}" /></td>
			</tr>
			<tr>
				<td>Summary</td>
				<td><input name="summary" type="text" required value="${skill.summary}" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
</body>
</html>