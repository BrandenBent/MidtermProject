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
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
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

					<%-- <form action="startSkill.do" method="POST">
						<div class="custom-control custom-radio custom-control-inline">

							<input type="checkbox" name="selected" value="${skill.id}">Start
							Learning Skill <input name="fid" type="hidden"
								value="${skillReq.id}" /> <br> <input type="submit"
								value="Submit">

						</div> --%>
						<form:form action="startSkill.do" method="POST">

							<div class="btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-secondary active"> 
								<input type="checkbox" name="selected" value="${skill.id}" checked autocomplete="off"> Start
								</label>
								<input name="fid" type="hidden"
								value="${skillReq.id}" /> 
							</div>
						</form:form>
<%-- 					</form>
 --%>

				</c:forEach>
			</h5>
		</c:forEach>
		<br> <br>
		<%-- <div class="card-deck">
	<c:forEach items="${userlog.profile.skills}" var="skill" >
				<div class="card">
				<a href="getSkill.do?fid=${skill.id}"> ${skill.name} </a>
										
			${skill.description} <br> <strong>Requirements: </strong> <br>
<c:forEach items="${skill.skillRequirements}" var="skillReq"  begin="0" end="3">
				${skillReq.requirement.description }						
							<div>
							<div class="text-center">
							<form action="startSkill.do" method="POST">
				    <div class="custom-control custom-radio custom-control-inline">
				  
					<input type="checkbox" name="selected" value="${skill.id}">Start
					Learning Skill 
					<input name="fid" type="hidden"
						value="${skillReq.id}" /> <br> <input type="submit"
						value="Submit">
						</div>
				</form> 
								
							</div>
						<div class="card-body text-center">
							<h5 class="card-title">${skill.name }</h5>
							<p class="card-text">${skill.summary }</p>
							<a href="getSkill.do?fid=${skill.id}" class="btn btn-primary">Learn
								More</a>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div> --%>
	</div>

</body>
</html>