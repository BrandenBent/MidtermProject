<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All Skills</title>
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp" %>
    <h1>All Skills</h1>
    <c:forEach items="${ allSkills}" var="allSkills">
    
        <div>${allSkills.name }</div>
    
    </c:forEach>
</body>
</html>