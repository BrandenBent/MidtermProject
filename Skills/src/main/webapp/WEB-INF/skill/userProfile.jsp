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
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/daomite-material/css/material.min.css" rel="stylesheet"></head>
<body>
  

   <%@ include file="navBar.jsp" %>
   <h2>${userlog.userName }</h2>

	<h1>UserProfile Page</h1>
	


<h1>${userlog.userName}'s Page</h1>	
<form action="logout.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Log Out">
	</form>


	<c:forEach items="${userlog.profile.skills}" var="skill">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq">
				${skillReq.requirement.name }
				<br>
			
				<form action="startSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${skill.id}">Start
					Learning Skill 
					<input name="fid" type="hidden"
						value="${skillReq.id}" /> <br> <input type="submit"
						value="Submit">
				</form>
				<form action="completeSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${achievement.id}">Done
					Learning Skill <br> <input type="submit" value="Submit">
					<input name="id" type="hidden" value="${skillReq.id}" /> 
					<br> <input type="submit" value="Submit">
				</form>

			</c:forEach>

		</h5>
	</c:forEach>


	

</body>
</html>