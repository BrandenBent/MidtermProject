<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		
			<%-- <strong>${skill.name } </strong> <form action="addSkillToProfile.do" method="POST">
				<input name="id" type="hidden" value="${skill.id}" />
				<button class="btn btn-float btn-sm btn-secondary my-1"
					type="submit">
					<i class="material-icons">add</i>
				</button> 
			</form>--%>
			
			<c:forEach var="link" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<!-- <div class="btn-toolbar" role="toolbar"
				aria-label="Toolbar with button groups">
				<div class="btn-group" role="group" aria-label="Basic example"> -->
					<%-- <a class="btn btn-success" href="addSkillToProfile.do" method="POST"></a> 
						<input name="id" type="hidden" value="${skill.id}" /> <input
					type="submit" class="btn btn-success" value="Add Skill"> --%>
					<a class="btn btn-success"
						href="showAllSkills.do">View All Skills</a> 
					<a class="btn btn-success" href="${link.siteLink }" target="_blank">Learn More About This Skill</a> 
					<a class="btn btn-success" href="${link.videoLink }" target="_blank">Watch a Video</a>  <a
						class="btn btn-success" href="admin.do">Extra</a> <a
						class="btn btn-success" href="admin.do">Extra</a>

				<!-- </div>
			</div> -->
				</c:if>
	</c:forEach>
	
	
	<%-- --%>
				<!-- -->
					
			<br> ${skill.description }<br> ${skill.summary }<br>
			Supplies Needed: ${skill.supplies }<br>
			<form action="addSkillToProfile.do" method="POST">
				<input name="id" type="hidden" value="${skill.id}" /> <input
					type="submit" class="btn btn-success" value="Add Skill"> 
<%-- <input type="submit" class="btn btn-float  btn-success mt-3"
					type="button"><i class="material-icons">add</i> </form> --%>
	<%-- <img src=${skill.resources.imageLink } /> --%>
	<%-- <c:forEach var="link" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<h2>
				Click here for more info about <a href="${link.siteLink }"
					class="text-success" target="_blank">${skill.name }</a><br>
				Click here to watch a video about <a href="${link.videoLink }"
					class="text-success" target="_blank">${skill.name }</a>
			</h2>
		</c:if>
	</c:forEach> --%>

	<!--  -->
	<c:forEach var="image" items="${skill.resources }">
		<c:if test="${skill.id == skill.id}">
			<div>
				<img src="${image.imageLink }" width=800px height=600px />
			</div>
		</c:if>
	</c:forEach>

	<%-- <form action="addSkillToProfile.do" method="POST">
		<input name="id" type="hidden" value="${skill.id}" /> <input
			type="submit" class="btn btn-primary btn-lg" value="Add Skill">
	</form>

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
	</form> --%>
</body>
</html>