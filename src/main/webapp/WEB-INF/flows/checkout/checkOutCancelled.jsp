<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Checkout cancelled!</h1>

                    <p>Your checkout process is cancelled! You may continue shopping.</p>
                </div>
            </div>
        </section>
		<br/>
        <section>
            <p><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>
        </section>
	</div>
</div>

