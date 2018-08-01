<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- team -->
	<div id="services" class="services"> 
		<div class="team-dot">
			<div class="container"> 
				<div class="agileits-title">
					<h3>예술전공생</h3>
					<p style="font-size: 15px">Aliquam maximus cras cursus, nunc sit amet </p>
					<a style="padding-left: 30px; font-size: 15px">지역으로 검색</a>
					<a style="padding-left: 30px; font-size: 15px">가격으로 검색</a>
					<a style="padding-left: 30px; font-size: 15px">지도로 검색</a>
				</div>
				<div class="agileits-team-grids">
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/art/art1.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Peter Parker</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t2.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Johan Botha</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t3.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Justo Congue</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t4.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Steven Wilson</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
							<br>
				<div class="agileits-team-grids">
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t1.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Peter Parker</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t2.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Johan Botha</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t3.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Justo Congue</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t4.jpg" alt="">
							<div class="team-caption" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.5 );"> 
								<h4>Steven Wilson</h4>
								<p>Fusce laoreet</p>
								<div class="agileinfo-social-grids">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> 
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>			
		</div>
	</div>
	<!-- //team -->
