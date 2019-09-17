<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search By Keyword</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<h1>Testing Search Page</h1>

	<c:forEach items="${skills }" var="skills">

		<div>${skills.name }</div>
		<div>${skills.description }</div>
		<div>${skills.summary }</div>

	</c:forEach>
	<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
</body>
</html>