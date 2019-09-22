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
<link href="/daomite-material/css/material.min.css" rel="stylesheet">

</head>

<nav
	class="mw-100 navbar fixed-top navbar-expand-lg navbar-dark bg-primary-dark">
	<button type="button" class="btn btn-success btn-lg dropdown-toggle"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

		Login/Register</button>
	<ul id="login-dp" class="dropdown-menu">
		<li>
			<!-- <div class="row">
				<div class="col-md-6"> -->

					<form action="login.do" method="GET">
						<input name="userName" placeholder="User Name" required> <br>
						<input name="password" placeholder="Password" type="password" required>
<br>
<br>
						<button type="submit" class="btn btn-primary btn-block ">Sign in to Account</button>
 
							
			</form>
			<div class="bottom text-center">
			<a href="navRegister.do"> <b><button type="submit" class="btn btn-secondary
 btn-block pb-7">Register New User</button></b>
							
				</a>
			</div>
			</div>
		</li>
	</ul>
	
	

		<div class="navbar-nav">
			<div class="nav-item d-flex">
			<form:form>
			<input type="submit" class="btn btn-float  btn-success ml-3"
						type="button" class="material-icons" value="Go" />
				<form action="keywordSearch.do" method="GET">
					<input name="keyword" placeholder="   Search by Keyword" required />
					
				</form:form>
			</div>
		</div>
	

	<!-- <button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="btn btn-success my-1" href="showAllSkills.do">See All
				Skills</a> <a class="btn btn-success my-1" href="navLogin.do">Login</a>
			<a class="btn btn-success btn-success-centered my-1"
				href="navRegister.do">Please Register to Unlock All of Our
				Features</a>
		</div>
	</div> -->
	<div class="collapse navbar-collapse flex-row-reverse"
		id="navbarNavAltMarkup">

<a class="navbar-brand" href="home.do"><i
		class="material-icons ml-3">home</i></a>
	</div>
</nav>