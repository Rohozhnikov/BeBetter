<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title><tiles:insertAttribute name="title" /></title>
	
	<spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
	<link href="${bootstrap}" rel="stylesheet" />
	<spring:url value="/resources/css/coming-soon-social.css" var="comingsoonsocial" />
	<link href="${comingsoonsocial}" rel="stylesheet" />
	<spring:url value="/resources/css/icomoon-social.css" var="icomoonsocial" />
	<link href="${icomoonsocial}" rel="stylesheet" />
	<spring:url value="/resources/css/leaflet.css" var="leaflet" />
	<link href="${leaflet}" rel="stylesheet" />
	<spring:url value="/resources/css/leaflet.ie.css" var="leafletie" />
	<link href="${leafletie}" rel="stylesheet" />
	<spring:url value="/resources/css/main-green.css" var="maingreen" />
	<link href="${maingreen}" rel="stylesheet" />
	<spring:url value="/resources/css/main-grey.css" var="maingrey" />
	<link href="${maingrey}" rel="stylesheet" />
	<spring:url value="/resources/css/main-orange.css" var="mainorange" />
	<link href="${mainorange}" rel="stylesheet" />
	<spring:url value="/resources/css/main-red.css" var="mainred" />
	<link href="${mainred}" rel="stylesheet" />
	<spring:url value="/resources/css/main.css" var="mainCss" />
	<link href="${mainCss}" rel="stylesheet" />
	<spring:url value="/resources/css/bootstrap-theme.css" var="bootstraptheme" />
	<link href="${bootstraptheme}" rel="stylesheet" />
</head>

<body>
        <!-- Navigation & Logo-->
        <div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							<li>
								<spring:url value="/resources/img/flags/gb.png" var="en" />
								<a href="?language=en"><img src="${en }" alt="Great Britain"> UK</a>
								<spring:url value="/resources/img/flags/ua.png" var="ua" />
									<a href="?language=ua"><img src="${ua}" alt="Ukraine"> UA</a>
							</li>
			        	</ul>
					</div>
				</div>
		        <nav id="mainmenu" class="mainmenu">
					<tiles:insertAttribute name="homeNavigation" />

				</nav>
		        </div>
			</div>
		<div>
			<tiles:insertAttribute name="body" />
		</div>

	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>
