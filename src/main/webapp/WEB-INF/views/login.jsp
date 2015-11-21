<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="basic-login">
						<form action="<spring:url value="/postLogin"></spring:url>"
							method="post">
							<c:if test="${not empty error}">
								<div class="alert alert-danger">
									<spring:message
										code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
									<br />
								</div>
							</c:if>
							<div class="form-group">
								<label for="login-username"><i class="icon-user"></i> <b><spring:message
											code="login.login" /></b></label> <input placeholder="User Name"
									class="form-control" name='username' id="login-username"
									type="text">
							</div>
							<div class="form-group">
								<label for="login-password"><i class="icon-lock"></i> <b>Password</b></label>
								<input class="form-control" id="login-password" name='password'
									type="password" value="" placeholder="Password">
							</div>
							<div class="form-group">
								<a href="page-password-reset.html" class="forgot-password">Forgot
									password?</a>
							</div>
							<input class="btn btn-primary btn-block btn-flat" type="submit"
								value='<spring:message code="login"></spring:message>'>
						</form>
					</div>
				</div>
				<div class="col-sm-7 social-login">
					<p>Or login with your Facebook or Twitter</p>
					<div class="social-login-buttons">
						<a href="#" class="btn-facebook-login">Login with Facebook</a> <a
							href="#" class="btn-twitter-login">Login with Twitter</a>
					</div>
					<div class="clearfix"></div>
					<div class="not-member">
						<p>
							Not a member? <a href="page-register.html">Register here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>