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
	<!-- team -->
	
	<style>
		#spaceimage {
			padding: 30px 30px 30px 30px !important;
		}
	</style>
	
	<div id="gallery" class="gallery">
		<div class="container" id="container"> 
			<div class="agileits-title">
			<div>
				<h3>공간전공생</h3>
				<div style="position: relative; text-align: right;"><input type="button" value="글쓰기" onclick="location.href='/dream/space/spacewriteform'"></div>
			</div>
			<p>Suspendisse bibendum ex sit amet tellus</p> 
			</div>
			<div><a href="#">글쓰기</a></div>
		</div> 
		<div class="w3_agile_gallery_grids">
			<div class="col-sm-4 col-xs-6 agile_gallery_grid"> 
				<div class="w3_agileits_gallery_grid">
					<a href="/dream/space/detail" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g1.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>서울시 강남구 신사동 115-22<br>이디야카페<br></h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="col-sm-4 col-xs-6 agile_gallery_grid">
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g2.jpg" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g2.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>Exploit</h4>
							</div>
						</div> 
					</a>
				</div> 
			</div>
			<div class="col-sm-4 col-xs-6 agile_gallery_grid">
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g3.jpg" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g3.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>Exploit</h4>
							</div>
						</div> 
					</a>
				</div> 
			</div>
			<div class="col-sm-4 col-xs-6 agile_gallery_grid"> 
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g4.jpg" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g4.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>Exploit</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="col-sm-4 col-xs-6 agile_gallery_grid"> 
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g5.jpg" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g5.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>Exploit</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="col-sm-4 col-xs-6 agile_gallery_grid"> 
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g6.jpg" >
						<div class="view effect" id="spaceimage">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g6.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>Exploit</h4>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	<!-- //team -->
