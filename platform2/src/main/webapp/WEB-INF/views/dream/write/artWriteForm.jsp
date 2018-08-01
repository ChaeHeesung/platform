<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.container input[type="button"] {
    outline: none;
    color: #fff;
    padding: 0.6em 2em;
    font-size: 1em;
    margin: 1em 0 0 0;
    -webkit-appearance: none;
    background: #f44336; 
    border: 2px solid #f44336;
    -webkit-transition: 0.5s all; 
    -moz-transition: 0.5s all;
	transition: 0.5s all;
}
.container input[type="button"]:hover {
    background: none;
    color: #f44336;
}
</style>
			<div class="w3layouts-banner-info">
				<div class="container">
					<div class="w3layouts-banner-slider">
						<div class="w3layouts-banner-top-slider">
							<div class="slider">
								<div class="callbacks_container">
									<ul class="rslides callbacks callbacks1" id="slider4">
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Creative agency</h2>
												</div>
											</div>
										</li>
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Customized Solutions</h2>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
								<script src="${pageContext.request.contextPath}/resources/dream/js/responsiveslides.min.js"></script>
								<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									  // Slideshow 4
									  $("#slider4").responsiveSlides({
										auto: true,
										pager:true,
										nav:true,
										speed: 500,
										namespace: "callbacks",
										before: function () {
										  $('.news').append("<li>before event fired.</li>");
										},
										after: function () {
										  $('.news').append("<li>after event fired.</li>");
										}
									  });
									
									});
								 </script>
								<!--banner Slider starts Here-->
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	<!-- //banner -->
	<!-- contact -->
	<div id="contact" class="contact agileits">
		<div class="container">  
			<div class="agileits-title">
				<h3>Contact Us</h3>
				<p>Aliquam maximus cras cursus, nunc sit amet </p>
			</div>
			<div class="contact-agileinfo contact-form wthree"> 
				<form action="#" method="post">
					<input type="text" name="Name" placeholder="Name" style="width: 250px">
					<input class="email" type="email" name="Email" placeholder="Email" required="">
					<input type="text" name="Number" placeholder="Phone Number" required="">
					<textarea placeholder="Message" name="Message" required=""></textarea>
					<input type="button" value="버튼">
					
				</form>  
			</div>
		</div>
	</div>
	<!-- //contact -->  
	