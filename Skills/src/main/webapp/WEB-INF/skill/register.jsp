<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test></title>
</head>
<body>
	<%@ include file="navBar.jsp"%>
	<br>
	<!-- <div class="container">
 -->
	<!-- <div class="p-3 mb-2 bg-primary text-white">
 -->

	<div class="row">
		<div class="col-md-12">
			<h2 class="text-center text- mb-4">Please Register to Unlock All
				of Our Features</h2>
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
									autocomplete="off" id="formLogin" novalidate="" method="POST">
									<div class="form-group">
										<input name="id" type="hidden" value="0" /><label
											for="uname1">Username</label><input type="text"
											class="form-control form-control-lg rounded-0" required
											name="userName" id="uname1" required=>
										<div class="invalid-feedback">Oops, you missed this one.</div>
									</div>
									<div class="form-group">
										<label>Password</label> <input name="password" type="password"
											class="form-control form-control-lg rounded-0" id="pwd1"
											required autocomplete="new-password">
										<div class="invalid-feedback">Enter your password too!</div>
									</div>

									<button type="submit"
										class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
								</form>
							</div>
						</div>
						<!--/card-block-->
					</div>
					<!-- /form card login -->

				</div>


			</div>
			<!--/row-->

		</div>
		<!--/col-->
	</div>
	<!--/row-->

	<%-- <form action="register.do" method="POST" modelAttribute="user">
			<table>
				<tr>
					<td><input name="id" type="hidden" value="0" /></td>
					<td>UserName</td>
					<td><input name="userName" required /></td>
					<td>Password</td>
					<td><input name="password" type="password" required /></td>
					<td><input type="submit" value="Register" /></td>
				</tr>
			</table>
		</form>
	<div>${user }</div> --%>
	
	<form action="registerProfile.do" method="POST" modelAttribute ="profile">
		<table>
			<tr>
				<td>Profile Name</td>
				<td><input name="name"required/></td>
				<!-- <td>Birth Day</td> -->
				<!-- <td><input required type="date" name="birthDate" /></td> -->
				<td><input type="submit" value="Create Profile" /></td>
			</tr>
		</table>
	</form>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
</body>
</html>