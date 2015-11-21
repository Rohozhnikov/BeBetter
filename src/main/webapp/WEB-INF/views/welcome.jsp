<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>

	<div class="section section-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>
						<spring:message code="welcome.greeting" />
					</h2>
					<h3>
						<security:authorize access="isAuthenticated()">
							<spring:message code="welcome.welcome"></spring:message>
							<security:authentication property="principal.username" />
						</security:authorize>
					</h3>
					<h3>You can learn everywhere</h3>
					<p>The purpose of this project is to gain, spread, shear
						knowledge. People have always opportunity to grow. This is one of
						the easiest way to become awake, aver, to become better and
						better. This web site provide courses, quizzes, information about
						course. Also user can create a course, lectures and quizzes, or
						just go thru, that was already created.</p>
				</div>
				<div class="col-md-6">
					<div class="video-wrapper">
						<iframe src="https://www.youtube.com/embed/ucAJ0U5Veis"
							width="556" height="285">
							<!-- frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen > -->
						</iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<h2>Our Projects</h2>
			<div class="row">
				<c:forEach items="${courses }" var="course" end="5">
					<div class="col-md-4 col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<spring:url value="/resources/images/courses/${course.id}.png"
									var="pic" />
								<spring:url value="/courses/course/${course.id }" var="link" />
								<a href="${link }"><img src="${pic }" height="193.672px" alt="Project Name" /></a>
							</div>
							<div class="portfolio-info">
								<ul>
									<li class="portfolio-project-name">${course.name }</li>
									<li>${course.field }</li>
									<li class="read-more"><a href="${link }" class="btn">Read
											more</a></li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
