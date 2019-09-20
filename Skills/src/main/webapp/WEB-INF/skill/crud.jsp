<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
		<br>
	
	<h1>Skills Edit</h1>
	

	<form:form action="createSkill.do" method="POST" modelAttribute="skill">
				<table>
		
		<tr>
			<td><input name="id" type="hidden" value="0" /></td>
			</tr>
		<tr><td>Title</td>	<td><input name="name" type="text" name="name" /></td></tr>
		<tr><td>Description</td>	<td><input   type="text" name="description" /></td></tr>
	<tr>	<td>Description</td>	<td><input type="text" name="supplies" /></td></tr>
	<tr>	<td>Description</td>	<td><input type="text" name="summary" /></td></tr>
			
		

		<form:button type="submit"> Add </form:button>
		</table>
	</form:form>


	

	<%-- <form action="updateSkill.do" method="POST">
		<table>
			<tr>

				<td><input name="id" type="hidden" value="${skill.id}" /></td>

			</tr>
			<tr>
				<td>Title</td>
				<td><input name="name" type="text" value="${skill.name}" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input name="description" type="text"
					value="${skill.description}" /></td>
			</tr>
			<tr>
				<td>Supply</td>
				<td><input name="supplies" type="text"
					value="${skill.supplies}" /></td>
			</tr>
			<tr>
				<td>Summary</td>
				<td><input name="summary" type="text" value="${skill.summary}" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form> --%>
	
</body>
</html>