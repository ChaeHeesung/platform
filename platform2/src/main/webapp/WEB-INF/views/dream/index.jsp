<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.contact input[type="button"] {
    outline: none;
    color: #fff;
    padding: 0.6em 4em;
    font-size: 1em;
    margin: 1em 0 0 0;
    -webkit-appearance: none;
    background: #f44336; 
    border: 2px solid #f44336;
    -webkit-transition: 0.5s all; 
    -moz-transition: 0.5s all;
	transition: 0.5s all;
}
.contact  input[type="button"]:hover {
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
	<!-- about -->
	<div id="about" class="about">
		<div class="container">
			<div class="agileits-title">
				<h3>About Us</h3>
				<p>Cras cursus, nunc sit amet aliquam maximus</p>
			</div>
			<div class="w3l-about-grids">
				<div class="col-md-6 w3ls-about-right">
					<img src="${pageContext.request.contextPath}/resources/dream/images/img1.jpg" class="img-responsive" alt=""> 
				</div>
				
				<div class="col-md-6 w3ls-about-left">
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Suspend dapibus volutpat.</h5>
							<p>안녕하세요</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-heart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Lorem ipsum dolor sit amet</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-paper-plane" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Consectetur dapibus volu</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div> 
				<div class="clearfix">
				</div>
				<div class="agileits-title" style="padding-top: 40px">
					<h3>About Us</h3>
					<h4>안녕하세요</h4>
					
					<p>Cras cursus, nunc sit amet aliquam maximus</p>
				</div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- Stats -->
	<div class="stats">  
		<div class="stats-info agileits-w3layouts">
			<div class="col-sm-3 col-xs-6 stats-grid w3lgrid1">
				<div class="stats-img">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<h5>Happy Clients</h5>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='157000' data-delay='.5' data-increment="100">157000</div>
			</div>
			<div class="col-sm-3 col-xs-6 stats-grid w3lgrid2">
				<div class="stats-img w3-agileits">
					<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
				</div>
				<h5>Our news</h5>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='850' data-delay='8' data-increment="1">850</div>
			</div>
			<div class="col-sm-3 col-xs-6 stats-grid w3lgrid3">
				<div class="stats-img w3-agileits">
					<i class="fa fa-briefcase" aria-hidden="true"></i>
				</div>	
				<h5>Projects</h5> 
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='80000' data-delay='.5' data-increment="100">80000</div>
			</div>
			<div class="col-sm-3 col-xs-6 stats-grid w3lgrid4">
				<div class="stats-img w3-agileits">
					<i class="fa fa-trophy" aria-hidden="true"></i>
				</div>
				<h5>Awards</h5>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='269' data-delay='8' data-increment="1">269</div>
			</div>
			<div class="clearfix"></div>
		</div>  
	</div>
	<!-- //Stats -->   
	<!-- services --> 
	<div id="services" class="services"> 
		<div class="container">   
			<div class="agileits-title">
				<h3>Services</h3>
				<p>Aliquam maximus cras cursus, nunc sit amet </p>
			</div>
			<div class="services-agileinfo"> 
				<div class="col-sm-3 col-xs-6 services-w3grids"> 
					<h5>1</h5>
					<h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h6>
				</div> 
				<div class="col-sm-3 col-xs-6 services-w3grids"> 
					<h5>2</h5>
					<h6>Phasellus at placerat ante, consectetur adipiscing elit. </h6>
				</div>
				<div class="col-sm-3 col-xs-6 services-w3grids"> 
					<h5>3</h5>
					<h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h6>
				</div>
				<div class="col-sm-3 col-xs-6 services-w3grids"> 
					<h5>4</h5>
					<h6>Phasellus at placerat ante, consectetur adipiscing elit. </h6>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div> 
	</div> 
	<!-- //services -->  
	<!-- team -->
	<div id="team" class="jarallax team">
		<div class="team-dot">
			<div class="container"> 
				<div class="agileits-title w3title1">
					<h3>Our Team</h3>
					<p>Aliquam maximus cras cursus, nunc sit amet </p>
				</div>
				<div class="agileits-team-grids">
					<div class="col-md-3 agileits-team-grid">
						<div class="team-info">
							<img src="${pageContext.request.contextPath}/resources/dream/images/t1.jpg" alt="">
							<div class="team-caption"> 
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
							<div class="team-caption"> 
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
							<div class="team-caption"> 
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
							<div class="team-caption"> 
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
	<!-- news -->
	<div id="news" class="w3-news"> 
		<div class="container"> 
			<div class="agileits-title">
				<h3>Latest News</h3>
				<p>Aliquam maximus cras cursus, nunc sit amet </p>
			</div>
			<div class="news-info">
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>10<span>Nov</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Nulla tellus exquis</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>20<span>Dec</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Mauris vehicula vel</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="news-info news-agileinfo2">
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>05<span>Jan</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Nulla tellus exquis</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="col-md-6 event-grids">
					<div class="w3layouts-text">
						<h4>18<span>Feb</span></h4>
						<h6><a href="#" data-toggle="modal" data-target="#myModal">Mauris vehicula vel</a></h6>
						<div class="clearfix"> </div>
					</div>
					<p>Kasertas lertyasea deeraeser miasera lertasa ritise doloert ferdas caplicabo nerafaes asety u lasec vaserat. nikertyade asetkertyptaiades goertayse.nikertyade asetkertyptaiades goertayse</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div> 
	</div> 
	<!-- //news -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					<h4 class="modal-title">Exploit creative agency</h4>
				</div> 
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="${pageContext.request.contextPath}/resources/dream/images/1.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- gallery -->
	<div id="gallery" class="gallery">
		<div class="container"> 
			<div class="agileits-title">
				<h3>Gallery</h3>
				<p>Suspendisse bibendum ex sit amet tellus</p> 
			</div>
		</div> 
		<div class="w3_agile_gallery_grids">
			<div class="col-sm-4 col-xs-6 agile_gallery_grid"> 
				<div class="w3_agileits_gallery_grid">
					<a href="${pageContext.request.contextPath}/resources/dream/images/g1.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/resources/dream/images/g1.jpg" alt=" " class="img-responsive" />
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
					<a href="${pageContext.request.contextPath}/resources/dream/images/g2.jpg" >
						<div class="view effect">
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
						<div class="view effect">
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
						<div class="view effect">
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
						<div class="view effect">
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
						<div class="view effect">
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
		<script type="text/javascript"  src="${pageContext.request.contextPath}/resources/dream/js/jquery.gallery.js" ></script>
		<script>
			$(function() {
				$('.w3_agile_gallery_grids').createSimpleImgGallery();
			});
		</script>
	</div>
	<!-- //gallery -->
	<!-- contact -->
	<div id="contact" class="contact agileits">
		<div class="container">  
			<div class="agileits-title">
				<h3>Contact Us</h3>
				<p>Aliquam maximus cras cursus, nunc sit amet </p>
			</div>
			<div class="contact-agileinfo contact-form wthree"> 
				<form action="#" method="post">
					<input type="text" name="Name" placeholder="Name" required="">
					<input class="email" type="email" name="Email" placeholder="Email" required="">
					<input type="text" name="Number" placeholder="Phone Number" required="">
					<textarea placeholder="Message" name="Message" required=""></textarea>
					<input type="submit" value="SUBMIT">
					<input type="submit" value="버튼">
					<input type="button" value="버튼">
					
				</form>  
			</div>
		</div>
	</div>
	<!-- //contact -->  
	<!-- map -->
	<div class="map w3layouts">  
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"></iframe>
	</div>
	<!-- //map -->  
	<!-- address -->
	<div class="address">
		<div class="container">  
			<div class="address-grids">
				<div class="col-md-6 address-left">
					<h5><a href="#">Ready to hire me?</a></h5>
					<p>Morbi viverra lacus commodo felis semper, eu iaculis lectus nulla at sapien blandit sollicitudin. Aliquam maximus cras cursus, nunc sit amet </p>
				</div>
				<div class="col-md-6 address-right">
					<div class="address-w3grids">
						<div class="col-xs-2 contact-grdl">
							<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 contact-grdr">
							<p>+111 222 3333 111</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-w3grids">
						<div class="col-xs-2 contact-grdl">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 contact-grdr">
							<p>345 Diamond Street,CANADA.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-w3grids">
						<div class="col-xs-2 contact-grdl">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 contact-grdr">
							<p><a href="mailto:example@mail.com">mail@example.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
