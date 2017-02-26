<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>
                    <p>Your order will be shipped in three business days!</p>
                </div>
            </div>
        </section>
		<br/>
        <section>
            <p><a href="<spring:url value="/" />" class="btn btn-success">OK</a></p>
        </section>
		
	</div>
</div>

