<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills</title>
</head>
<body>
<<<<<<< HEAD
    <h1>Test</h1>
    <h3>Login</h3>
    <form action="profile.do" method="POST">
        <table>
            <tr>
                <td>UserName</td>
                <td><input name="username" /></td>
                <td>Password</td>
                <td><input name="password" /></td>
                <td><input type="submit" value="Login" /></td>
            </tr>
        </table>
    </form>
    <div>
        <c:forEach items="${skillset}" var="skill">
            <h5>
                <a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
                (${skill.description})
            </h5>
        </c:forEach>
    </div>
	
=======
	<h1>Test</h1>
	<h3>Login</h3>
	<form action="profile.do" method="POST">
		<table>
			<tr>
				<td>UserName</td>
				<td><input name="username" /></td>
				<td>Password</td>
				<td><input name="password" /></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
	<div>

	<form action="showAllSkills.do" method="GET">
		<!-- <input name="allSkills"> -->
		<input type="submit" value="Show All Skills" />
	
	</form>
		<c:forEach items="${skillset}" var="skill">

			<h5>
				<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
				(${skill.description})
			</h5>

		</c:forEach>
	</div>
</body>
</html>
>>>>>>> d5c9895b9565d1eeeb32d50064e3267a5ea2957d
