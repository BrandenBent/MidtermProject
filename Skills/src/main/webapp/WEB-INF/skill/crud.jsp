<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="daomite-material/css/material.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>

	<h1>Create Your Own</h1>

	<form:form action="createSkill.do" method="POST" modelAttribute="skill">
		<table>
			<tr>
				<td><input name="id" type="hidden" value="0" /></td>
			</tr>
			<tr>
				<td>Title</td>
				<td><input name="name" type="text" name="name" required /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" required /></td>
			</tr>
			<tr>
				<td>Supplies</td>
				<td><input type="text" name="supplies" required/></td>
			</tr>
			<tr>
				<td>Summary</td>
				<td><input type="text" name="summary" required/></td>
			</tr>
			<tr>
				<td><input type="submit"
					class="btn btn-float btn-secondary float-right" type="button"
					class="material-icons" value="Go" /></td>
			</tr>
		</table>
	</form:form>

              
             <!--  <div class="form-label-group">
                <input type="text" id="imageLink" class="form-control" placeholder="Image Link" required>
                <label for="imageLink"></label>
              </div>
              <div class="form-label-group">
                <input type="text" id="videoLink" class="form-control" placeholder="Video Link" required>
                <label for="videoLink"></label>
              </div><div class="form-label-group">
                <input type="text" id="siteLink" class="form-control" placeholder="Site Link" required>
                <label for="siteLink"></label>
              </div> -->
             
<!--               <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Create</button>
 -->              <%-- <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign in with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button> --%>
           
</body>


</body>
</html>