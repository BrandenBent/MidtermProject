<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test></title>
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>

	<div>${userlog.userName}</div>
	<form action="registerProfile.do" method="POST" modelAttribute ="profile">
		<table>
			<tr>
				<td>Profile Name</td>
				<td><input name="name"required/></td>
				<!-- <td>Birth Day</td> -->
				<!-- <td><input required type="date" name="birthDate" /></td> -->
				<td><input type="submit" value="Create Profile" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
	
</body>
</html>