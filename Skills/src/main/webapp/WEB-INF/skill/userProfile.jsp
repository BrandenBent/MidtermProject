<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp" %>
	<h1>UserProfile Page</h1>
	
		<form action="keywordSearch.do" method="GET">
		<table>
			<tr>
				<td>Search for a keyword</td>
				<td><input name="keyword" /></td>
				<td><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form>

</body>
</html>