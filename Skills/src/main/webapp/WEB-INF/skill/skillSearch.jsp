<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search By Keyword</title>
</head>
<body>
	<h1>Testing Search Page</h1>

	<c:forEach items="${skills }" var="skills">

		<div>${skills.name }</div>

	</c:forEach>
</body>
</html>