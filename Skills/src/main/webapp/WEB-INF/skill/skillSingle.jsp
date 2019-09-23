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

	<div>
		<c:if test="${userlog.profile.name == null }">
			<%@ include file="guestNav.jsp"%>
		</c:if>
		<br> <br>
		<c:if test="${userlog.profile.name != null }">

				<form action="addSkillToProfile.do" method="POST">
					<input name="id" type="hidden" value="${skill.id}" /> <input
						type="submit" class="btn btn-success" value="Add" />
				</form>
			</c:if>

			<c:if test="${userlog.role == 'admin' }">
				<%@ include file="adminNav.jsp"%>

				<form action="editLink.do" method="GET">
					<input type="submit" class="btn btn-secondary" value="Edit">
					<br> <input type="hidden" name="id" value="${skill.id}" />
				</form>
				<form action="deletedSkill.do" method="POST">
					<input type="submit" class="btn btn-secondary" value="Delete">
					<br> <input type="hidden" name="id" value="${skill.id}" />
				</form>
			</c:if>
					<br> <br>
			
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

						<a class="btn btn-success" href="${link.siteLink }"
							target="_blank">Read on the Web</a> <a class="btn btn-success"
							href="${link.videoLink }" target="_blank">Watch a Video</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>