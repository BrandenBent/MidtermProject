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
	background: #d1c4e9
 !important;
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
  <a class="navbar-brand" href="showUser.do?id=${userlog.id}"><i
		class="material-icons mr-3">face</i></a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
<div class="btn-group" role="group" aria-label="Basic example">
    <a class="btn btn-secondary"  href="home.do" >Home <span class="sr-only">(current)</span></a>
      <a class="btn btn-secondary" href="showAllSkills.do">View All Skills</a>
      <a  class="btn btn-secondary"  href="crud.do">Add Skill</a>
      <a class="btn btn-secondary" href="navRegister.do">Add User</a>
      <a class="btn btn-secondary" href="allUsers.do">View Users</a>
      <a class="btn btn-secondary" href="logout.do">Logout</a>
      
  </div>
</div>
	<div class="collapse navbar-collapse flex-row-reverse"
		id="navbarNavAltMarkup">

		<div class="navbar-nav">
			<div class="nav-item d-flex">
				<form action="keywordSearch.do" method="GET">
					<input name="keyword" placeholder="   Search by Keyword" required />
					<input type="submit" class="btn btn-float  btn-success my-1"
						type="button" class="material-icons" value="Go" />
				</form>
			</div>
		</div>
	</div>
	
	
</nav>