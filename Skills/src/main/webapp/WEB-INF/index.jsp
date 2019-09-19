<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>
<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
	name="viewport">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>



<body>

	<%@ include file="skill/navBar.jsp"%>
	<div class="content">

	<h1 class="lead">Test</h1>
	<br>
<h1><a href="showUser.do?id=${userlog.id}">${userlog.userName} </a> is Logged in</h1>	
<form action="login.do" method="GET" modelAttribute = "login">

		<table>
			<tr>
				<td>UserName</td>
				<td><input name="userName" required /></td>
				<td>Password</td>
				<td><input name="password" type="password" required/></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
					</table>
          
	</form>
          
  	<form action="register.do" method="POST" modelAttribute ="user">
		<table>
			<tr>
	<td><input name="id" type="hidden" value="0" /></td>
				<td>UserName</td>
				<td><input name="userName" /></td>
				<td>Password</td>
				<td><input name="password" /></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>


<!-- 	<div class="card-group"> -->
		<div class="card-group">
			<c:forEach items="${skillset}" var="skill" begin = "1" end = "3">
				<div class="card">
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=400px height=300px />
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
		
		<div class="card-group">
			<c:forEach items="${skillset}" var="skill" begin = "3" end = "5">
				<div class="card" style="width: 18rem;">
					<c:forEach var="image" items="${skill.resources }">
						<c:if test="${skill.id == skill.id}">
							<div>
								<img class=".img-thumbnail" src="${image.imageLink }"
									width=400px height=300px />
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

	<!-- </div> -->


<form action="logout.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Log Out">
	</form>
	<form action="crud.do" method="GET">
		<input type="submit" value="Go Do Crud" />
	</form>
<form action="admin.do" method="GET">
		<input type="submit" value="Admin" />
	</form>
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