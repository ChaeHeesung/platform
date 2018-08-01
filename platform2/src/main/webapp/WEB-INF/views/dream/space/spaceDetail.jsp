<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet"  href="/resources/dream/css/lightslider.css"/>
    <style>
    
    	/* 이미지 슬라이드 */
    	.demo ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
		.demo ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
		.demo ul{
			padding: 0px, 0px, 0px, 0px;
		}
		
        .demo .item{
            margin-bottom: 60px;
        }
		.demo .content-slider li{
		    background-color: #ed3020;
		    text-align: center;
		    color: #FFF;
		}
		.demo .content-slider h3 {
		    margin: 0;
		    padding: 70px 0;
		}
		.demo{
			width: 800px;
		}
		
		.demo *{
			box-sizing : content-box !important;
		}
		
		
		/* 버튼 */
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
    <script src="/resources/dream/js/slide/lightslider.js"></script> 
    <script>
      
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
              	auto:true,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
		});
    </script>

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
							<div class="demo">
						        <div class="item">            
						            <div class="clearfix" style="max-width:474px;">
						                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-1.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-1.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-2.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-2.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-3.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-3.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-4.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-4.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-5.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-5.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-6.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-6.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-7.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-7.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-8.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-8.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-9.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-9.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-10.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-10.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-11.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-11.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-12.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-12.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-13.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-13.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-14.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-14.jpg" />
						                         </li>
						                    <li data-thumb="/resources/dream/images/slide/thumb/cS-15.jpg"> 
						                        <img src="/resources/dream/images/slide/cS-15.jpg" />
						                         </li>
						                </ul>
						            </div>
						        </div>
						    </div>	
				</div>
				
				<div class="col-md-6 w3ls-about-left">
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Suspend dapibus volutpat.</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
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
				<div class="clearfix"> </div>
			</div>
							<div class="demo" style="text-align: center;">
						        <div class="item">
						            <ul id="content-slider" class="content-slider">
						                <li>
						                    <h3>1</h3>
						                </li>
						                <li>
						                    <h3>2</h3>
						                </li>
						                <li>
						                    <h3>3</h3>
						                </li>
						                <li>
						                    <h3>4</h3>
						                </li>
						                <li>
						                    <h3>5</h3>
						                </li>
						                <li>
						                    <h3>6</h3>
						                </li>
						            </ul>
						        </div>
						    </div>
			
			<div style="text-align: center;">
			<input type="button" value="신청하기">
			<input type="button" value="나가기">
			</div>
			
		</div>
	</div>
	<!-- //about -->
