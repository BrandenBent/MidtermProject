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
<h1>TESTING SINGLE SKILL</h1>
	<div>${skill.name }</div>
	<div>${skill.description }</div>
	<%-- <img src=${skill.resources.imageLink } /> --%>
	<c:forEach var="image" items="${skill.resources }">
	<c:if test="${skill.id == skill.id}" >
		<div><img src="${image.imageLink }" width=500px height=500px/></div>
	</c:if>
	</c:forEach>
	<form action="editLink.do" method="GET">
			<input type="submit" class="btn btn-success btn-lg" value="Edit">
			<br> <input type="hidden" name="id" value="${skill.id}" />
		</form>
	<form action="deletedSkill.do" method="POST">
			<input type="submit" class="btn btn-danger btn-lg" value="Delete">
			<br> <input type="hidden" name="id" value="${skill.id}" />
		</form>
		<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
</body>
</html>