<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
	<h1>UserProfile Page</h1>
	${userlog.userName}
		<form action="keywordSearch.do" method="GET">
		<table>
			<tr>
				<td>Search for a keyword</td>
				<td><input name="keyword" /></td>
				<td><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
</body>
</html>