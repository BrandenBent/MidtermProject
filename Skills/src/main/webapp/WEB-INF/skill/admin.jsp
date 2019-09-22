<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="adminNav.jsp"%>
		<br>
	
	<h1>Admin </h1>

	<c:forEach items="${users}" var="user">
		<h5>
			<a href="getUser.do?id=${user.id}">${user.userName} </a>
			User Enabled: (${user.enabled}) ID: ${user.id}
		</h5>
	</c:forEach>
	
</body>
</html>