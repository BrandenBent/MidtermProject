<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Links</title>
</head>
<body>
<%@ include file="navBar.jsp"%>
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="adminNav.jsp"%>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

<br>
<br>

	<c:forEach items="${links}" var="link">

		<a href="getLink.do?id=${link.id}" class="text-success" target="_blank">${link.name }</a>
		<div>
			<img class=".img-thumbnail" src="${link.imageLink }" width=395px
				height=275px />
		</div>
				<a href="getLink.do?id=${link.id}" class="text-success" target="_blank">${link.siteLink }</a>
				<a href="getLink.do?id=${link.id}" class="text-success" target="_blank">${link.videoLink }</a>
		
		
	
		
	</c:forEach>
	
</body>
</html>