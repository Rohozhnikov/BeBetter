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
					<h1>Add Lecture</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<!-- Blog Post -->
				<div class="col-sm-8">
					<div class="blog-post blog-single-post">
						<div class="single-post-title">
							<h3>Add Lecture</h3>
						</div>
						<!-- Comments -->
						<div class="post-coments">
							<!-- Comments Form -->
							<div class="comment-form-wrapper">
								<form:form modelAttribute="newLecture">
									<div class="form-group">
										<b>number</b>
										<form:input path="number" class="form-control" id="comment-name"
											type="text" />
									</div>
									<div class="form-group">
										<b>description</b>
										<form:textarea path="text" class="form-control" rows="7"
											id="comment-message" />
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-large pull-right">Create</button>
									</div>
									<div class="clearfix"></div>
								</form:form>
							</div>
							<!-- End Comment Form -->
						</div>
						<!-- End Comments -->
					</div>
				</div>
				<!-- End Blog Post -->
			</div>
		</div>
	</div>
</html>