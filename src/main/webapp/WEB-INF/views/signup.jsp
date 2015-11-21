<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<!-- Page Title -->
	<div class="section section-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Register</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="basic-login">
						<form:form modelAttribute="newUser">
							<div class="form-group">
								<form:errors path="*" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<label for="firstName"><i class="icon-lock"></i><spring:message
										code="addmember.fname"></spring:message></label>
								<form:input class="form-control" id="firstName" path="firstName" type="text" />
								<form:errors path="firstName" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<label for="lastName"><spring:message
										code="addmember.lname"></spring:message></label>
								<form:input class="form-control" id="lastName" path="lastName" type="text" />
								<form:errors path="lastName" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<label for="email"><spring:message
										code="addmember.email"></spring:message></label>
								<form:input class="form-control" id="email" path="email" type="text" />
								<form:errors path="email" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<label for="username"><spring:message
										code="addmember.username"></spring:message></label>
								<form:input class="form-control" id="username" path="credentials.userName"
									type="text" />
								<form:errors path="credentials.userName" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<label for="email"><spring:message
										code="addmember.password"></spring:message></label>
								<form:input class="form-control" id="password" path="credentials.password"
									type="text" />
								<form:errors class="form-control" path="credentials.password" cssStyle="color : red;" />
							</div>
							<div class="form-group">
								<input type="submit" class="btn pull-right"
									value='<spring:message code="signup" />' />
								<div class="clearfix"></div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="col-sm-6 col-sm-offset-1 social-login">
					<p>You can use your Facebook or Twitter for registration</p>
					<div class="social-login-buttons">
						<a href="#" class="btn-facebook-login">Use Facebook</a> <a
							href="#" class="btn-twitter-login">Use Twitter</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
