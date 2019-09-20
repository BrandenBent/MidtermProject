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
	<h2>
	<div class="text-success">
		<strong>${skill.name }</strong></div>
		${skill.description }<br>
		${skill.summary }<br>
	Supplies Needed: ${skill.supplies }<br>



	</h2>
	
	<%-- <img src=${skill.resources.imageLink } /> --%>
	<c:forEach var="link" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<h2>
				Click here for more info about <a href="${link.siteLink }"  class="text-success" target="_blank">${skill.name }</a><br>
				Click here to watch a video about <a href="${link.videoLink }"  class="text-success" target="_blank">${skill.name }</a>
			</h2>
		</c:if>
	</c:forEach>

	<!--  -->
	<c:forEach var="image" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<div>
				<img src="${image.imageLink }" width=800px height=600px />
			</div>
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