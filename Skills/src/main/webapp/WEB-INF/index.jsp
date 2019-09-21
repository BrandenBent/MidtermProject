<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>

<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>



<body>

	<%@ include file="skill/navBar.jsp"%>
	<br>
<!-- <div class="container-fluid">
 -->	<div class="content">
		<h1 class="lead">Test</h1>
		<h1>
			<a href="showUser.do?id=${userlog.id}" class="text-success">${userlog.userName}
			</a> is Logged in
		</h1>

		<!-- 	<div class="card-group"> -->
		<div class="card-deck">
			<c:forEach items="${skillset}" var="skill" begin="0" end="2">
				<div class="card">
				
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
							<div class="text-center">
							
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=395px height=275px />
									</div>
								<%-- <p>${skill. }</p> --%>
							</div>
						</c:if>
						<div class="card-body text-center">
							<h5 class="card-title">${skill.name }</h5>
							<p class="card-text">${skill.summary }</p>
							<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
								More</a>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>

		<div class="card-deck">
			<c:forEach items="${skillset}" var="skill" begin="3" end="5">
				<div class="card">
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=395px height=275px />
								<%-- <p>${skill. }</p> --%>
							</div>
						</c:if>
						<div class="card-body text-center">
							<h5 class="card-title">${skill.name }</h5>
							<p class="card-text">${skill.summary }</p>
							<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
								More</a>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
		<div class="card-deck">
			<c:forEach items="${skillset}" var="skill" begin="6" end="8">
				<div class="card">
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=395px height=275px />
								<%-- <p>${skill. }</p> --%>
							</div>
						</c:if>
						<div class="card-body text-center">
							<h5 class="card-title">${skill.name }</h5>
							<p class="card-text">${skill.summary }</p>
							<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
								More</a>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
		<div class="card-deck">
			<c:forEach items="${skillset}" var="skill" begin="9" end="11">
				<div class="card">
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=395px height=275px />
								<%-- <p>${skill. }</p> --%>
							</div>
						</c:if>
						<div class="card-body">
							<h5 class="card-title">${skill.name }</h5>
							<p class="card-text">${skill.summary }</p>
							<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
								More</a>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>

		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<script src="path_to/material.min.js"></script>
	
	<h2>${userlog.userName }</h2>

	</div>
</body>
</html>