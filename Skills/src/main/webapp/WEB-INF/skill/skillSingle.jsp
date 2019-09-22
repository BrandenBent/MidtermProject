<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Single Skill</title>
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="adminNav.jsp"%>
		<form action="editLink.do" method="GET">
		<input type="submit" class="btn btn-success btn-lg" value="Edit">
		<br> <input type="hidden" name="id" value="${skill.id}" />
	</form>
	<form action="deletedSkill.do" method="POST">
		<input type="submit" class="btn btn-danger btn-lg" value="Delete">
		<br> <input type="hidden" name="id" value="${skill.id}" />
	</form>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

<br>
<br>
		
			
			<c:forEach var="link" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
					<a class="btn btn-success"
						href="showAllSkills.do">View All Skills</a> 
					<a class="btn btn-success" href="${link.siteLink }" target="_blank">Learn More About This Skill</a> 
					<a class="btn btn-success" href="${link.videoLink }" target="_blank">Watch a Video</a> 

				</c:if>
	</c:forEach>

		<br> ${skill.description }<br> ${skill.summary }<br>
			<strong>Supplies Needed:</strong> ${skill.supplies }<br>
	<c:if test="${userlog.profile.name != null }">
		<form action="addSkillToProfile.do" method="POST">
			<input name="id" type="hidden" value="${skill.id}" /> <input
				type="submit" class="btn btn-success" value="Add Skill">
	</c:if>

	<c:forEach var="image" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<div>
				<img src="${image.imageLink }" width=800px height=600px />
			</div>
		</c:if>
	</c:forEach>

</body>
</html>