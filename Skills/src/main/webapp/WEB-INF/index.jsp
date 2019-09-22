<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>

<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="skill/navBar.jsp"%>
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="skill/adminNav.jsp"%>
		<i class="material-icons">whatshot</i>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="skill/guestNav.jsp"%>
		<div class="container">

			<div class="row">
				<div class="col-md">
					<h2 class="text-center text- mb-4">Stuff</h2>
<!-- 					<div class="row">
<!--  -->					<!-- 	<div class="col-md-6 mx-auto"> -->

							<div class="card rounded-0">
								<div class="card-header">
									<div class="card-body text-center">

										<h3 class="text-primary mx-auto">Registration</h3>
									</div>
									<div class="card-body">
										<form action="register.do" class="form" role="form"
											method="POST">
											<div class="form-group">
												<input name="id" type="hidden" value="0" /><label
													for="userName">Username</label><input type="text"
													class="form-control form-control-lg rounded-0"
													name="userName" required>
											</div>
											<div class="form-group">
												<label>Password</label> <input name="password" required
													type="password"
													class="form-control form-control-lg rounded-0" required>
											</div>
											<button type="submit"
												class="btn btn-success btn-lg float-right" id="btnLogin">Register</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- 					<div class="row">
 -->						<div class="col-md-12">

							<div class="card rounded-0">
								<div class="card-header">

									<!--/row-->
									<c:forEach items="${skillset}" var="skill" begin="1" end="1">
										<div class="card">

											<c:forEach var="image" items="${skill.resources }">
												<c:if test="${skill.id == skill.id}">
													<div>
														<div class="card-body text-center">
															<img class=".img-thumbnail" src="${image.imageLink }"
																width=395px height=275px />
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>

										<div class="card-body text-center">
											<h5 class="card-title">${skill.name }</h5>
											<p class="card-text">${skill.summary }</p>
											<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
												More</a>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>






		<!--/col-->
	</c:if>

	<!-- <div class="container-fluid">
 -->
	<div class="content">
		<h1 class="lead">Hello</h1>
		<h1>
			<!--  <a class="btn btn-secondary" href="navRegister.do">Add User</a>
		<a
				class="btn btn-success my-1" href="navLogin.do">Login</a>  -->
			<a href="showUser.do?id=${userlog.id}" class="text-success">${userlog.userName}
			</a>
		</h1>
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

	</div>
</body>
</html>