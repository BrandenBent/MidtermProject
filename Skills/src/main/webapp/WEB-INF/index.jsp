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
		<%-- <div class="row">
			<div class="col-md-12">
				<h2 class="text-center text- mb-4">
					<a class="btn btn-success my-1 ml-10" href="navRegister.do">Please
						Register to Unlock All of Our Features</a>
				</h2>
				<div class="row">
					<div class="col-md-6 mx-auto">

						<!-- form card login -->
						<div class="card rounded-0">
							<div class="card-header">
								<div class="card-body text-center">
									<h3 class="text-primary mx-auto">Welcome Back</h3>
								</div>
								<div class="card-body">
									<form action="login.do" class="form" role="form"
										autocomplete="off" id="formLogin" method="GET">
										<div class="form-group">
											<strong><label for="userName">User Name</label></strong><input
												type="text" class="form-control form-control-lg rounded-0"
												name="userName" id="userName" required>
											<div class="invalid-feedback">Oops, you missed this
												one.</div>
										</div>
										<div class="form-group">
											<label>Password</label> <input name="password" required
												type="password"
												class="form-control form-control-lg rounded-0" id="password">
											<div class="invalid-feedback">Enter your password too!</div>
										</div>
										<button type="submit"
											class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



	<br>
	<br> --%>
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