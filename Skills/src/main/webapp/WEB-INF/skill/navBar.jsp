<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="/daomite-material/css/material.min.css" rel="stylesheet">
</head>
	<nav
		class="mw-100 navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="showUser.do?id=${userlog.id}">My Profile</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.do">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="showAllSkills.do">See All Skills</a></li>

				<li class="nav-item"><form action="keywordSearch.do"
						method="GET">
						<input name="keyword" /><input type="submit"
							value="Keyword Search" />
					</form></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Options </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="navLogin.do">Login</a> <a
							class="dropdown-item" href="logout.do">Logout </a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="admin.do">Admin Page</a>
					</div></li>
			</ul>
		</div>
	</nav>

