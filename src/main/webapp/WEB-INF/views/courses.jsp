<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Page Title -->
	<div class="section section-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Courses</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<c:forEach items="${courses }" var="course">
					<div class="col-md-4 col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<spring:url value="/resources/images/courses/${course.id}.png" var="pic" />
								<spring:url value="/courses/course/${course.id }" var="link" />
								<a href="${link }"><img
									src="${pic }" height="193.672px" alt="Project Name"></a>
							</div>
							<div class="portfolio-info">
								<ul>
									<li class="portfolio-project-name">${course.name }</li>
									<li>${course.field }</li>
									<li class="read-more"><a href="${link }"
										class="btn">Read more</a></li>
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