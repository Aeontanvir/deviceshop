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
			<div class="col-md-6">
				<div class="thumbnail">
					<img src="#" alt="image"/>
				</div>
				
			</div>
			<div class="col-md-6">
				<h3>${product.productName}</h3>
                <p><strong>Details</strong>: ${product.productName}</p>
                <p><strong>Manufacturer</strong>: ${product.productManufacturer}</p>
                <p><strong>Category</strong>: ${product.productCategory}</p>
                <p><strong>Condition</strong>: ${product.productCondition}</p>
                <p><strong>Price</strong>: ${product.productPrice}</p>
			</div>
		</div>
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>