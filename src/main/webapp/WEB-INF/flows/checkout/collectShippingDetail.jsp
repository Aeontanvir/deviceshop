<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">

	<div class="container">
	
		<div class="page-header">
			<h1>Cutomer</h1>
            <p class="lead">Customer Details:</p>
        </div>
		

		<div class="row">
		
		        <form:form commandName="order" class="form-horizontal">

                <h3>Shipping Address:</h3>

                <div class="form-group">
                    <label for="shippingStreet">Street Name</label>
                    <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="shippingApartmentNumber">Apartment Number</label>
                    <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="shippingCity">City</label>
                    <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="shippingState">State</label>
                    <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="shippingCountry">Country</label>
                    <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="shippingZip">Zipcode</label>
                    <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-control" />
                </div>

                <input type="hidden" name="_flowExecutionKey" />

                <br/><br/>

                <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

                <input type="submit" value="Next" class="btn btn-success" name="_eventId_shippingDetailCollected" />

                <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

            </form:form>
		
		
		</div>
		
	</div>
</div>

