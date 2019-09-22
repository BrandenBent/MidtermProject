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
        padding-left: 10px;
    }
</style>
<link href="daomite-material/css/material.min.css" rel="stylesheet">

</head>

<nav
	class="mw-100 navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
	
    
	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon" ></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="btn btn-success my-1"  href="home.do" >Home <span class="sr-only">(current)</span></a>
      <a class="btn btn-success my-1"  href="showAllSkills.do">See All Skills</a>
      <a class="btn btn-success my-1"  href="navLogin.do">Login</a>
      <a class="btn btn-success my-1" href="logout.do">Logout</a>
    </div>
	<a class="navbar-brand" href="showUser.do?id=${userlog.id}"><i class="material-icons" class="btn btn-success my-1" >face</i></a>
   
            <div class="collapse navbar-collapse flex-row-reverse" id="navbarNavAltMarkup">
    
        <div class="navbar-nav">
    <div class="nav-item d-flex" ><form action="keywordSearch.do" method="GET">
					<input name="keyword" placeholder="   Search by Keyword" required/>   <input type="submit"
					class="btn btn-float  btn-success my-1" type="button" class="material-icons" value="Go" />
				</form></div></div></div>
    
  </div>
</nav>