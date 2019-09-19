<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test></title>
</head>
<body>
	<%@ include file="navBar.jsp"%>

	<div>${user }</div>
	<form action="registerProfile.do" method="POST" modelAttribute ="profile">
		<table>
			<tr>
				<td>Profile Name</td>
				<td><input name="name"/></td>
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