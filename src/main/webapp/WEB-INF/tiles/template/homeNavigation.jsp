<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<security:authorize access="isAuthenticated()">
	<security:authorize access="hasRole('ROLE_USER')">
		<c:set var="role" value="ROLE_USER"></c:set>
	</security:authorize>
	<security:authorize access="hasRole('ROLE_ADMIN')">
		<c:set var="role" value="ROLE_ADMIN"></c:set>
	</security:authorize>
</security:authorize>

<ul>
	<spring:url value="/resources/images/logo.png" var="logo" />
	<li class="logo-wrapper"><a href="index.html"><img
			src="${logo}" alt="Multipurpose Twitter Bootstrap Template"></a></li>
	<c:choose>

		<c:when test="${role == 'ROLE_USER'}">
			<li><a href="<spring:url value="/welcome"/>"><spring:message
						code="header.home" /></a></li>
			<li><a href="<spring:url value="/courses"/>">Courses</a></li>
			<li><a href="<spring:url value="/courses/addCourse"/>">Add
					Courses</a></li>
			<li><a href="<spring:url value="/quizzes/add"/>">Add Quiz</a></li>
			<li><a href="<spring:url value="/questionItems/add"/>">Add
					Answer</a></li>
			<li><a href="<spring:url value="/questions/add"/>">Add
					Question</a></li>
			<li><a href="<spring:url value="/lectures/add"/>">Add
					Lecture</a></li>
			<li><a href="<spring:url value="/doLogout"/>"><spring:message
						code="header.logout" /></a></li>
		</c:when>

		<c:when test="${role == 'ROLE_ADMIN'}">
			<li><a href="<spring:url value="/welcome"/>"><spring:message
						code="header.home" /></a></li>
			<li><a href="<spring:url value="/courses"/>">Courses</a></li>
			<li><a href="<spring:url value="/courses/addCourse"/>">Add
					Courses</a></li>
			<li><a href="<spring:url value="/quizzes/add"/>">Add Quiz</a></li>
			<li><a href="<spring:url value="/questionItems/add"/>">Add
					Answer</a></li>
			<li><a href="<spring:url value="/questions/add"/>">Add
					Question</a></li>
			<li><a href="<spring:url value="/lectures/add"/>">Add
					Lecture</a></li>
			<li><a href="<spring:url value="/doLogout"/>"><spring:message
						code="header.logout" /></a></li>
		</c:when>

		<c:otherwise>
			<li><a href="<spring:url value="/welcome"/>"><spring:message
						code="header.home" /></a></li>
			<li><a href="<spring:url value="/signup"/>"><spring:message
						code="header.signup" /></a></li>
			<li><a href="<spring:url value="/login"/>"><spring:message
						code="header.login" /></a></li>
		</c:otherwise>

	</c:choose>
</ul>