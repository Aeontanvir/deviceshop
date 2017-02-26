<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Customer registered successfully!</h1>
                </div>
            </div>
        </section>
		
		<div class="row">
			<section class="container">
	            <p><a href='<spring:url value="/product/productList" />' class="btn btn-default">Products</a></p>
	        </section>
		</div>
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>