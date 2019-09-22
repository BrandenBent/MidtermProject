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
	<c:if test="${userlog.role == 'admin' }">
		<%@ include file="adminNav.jsp"%>
	</c:if>
	<c:if test="${userlog.profile.name == null }">
		<%@ include file="guestNav.jsp"%>
	</c:if>

<br>
<br>
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
		</c:if>

	<c:forEach items="${userlog.profile.skills}" var="skill" begin="0" end ="0">
            <h5>
            <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill.do" method="POST">
                                <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill2.do" method="POST">
                                                              <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog2.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill3.do" method="POST">
                                                                <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog3.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="1" end ="1">
            <h5>
                <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill4.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog4.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill5.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog5.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill6.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog6.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="2" end ="2">
            <h5>
                  <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill7.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog7.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill8.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog8.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill9.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog9.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="3" end ="3">
            <h5>
                   <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill10.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog10.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill11.do" method="POST">
                                <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog11.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkill12.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlog12.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="4" end ="4">
            <h5>
                     <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkilla.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idloga.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkillb.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlogb.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkillc.do" method="POST">
                                <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlogc.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        <c:forEach items="${userlog.profile.skills}" var="skill" begin="5" end ="5">
            <h5>
                     <div class="card-deck col-lg-3">
			<div class="card tm-4 ">
				<c:forEach var="image" items="${skill.resources }">
					<c:if test="${skill.id == skill.id}"><div>
							<img class="img-thumbnail card-img-top img-responsive"
								src="${image.imageLink }" />
						</div></c:if>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="getSkill.do?fid=${skill.id}">${skill.name} </a></h5>
						<p class="card-text">${skill.summary }</p></div>
					<div class="card-footer">
						<a href="getSkill.do?fid=${skill.id}"
							class="btn btn-primary btn-lg btn-block">Learn More</a></div>
			</c:forEach></div></div> <br> <strong>Requirements: </strong> <br>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="0" end ="0">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkilld.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlogd.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="1" end ="1">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkille.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idloge.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                <c:forEach items="${skill.skillRequirements}" var="skillReq" begin="2" end ="2">
                    <h3><u>${skillReq.requirement.description }</u></h3>
                            <form action="startSkillf.do" method="POST">
                                 <input name="fid" type="hidden"
                                    value="${skillReq.id}" /> <br> <input class="btn btn-success" type="submit"
                                    value="Completed Requirement">
                            </form> <c:if test="${idlogf.skillRequirement.id == skillReq.id}"><h2>Congratulations! You’ve completed this requirement</h2></c:if>
                </c:forEach>
                
            </h5>
        </c:forEach>
        
        
       
		<br> <br>
	</div>
</body>
</html>