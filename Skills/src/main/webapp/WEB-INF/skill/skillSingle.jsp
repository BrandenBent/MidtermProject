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
	<div class="card-deck  col-lg-6">

		<div class="card tm-4 ">

			<c:forEach var="link" items="${skill.resources }">
				<c:if test="${skill.id == skill.id}">
					<div>
						<img class="img-thumbnail card-img-top img-responsive"
							src="${link.imageLink }" />
					</div>
				</c:if>
				<div class="card-body text-center">
					<h5 class="card-title">
						<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
					</h5>
					<p class="card-text">${skill.summary }</p>
					<strong>Supplies Needed:</strong> ${skill.supplies }<br>
				</div>

				<div class="card-footer">

					<%-- <div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Dropdown</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
							<span class="dropdown-item-text">Dropdown item text</span> <a
								class="btn btn-success" href="${link.siteLink }" target="_blank">Read
								on the Web</a> <a class="btn btn-success" href="${link.videoLink }"
								target="_blank">Watch a Video</a> <a class="btn btn-success"
								href="addSkillToProfile.do">Add Skill</a><input name="id"
								type="hidden" value="${skill.id}" />
						</div>
					</div> --%>
					<%-- 	<div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-success">Read on the Web</button>
  <button type="button" class="btn btn-success">Watch a Video</button>
  <button type="button" class="btn btn-success">Add Skill</button>
</div>--%>
					<a class="btn btn-success" href="${link.siteLink }" target="_blank">Read
						on the Web</a> <a class="btn btn-success" href="${link.videoLink }"
						target="_blank">Watch a Video</a>
					<form action="addSkillToProfile.do" method="POST">
						<input name="id" type="hidden" value="${skill.id}" /> <input
							type="submit" class="btn btn-success" value="Add Skill"/></form>
				</div>
			</c:forEach>
		</div>
	</div>

	<%-- </c:forEach> --%>


	<%-- <c:forEach var="link" items="${skill.resources }">
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
	</c:forEach> --%>
</body>
</html>