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
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
		<%@ include file="navBar.jsp"%>
	<br>
	<div class="content">

		<c:if test="${userlog.role == 'admin' }">
	<%@ include file="adminNav.jsp"%>
<i class="material-icons">whatshot</i>
		</c:if>
<c:if test="${userlog.profile.name == null }" >
			<%@ include file="guestNav.jsp"%>
		</c:if>
		<br>
		<h1>${userlog.userName}'s 
			Page <i class="material-icons">face</i> 
		</h1>
		
		<c:if test="${userlog.profile.name == null }" >
		<form action="registerProfile.do" method="POST" modelAttribute="profile">
			<table>
				<tr>
					<td>Profile Name</td>
					<td><input name="name" required /></td>
					<!-- <td>Birth Day</td> -->
					<!-- <td><input required type="date" name="birthDate" /></td> -->
					<td><input type="submit" value="Create Profile" /></td>
				</tr>
			</table>
		</form>
    <c:if test="${userlog.id != null }">
        <h1>${userlog.profile.name}
            <i class="material-icons">face</i> <i class="material-icons">whatshot</i>
        </h1>
        <form action="logout.do" method="GET">
            <input type="submit" class="btn btn-primary btn-lg" value="Log Out">
        </form>
        <%-- <c:forEach items="${userlog.profile.skills}" var="skill"> --%>
    </c:if>
    
    <form>
		<table>
			<tr>
				<td>Please Confirm Your Password</td>
				<td><input name="name" placeholder="Confirm Your Password" required type="password" /></td>
				<td><button class="btn btn-float btn-sm btn-secondary my-1" type="submit"><i class="material-icons">add</i></button></td>
			</tr>
		</table>
	</form>

</c:if>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="0" end ="0">
            <h5>
                <a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
                ${skill.description} <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill2.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog2.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill3.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog3.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="1" end ="1">
            <h5>
                <a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
                ${skill.description} <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill2.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog2.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3>${skillReq.requirement.description }</h3>
                            <form action="startSkill3.do" method="POST">
                                <input type="checkbox" name="checked" value="${skill.id}">Start
                                Learning Skill <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input type="submit"
                                    value="Submit">
                            </form> <c:if test="${idlog3.skillRequirement.id == skillReq.id}">You learn this</c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        
       
		<br> <br>
	</div>
</body>
</html>