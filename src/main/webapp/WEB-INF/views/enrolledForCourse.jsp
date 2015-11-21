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
					<h1>Course: ${course.name}</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<div class="blog-post blog-single-post">
						<div class="single-post-title">
							<h3>${course.name}</h3>
						</div>
						<div class="single-post-title">
							<h2>${course.field}</h2>
						</div>
						<div class="single-post-image">
							<spring:url value="/resources/images/courses/${course.id}.png"
								var="pic" />
							<img src="${pic }" alt="Post Title">
						</div>
						<c:forEach items="${lectures }" var="lecture">
							<div class="single-post-content">
								<h3>Lecture - ${lecture.number }</h3>
								<p>${lecture.text }</p>
							</div>
						<div class="post-coments"></div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>