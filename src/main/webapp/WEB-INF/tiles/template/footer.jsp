<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

  <!-- Footer -->
   	<div class="container">
    	<div class="row">
    		<div class="col-footer col-md-3 col-xs-6">
    			<h3>Our Latest Work</h3>
    			<div class="portfolio-item">
					<div class="portfolio-image">
					<spring:url value="/resources/img/portfolio6.jpg" var="port6"></spring:url>
						<a href="page-portfolio-item.html"><img src="${port6 }" alt="Project Name"></a>
					</div>
				</div>
    		</div>
    		<div class="col-footer col-md-3 col-xs-6">
    			<h3>Navigate</h3>
    			<ul class="no-list-style footer-navigate-section">
    				<li><a href="page-blog-posts.html">Blog</a></li>
    				<li><a href="page-portfolio-3-columns-2.html">Portfolio</a></li>
    				<li><a href="page-products-3-columns.html">eShop</a></li>
    				<li><a href="page-services-3-columns.html">Services</a></li>
    				<li><a href="page-pricing.html">Pricing</a></li>
    				<li><a href="page-faq.html">FAQ</a></li>
    			</ul>
    		</div>
    		
    		<div class="col-footer col-md-4 col-xs-6">
    			<h3>Contacts</h3>
    			<p class="contact-us-details">
       				<b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom<br/>
       				<b>Phone:</b> +44 123 654321<br/>
       				<b>Fax:</b> +44 123 654321<br/>
       				<b>Email:</b> <a href="mailto:getintoutch@yourcompanydomain.com">getintoutch@yourcompanydomain.com</a>
       			</p>
    		</div>
    		<div class="col-footer col-md-2 col-xs-6">
    			<h3>Stay Connected</h3>
    			<ul class="footer-stay-connected no-list-style">
    				<li><a href="#" class="facebook"></a></li>
    				<li><a href="#" class="twitter"></a></li>
    				<li><a href="#" class="googleplus"></a></li>
    			</ul>
    		</div>
    	</div>
    	<div class="row">
    		<div class="col-md-12">
    			<div class="footer-copyright">&copy; 2015 Be Better. All rights reserved.</div>
    		</div>
    	</div>
    </div>


  </body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

      <spring:url value="/resources/js/bootstrap.js" var="bootstrap" />
      <script src="${bootstrap}"></script>
      <spring:url value="/resources/js/main-menu.js" var="ajax" />
      <script src="${ajax}"></script>
      <spring:url value="/resources/js/ajax.js" var="main-menu" />
      <script src="${main-menu }"></script>
      <spring:url value="/resources/js/template.js" var="template" />
      <script src="${template }"></script>