<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
	name="viewport">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>
	<div class="content">
		<c:if test="${userlog.role == 'admin' }">
			<%@ include file="adminNav.jsp"%>
			<i class="material-icons">whatshot</i>
		</c:if>
		<c:if test="${userlog.profile.name == null }">
			<%@ include file="guestNav.jsp"%>
		</c:if>
		<br>
		<h1>${userlog.userName}'s
			Page <i class="material-icons">face</i>
		</h1>

		<c:if test="${userlog.profile.name == null }">
			<form action="registerProfile.do" method="POST"
				modelAttribute="profile">
				<table>
					<tr>
						<!-- <td>Please Confirm Your Password</td> -->
						<td><input name="name" placeholder="Confirm Your Password"
							required type="password" /></td>
						<td><button class="btn btn-float btn-sm btn-secondary my-1"
								type="submit">
								<i class="material-icons">add</i>
							</button></td>
					</tr>
				</table>
			</form>

		</c:if>

		<br> <br>
	</div>
</body>
</html>