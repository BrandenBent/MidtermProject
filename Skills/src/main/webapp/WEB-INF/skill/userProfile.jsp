<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
  
   <%@ include file="navBar.jsp" %>
   <h2>${userlog.userName }</h2>

	<h1>UserProfile Page</h1>
	

	<h1>${userlog.userName}'sPage</h1>

	<c:forEach items="${userlog.profile.skills}" var="skill">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq">
				${skillReq.requirement.name }
				<br>
			
				<form action="startSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${skill.id}">Start
					Learning Skill <input name="fid" type="hidden"
						value="${skillReq.id}" /> <br> <input type="submit"
						value="Submit">
				</form>
				<form action="completeSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${achievement.id}">Done
					Learning Skill <br> <input type="submit" value="Submit">
				</form> 

			</c:forEach>

		</h5>
	<c:forEach items="${skills}" var="skill">
		<h1>${skill}</h1>
	</c:forEach>
	
	</c:forEach>
</body>
</html>