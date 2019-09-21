<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
    name="viewport">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
<link
    href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
    rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>

	<%@ include file="navBar.jsp"%>
	<br>
	<div class="content">

		<c:if test="${userlog.role == 'admin' }">

			<h1>TEST ADMIN SHIT</h1>


		</c:if>

		<h1>${userlog.userName}'s
			Page <i class="material-icons">face</i> <i class="material-icons">whatshot</i>
		</h1>

		Please Enter Your User Name to Continue:
		<form action="registerProfile.do" method="POST"
			modelAttribute="profile">
			<table>
				<tr>
					<td>Profile Name</td>
					<td><input name="name" required /></td>
					<!-- <td>Birth Day</td> -->
					<!-- <td><input required type="date" name="birthDate" /></td> -->
					<td><input type="submit" value="Create Profile" /></td>
				</tr>
			</table>
		</form>

		<c:forEach items="${userlog.profile.skills}" var="skill">
			<h5>
				<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
				${skill.description} <br> <strong>Requirements: </strong> <br>
				<c:forEach items="${skill.skillRequirements}" var="skillReq"
					begin="0" end="3">
				${skillReq.requirement.description }
				<br>

						<form:form action="startSkill.do" method="POST">

							<div class="btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-secondary active"> 
								<input type="checkbox" name="selected" value="${skill.id}" checked autocomplete="off"> Start
								</label>
								<input name="fid" type="hidden"
								value="${skillReq.id}" /> 
							</div>
						</form:form>

				</c:forEach>
			</h5>
		</c:forEach>
		<br> <br>
	</div>

</body>
</html>