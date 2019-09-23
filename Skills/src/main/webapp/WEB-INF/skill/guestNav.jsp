<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
	name="viewport">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 80px;
	padding-left: 30px;
	background: #d1c4e9 !important;
}

.card-img-top {
	width: 100%;
	height: auto;
}
</style>
<link href="daomite-material/css/material.min.css" rel="stylesheet">

</head>

<nav
	class="mw-100 navbar fixed-top navbar-expand-lg navbar-dark bg-primary-dark">




	<div class="btn-group dropdown">

		<button type="button" class="btn btn-success btn-lg dropdown-toggle"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

			Login/Register</button>
		<ul id="login-dp" class="dropdown-menu">
			<li>


				<form action="login.do" method="GET">
					<input name="userName" placeholder="User Name" required> <br>
					<input name="password" placeholder="Password" type="password"
						required> <br> <br>
					<button type="submit" class="btn btn-primary btn-block ">Sign
						in to Account</button>


				</form>
				<div class="bottom text-center">
					<a href="navRegister.do"> <b><button type="submit"
								class="btn btn-secondary
 									btn-block pb-2">Register
								New User</button></b>

					</a>
				</div>

			</li>
		</ul>
	</div>
	<a class="navbar-brand" href="home.do"><i
		class="material-icons ml-3">home</i></a>

	<div class="collapse navbar-collapse flex-row-reverse"
		id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<div class="nav-item d-flex">

				<form action="keywordSearch.do" method="GET">
					<input name="keyword" placeholder="   Search by Keyword" required />
					<input type="submit" class="btn btn-float  btn-success ml-3"
						type="button" class="material-icons" value="Go" />
				</form>
			</div>
		</div>
	</div>
</nav>