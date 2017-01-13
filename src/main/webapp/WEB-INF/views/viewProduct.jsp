<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
		<div class="page-header">
			<h1>Product Detail</h1>
			<p class="lead">Here is the detail information of the product:</p>
		</div>
		
		<div class="row">
			<div class="col-md-5">
				<img src="#" alt="image"/>
			</div>
			<div class="col-md-5">
				<h3>Product Name</h3>
                <p><strong>Details</strong>:</p>
                <p><strong>Manufacturer</strong></p>
                <p><strong>Category</strong>:</p>
                <p><strong>Condition</strong>:</p>
                <p><strong>Price</strong>:</p>
			</div>
		</div>
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>