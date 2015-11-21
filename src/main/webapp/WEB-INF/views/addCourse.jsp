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
					<h1>Add Course</h1>
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
							<h3>Create course</h3>
						</div>
						<!-- Comments -->
						<div class="post-coments">
							<!-- Comments Form -->
							<div class="comment-form-wrapper">
								<form:form modelAttribute="newCourse"
									enctype="multipart/form-data">
									<div class="form-group">
										<form:errors path="*" cssStyle="color : red;" />
									</div>
									<div class="form-group">
										<form:label path="pic">
											<b>Image</b>
										</form:label>
										<form:input path="pic" type="file" class="form-control"
											id="comment-name" />
									</div>
									<div class="form-group">
										<form:label path="name">
											<b>Name</b>
										</form:label>
										<!-- <label for="comment-name"><b>Your name</b></label> -->
										<form:input class="form-control" id="comment-name" path="name"
											type="text" />
										<form:errors path="name" cssStyle="color : red;" />
									</div>
									<div class="form-group">
										<form:label path="field">
											<b>Field</b>
										</form:label>
										<form:input class="form-control" id="comment-name"
											path="field" type="text" />
										<form:errors path="field" cssStyle="color : red;" />
									</div>
									<div class="form-group">
										<form:label path="about">
											<b>About</b>
										</form:label>
										<form:textarea path="about" class="form-control" rows="5"
											id="comment-message" />
										<form:errors path="name" cssStyle="color : red;" />
									</div>

									<div class="form-group">
										<form:label path="beginDate">
											<b>Start date</b>
										</form:label>
										<form:input class="form-control" id="comment-name"
											path="beginDate" type="date" />
										<form:errors path="beginDate" cssStyle="color : red;" />
									</div>
									<div class="form-group">
										<form:label path="endDate">
											<b>End date</b>
										</form:label>
										<form:input class="form-control" id="comment-name"
											path="endDate" type="date" />
										<form:errors path="endDate" cssStyle="color : red;" />
									</div>
									<div class="form-group">
										<form:label path="price">
											<b>Price</b>
										</form:label>
										<form:input class="form-control" id="comment-name"
											path="price" type="text" />
										<form:errors path="price" cssStyle="color : red;" />
									</div>
									<b>Add Lectures:</b>
									<div class="form-group">
										<form:select multiple="true" path="lectures"
											items="${lectures}" size="4" itemValue="id" itemLabel="text"
											class="form-control" id="prependedInput" />
									</div>
									<b>Add Quizzes:</b>
									<div class="form-group">
										<form:select multiple="true" path="quizzes"
											items="${quizzes}" size="4" itemValue="id" itemLabel="description"
											class="form-control" id="prependedInput" />
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