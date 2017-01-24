<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
	<div class="container">
		<div class="login-part">
			<h3><span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span> &nbsp;Login</h3>
			<hr/>
			<c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
			<form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
				<c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
					<input type="text" id="username" name="username" class="form-control" placeholder="Username" />
				</div>
				<br/>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
					<input type="password" id="password" name="password" class="form-control" placeholder="Password" />
				</div>
				<br/>
				<button type="submit" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> &nbsp;LOGIN</button>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>





<%@ include file="/WEB-INF/views/template/footer.jsp" %>