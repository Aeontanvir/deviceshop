<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
		<div class="page-header">
			<h1>All Products</h1>
			<p class="lead">Checkout all the awesome products available now!</p>
		</div>
		<!--
		
		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Proto Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th>Info</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
		
					<tr>
						<td><img src="<c:url value="/resources/images/${product.productId}.jpg" />" alt="image" style="width:80px; height: auto;"/></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}</td>
						<td><a href='<spring:url value="/product/viewProduct/${product.productId}" />'><span class="glyphicon glyphicon-info-sign"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		  -->
		  
		  <div id="product-row" class="row">
		  	<c:forEach items="${products}" var="product">
				  <div class="col-xs-6 col-md-3">
				    <a href='<spring:url value="/product/viewProduct/${product.productId}" />' class="thumbnail">
				    	<div class="product-details">
				    		<h3>${product.productName}</h3>
				    		<h5>${product.productPrice}</h5>
				    	</div>
				      	<img src="<c:url value="/resources/images/${product.productId}.jpg" />" alt="image"/>
				    </a>
				  </div>
		  	</c:forEach>
		  </div>
		
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>