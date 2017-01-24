<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
        <div class="page-header">
	        <c:if test="${pageContext.request.userPrincipal.name != null}">
	            <h2>
	                Welcome: ${pageContext.request.userPrincipal.name} |
	                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
	            </h2>
	
	        </c:if>
            <h1>Administrator page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>
		
		<h3>
            <a href="<c:url value="/admin/productInventory" /> ">Product Inventory</a>
        </h3>

		<p>Here you can view, check and modify the product inventory!</p>

        <br/><br/>
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>