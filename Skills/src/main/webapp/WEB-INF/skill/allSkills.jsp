<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All Skills</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp" %>
    <h1>All Skills</h1>
<<<<<<< HEAD
   <c:forEach items="${allSkills}" var="skill">
			<h5>
				<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
				(${skill.description})
			</h5>

		</c:forEach>
<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
=======
    <c:forEach items="${ allSkills}" var="allSkills">
    
        <div>${allSkills.name }</div>
    
    </c:forEach>
>>>>>>> 982637843b818ff5d30304c2dca7f8553e3b5ff3
</body>
</html>