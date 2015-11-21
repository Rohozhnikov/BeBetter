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
				<div class="col-sm-12">
					<h1>Course</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<!-- Image Column -->
				<div class="col-sm-6">
					<div class="portfolio-item">
						<div class="portfolio-image">
						<spring:url value="/resources/images/courses/${course.id}.png" var="pic" />
							<a href="#"><img src="${pic }" alt="Project Name"></a>
						</div>
					</div>
				</div>
				<!-- End Image Column -->
				<!-- Project Info Column -->
				<div class="portfolio-item-description col-sm-6">
					<h3>${course.name }</h3>
					<p>${course.about }</p>
					<ul class="no-list-style">
						<li><b>field:</b>${course.field }</li>
						<li><b>Date:</b> ${course.beginDate } - ${course.endDate}</li>
						<li><b>Price:</b> ${course.price }</li>
						<spring:url value="/courses/apply/${course.id }" var="courseApply" />
						<li class="portfolio-visit-btn"><a href="${courseApply}" class="btn">Apply for course</a></li>
					</ul>
				</div>
				<!-- End Project Info Column -->
			</div>
			<!-- Related Projects -->
			<h3>Related Courses</h3>
			<div class="row">
				<c:forEach items="${courses }" var="course">
					<div class="col-md-4 col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<spring:url value="/resources/images/courses/${course.id}.png"
									var="pic" />
								<spring:url value="/courses/course/${course.id }" var="link" />
								<a href="${link }"><img src="${pic }" alt="Project Name"></a>
							</div>
							<div class="portfolio-info-fade">
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
			<!-- End Related Projects -->
		</div>
	</div>

</body>
</html>