<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%@ include file="guestNav.jsp"%>
	
	
	<br>
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-center text- mb-4"><a class="btn btn-success my-1 ml-10" href="navRegister.do">Please Register to Unlock All
				of Our Features</a></h2>
			<div class="row">
				<div class="col-md-6 mx-auto">

					<!-- form card login -->
					<div class="card rounded-0">
						<div class="card-header">
							<div class="card-body text-center">
								<h3 class="text-primary mx-auto">Welcome Back</h3>
							</div>
							<div class="card-body">
								<form action="login.do" class="form" role="form"
									autocomplete="off" id="formLogin" method="GET">
									<div class="form-group">
										<strong><label for="userName">User Name</label></strong><input
											type="text" class="form-control form-control-lg rounded-0"
											name="userName" id="userName" required>
										<div class="invalid-feedback">Oops, you missed this one.</div>
									</div>
									<div class="form-group">
										<label>Password</label> <input name="password" required
											type="password"
											class="form-control form-control-lg rounded-0" id="password">
										<div class="invalid-feedback">Enter your password too!</div>
									</div>
									<button type="submit"
										class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>