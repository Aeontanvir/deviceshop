<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
		<div class="page-header">
            <h1>Edit Product</h1>
            <p class="lead">Please update the product information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="post" commandName="product" enctype="multipart/form-data">

         	<form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName"  cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument" /> Instrument</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record" /> Record</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory" /> Accessory</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="productPrice"  cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-control" value="${product.productPrice}" />
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" /> New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" /> Used</label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" /> Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" /> Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label>
                <form:errors path="unitInStock"  cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

            <br/><br/>


        	<br/><br/>

        <input type="submit" value="Update Product Info" class="btn btn-success btn-lg">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-danger btn-lg">Cancel</a>

    </form:form>
		
		
	</div>
</div>







<%@ include file="/WEB-INF/views/template/footer.jsp" %>