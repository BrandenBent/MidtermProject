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
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="skill/adminNav.jsp"%>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="skill/guestNav.jsp"%>
	</c:if>

<br>
<br>
	
	<div class="row">

		<c:forEach items="${skillset}" var="skill" begin="0" end="3">

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
		</c:forEach>
	</div>
	<div class="row">

		<c:forEach items="${skillset}" var="skill" begin="4" end="7">

			<div class="card-deck col-lg-3">
				<div class="card">
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
		</c:forEach>
	</div>
	<div class="row">

		<c:forEach items="${skillset}" var="skill" begin="8" end="11">

			<div class="card-deck col-lg-3">
				<div class="card">
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
		</c:forEach>
	</div>
	<div class="row">

		<c:forEach items="${skillset}" var="skill" begin="12" end="15">
			<div class="card-deck col-lg-3">
				<div class="card">
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
		</c:forEach>
		<c:forEach items="${skillset}" var="skill" begin="16" end="19">
			<div class="card-deck col-lg-3">
				<div class="card">
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
		</c:forEach>
		<c:forEach items="${skillset}" var="skill" begin="20" end="23">
			<div class="card-deck col-lg-3">
				<div class="card">
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
		</c:forEach>
	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<script src="path_to/material.min.js"></script>


</body>
</html>