<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
	<h1>${userlog.userName}'sPage</h1>

	<c:forEach items="${userlog.profile.skills}" var="skill">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq">
				${skillReq.requirement.name }
				<br>
				
				<form action="startSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${skill.id}">Start Learning Skill
					<input name="fid" type="hidden" value="${skillReq.id}" />
					<br> <input type="submit" value="Submit">
				</form>
				<form action="completeSkill.do" method="POST">
					<input type="checkbox" name="selected" value="${achievement.id}">Done Learning Skill
					<br> <input type="submit" value="Submit">
				</form>
				
			</c:forEach>

		</h5>
	</c:forEach>

	
		<form action="keywordSearch.do" method="GET">
		<table>
			<tr>
				<td>Search for a keyword</td>
				<td><input name="keyword" /></td>
				<td><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
</body>
</html>