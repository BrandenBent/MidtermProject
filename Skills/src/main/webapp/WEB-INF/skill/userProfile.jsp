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

	<c:forEach items="${userlog.profile.achievements}" var="achievement">
		<h5>
			<a href="getSkill.do?fid=${achievement.skill.id}">${achievement.skill.name} </a>
			${achievement.skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${achievement.skill.skillRequirements}" var="skillReq">
				${skillReq.requirement.name }
				<br>
				
				<form name="input" action="startSkill.do" method="get">
					<input type="checkbox" name="dateStarted" value="Start">Start Learning Skill
					<input name="fid" type="hidden" value="${skillReq.requirement.id }" />
					<br> <input type="submit" value="Submit">
				</form>
				<form name="input" action="completeSkill.do" method="get">
					<input type="checkbox" name="dateCompleted" value="Finished">Done Learning Skill
					<input name="fid" type="hidden" value="${skillReq.requirement.id }" />
					<br> <input type="submit" value="Submit">
				</form>
				
			</c:forEach>

		</h5>
	</c:forEach>


	<form action="keywordSearch.do" method="GET">
		<table>
			<tr>
				<td>Search for a keyword</td>
				<td><input name="keyword" required /></td>
				<td><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
</body>
</html>