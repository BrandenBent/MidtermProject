<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search By Keyword</title>
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
		<br>
	
	<h1> Skills Found</h1>
${userlog.profile.name}
	<c:forEach items="${skills}" var="skill">
		<div>${skill.name }</div>
		<div>${skill.description }</div>
		<div>${skill.summary }</div>
<c:forEach var="resource" items="${skill.resources}">
<c:if test="${resource.id == resource.id}">
<img src="${resource.imageLink}">
</c:if>
		<form action="addSkillToProfile.do" method="POST">
			<input name="id" type="hidden" value="${skill.id}" /> 
			<input type="submit" class="btn btn-primary btn-lg" value="Add Skill">
		</form>
</c:forEach>
	</c:forEach>

	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>

	<h2>${userlog.userName }</h2>

</body>
</html>