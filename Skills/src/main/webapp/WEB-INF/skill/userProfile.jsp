<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<style type="text/css">
p {
	font-family: charcoal;
	font-size: 30px;
	text-align: center;
}
</style>

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
	
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

	<br>
	<br>
	<br>
	<br>


	<%-- <div class="card-deck  col-lg-6" >

		<div class="card tm-4 ">

			<c:forEach var="link" items="${user.resources }">
				<c:if test="${skill.id == skill.id}">
					<div>
						<img class="img-thumbnail card-img-top img-responsive"
							src="${link.imageLink }" />
					</div>
				</c:if>
				<div class="card-body text-center">
					<h5 class="card-title">
						<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
					</h5>
					<p class="card-text">${skill.summary }</p>
					<strong>Supplies Needed:</strong> ${skill.supplies }<br>
				</div>
				<div class="card-footer">

					<a class="btn btn-success" href="${link.siteLink }" target="_blank">Learn
						More About This Skill</a> <a class="btn btn-success"
						href="${link.videoLink }" target="_blank">Watch a Video</a>
					<form action="addSkillToProfile.do" method="POST">
						<input name="id" type="hidden" value="${skill.id}" /> <input
							type="submit" class="btn btn-success" value="Add Skill">
				</div>
			</c:forEach>
		</div>
	</div>
 --%>
	<h1>${userlog.userName}'s
		Page <i class="material-icons">face</i>
	</h1>
	​
	<c:if test="${userlog.profile.name == null }">
		<form action="registerProfile.do" method="POST"
			modelAttribute="profile">
			<table>
				<tr>
					<td><input name="name" placeholder="Confirm Your Password"
						required type="password" /></td>
					<td><button class="btn btn-float btn-sm btn-secondary my-1"
							type="submit">
							<i class="material-icons">add</i>
						</button></td>
				</tr>
			</table>
		</form>
​
		</c:if>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="0"
		end="0">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog3.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="1"
		end="1">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog3.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="2"
		end="2">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog3.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>

	<c:forEach items="${userlog.profile.skills}" var="skill" begin="3"
		end="3">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog4.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="4"
		end="4">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog5.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>
	<c:forEach items="${userlog.profile.skills}" var="skill" begin="5"
		end="5">
		<h5>
			<a href="getSkill.do?fid=${skill.id}">${skill.name} </a>
			${skill.description} <br> <strong>Requirements: </strong> <br>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="0" end="0">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="1" end="1">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill2.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog2.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>
			<c:forEach items="${skill.skillRequirements}" var="skillReq"
				begin="2" end="2">
				<h3>
					<u>${skillReq.requirement.description }</u>
				</h3>
				<form action="startSkill3.do" method="POST">
					<input name="fid" type="hidden" value="${skillReq.id}" /> <br>
					<input class="btn btn-success" type="submit"
						value="Completed Requirement">
				</form>
				<c:if test="${idlog6.skillRequirement.id == skillReq.id}">
					<p>Congratulations! You've completed this requirement</p>
				</c:if>
			</c:forEach>

		</h5>
	</c:forEach>


	<br>
	<br>
</body>
</html>
