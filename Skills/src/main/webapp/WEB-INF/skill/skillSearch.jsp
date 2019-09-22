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
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="adminNav.jsp"%>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

	<br>
	<br>

	<c:forEach items="${skills }" var="skill">

		<div class="card-deck col-lg-3">
			<div class="card tm-4 ">

				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}">
						<div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div>
					</c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
						</h5>
						<p class="card-text">${skill.summary }</p>
					</div>
					<div class="card-footer">

						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<c:if test="${userlog.profile.name != null }">
			<form action="addSkillToProfile.do" method="POST">
				<input name="id" type="hidden" value="${skill.id}" /> <input
					type="submit" class="btn btn-primary btn-lg" value="Add Skill">
				<!--  <input type="submit" class="btn btn-float  btn-success mt-3"
					type="button"><i class="material-icons">add</i> -->


			</form>
		</c:if>
	</c:forEach>



</body>
</html>