<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Device Shop</title>
    <link rel="icon" href="<c:url value="/resources/images/theme/favicon.ico" />">
    
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/bootstrap-lib/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap-lib/css/bootstrap-theme.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/mdl-lib/material.min.css" />" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    
    <link href="<c:url value="/resources/style/custom.css" />" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

<body>



<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-nav">
			<span class="sr-only">Toggle navigation</span>
			<span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>MENU
			</button>
			<a class="navbar-brand" href="<c:url value="/" />">Device Shop</a>	
		</div>
		<div class="collapse navbar-collapse" id="top-nav">
			<ul class="nav navbar-nav">
			  <li><a href="<c:url value="/" />"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> &nbsp;&nbsp;Home</a></li>
			  <li><a href="<c:url value="/product/productList" />"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> &nbsp;&nbsp;All Product</a></li>
			</ul>
			
            <ul class="nav navbar-nav pull-right">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                    <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

                    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                        <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                        <li><a href="<c:url value="/admin" />">Admin</a></li>
                    </c:if>

                </c:if>

                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li><a href="<c:url value="/login" />">Login</a></li>
                    <li><a href="<c:url value="/register" />">Register</a></li>
                </c:if>
            </ul>
		</div>
		
	</div>
</nav>