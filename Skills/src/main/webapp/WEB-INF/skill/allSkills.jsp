<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All Skills</title>
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>
	<h1>All Skills</h1>
	${userlog.userName}
	<c:forEach items="${allSkills}" var="skill">
	<c:forEach var="resource" items="${skill.resources}">
<c:if test="${resource.id == resource.id}">
<img src="${resource.imageLink}" height="100" width="100">
</c:if>
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			(${skill.description})
		</h5>
		</c:forEach>
	</c:forEach>

	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>

</body>
</html>