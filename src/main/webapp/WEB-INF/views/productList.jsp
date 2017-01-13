<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
		<div class="page-header">
			<h1>All Products</h1>
			<p class="lead">Checkout all the awesome products available now!</p>
		</div>
		
		
		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Proto Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products }" var="product">
		
					<tr>
						<td><img src="#" alt="image"/></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>