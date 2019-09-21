<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
		<br>
	
	<h1>Admin</h1>
	


	<c:forEach items="${users}" var="user">
		<h5>
			<a href="getUser.do?id=${user.id}">${user.userName} </a>
			User Enabled: (${user.enabled}) ID: ${user.id}
	
		</h5>
	</c:forEach>
	<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
<div class="btn-group" role="group" aria-label="Basic example">
    <a class="btn btn-secondary"  href="home.do" >Home <span class="sr-only">(current)</span></a>
      <a  class="btn btn-secondary"  href="crud.do">Add Skill</a>
      <a class="btn btn-secondary" href="navRegister.do">Add User</a>
      <a class="btn btn-secondary" href="allUsers.do">View Users</a>
      <a class="btn btn-secondary" href="logout.do">Logout</a>
      <a class="btn btn-secondary" href="admin.do">Extra</a>
      <a class="btn btn-secondary" href="admin.do">Extra</a>
      <a class="btn btn-secondary" href="admin.do">Extra</a>
   
  </div>
</div>


	
</body>
</html>