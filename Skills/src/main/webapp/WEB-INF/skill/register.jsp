<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rotting Screw</title>
</head>
<body>
	<%@ include file="guestNav.jsp"%>
	<br>
	<!-- <div class="container">
 -->

	<div class="row">
		<div class="col-md-12">
			<h2 class="text-center text- mb-4">Stuff</h2>
			<div class="row">
				<div class="col-md-6 mx-auto">

					<!-- form card login -->
					<div class="card rounded-0">
						<div class="card-header">
							<div class="card-body text-center">

								<h3 class="text-primary mx-auto">Registration</h3>
							</div>
							<div class="card-body">
								<form action="register.do" class="form" role="form"
									method="POST">
									<div class="form-group">
										<input name="id" type="hidden" value="0" /><label
											for="userName">Username</label><input type="text"
											class="form-control form-control-lg rounded-0"
											name="userName" required>
									</div>
									<div class="form-group">
										<label>Password</label> <input name="password" required
											type="password"
											class="form-control form-control-lg rounded-0" required>
									</div>
									<button type="submit"
										class="btn btn-success btn-lg float-right" id="btnLogin">Register</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/row-->

		</div>
		<!--/col-->
	</div>
	<!--/row-->



	<form action="registerProfile.do" method="POST"
		modelAttribute="profile">
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

</body>
</html>