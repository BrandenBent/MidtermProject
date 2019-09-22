<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Error</title>
<meta charset="UTF-8">
</head>
<title>Error</title>
</head>
<body>
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="adminNav.jsp"%>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

<br>
<br>	<br>

	<h1 style="color: red;">User Not Found</h1>
	<br>
	<br>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
</body>
</html>