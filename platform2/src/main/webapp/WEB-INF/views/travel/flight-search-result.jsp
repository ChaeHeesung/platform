<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Flight Search Result</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="icon" href="images/favicon.png" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i%7CMerriweather:300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet">

<!-- Bootstrap Stylesheet -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome Stylesheet -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom Stylesheets -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" id="cpswitch" href="css/orange.css">
<link rel="stylesheet" href="css/responsive.css">

<!--Date-Picker Stylesheet-->
<link rel="stylesheet" href="css/datepicker.css">
</head>


<body>
    
    <jsp:include page="include/header.jsp"></jsp:include>

	<!--======================= PAGE-COVER =====================-->
	<section class="page-cover back-size" id="cover-flight-search">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1 class="page-title">Flight Search Result</h1>
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Flight Search Result</li>
					</ul>
				</div>
				<!-- end columns -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end page-cover -->


	<!--===== INNERPAGE-WRAPPER ====-->
	<section class="innerpage-wrapper">
		<div id="search-result-page" class="innerpage-section-padding">
			<div class="container">
				<div class="row">

					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 content-side">
						<div class="page-search-form">
							<h2>
								Search the <span>Flight <i class="fa fa-plane"></i></span>
							</h2>

							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab-round-trip"
									data-toggle="tab">Round Trip</a></li>
								<li><a href="#tab-one-way" data-toggle="tab">One Way</a></li>
							</ul>

							<div class="tab-content">
								<div id="tab-round-trip" class="tab-pane fade in active">
									<form class="pg-search-form">
										<div class="row">
											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-map-marker"></i></span>From</label>
													<input class="form-control"
														placeholder="Destination, City, Country" />
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-map-marker"></i></span>To</label>
													<input class="form-control"
														placeholder="Destination, City, Country" />
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
												<div class="row">
													<div class="col-xs-6 col-sm-6">
														<div class="form-group">
															<label><span><i class="fa fa-calendar"></i></span>Departing</label>
															<input class="form-control dpd1" placeholder="Date" />
														</div>
													</div>
													<!-- end columns -->

													<div class="col-xs-6 col-sm-6">
														<div class="form-group">
															<label><span><i class="fa fa-calendar"></i></span>Returning</label>
															<input class="form-control dpd2" placeholder="Date" />
														</div>
													</div>
													<!-- end columns -->
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
												<div class="form-group">
													<label><span><i class="fa fa-users"></i></span>Passengers</label>
													<input type="number" class="form-control"
														placeholder="Total" min="0" />
												</div>
											</div>
											<!-- end columns -->
										</div>
										<!-- end row -->

										<button class="btn btn-orange">Search</button>
									</form>
								</div>
								<!-- end tab-round-trip -->

								<div id="tab-one-way" class="tab-pane fade">
									<form class="pg-search-form">
										<div class="row">
											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-map-marker"></i></span>From</label>
													<input class="form-control"
														placeholder="Destination, City, Country" />
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-map-marker"></i></span>To</label>
													<input class="form-control"
														placeholder="Destination, City, Country" />
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-calendar"></i></span>Departing</label>
													<input class="form-control dpd3" placeholder="Date" />
												</div>
											</div>
											<!-- end columns -->

											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="form-group">
													<label><span><i class="fa fa-users"></i></span>Passengers</label>
													<input type="number" class="form-control"
														placeholder="Total" />
												</div>
											</div>
											<!-- end columns -->
										</div>
										<!-- end row -->

										<button class="btn btn-orange">Search</button>
									</form>
								</div>
								<!-- end tab-one-way -->
							</div>
							<!-- end tab-content -->
						</div>
						<!-- end page-search-form -->

						<!--===== INNERPAGE-WRAPPER ====-->
						<section class="innerpage-wrapper">
							<div id="flight-grid" class="innerpage-section-padding">
								<div class="container">
									<div class="row">

										<div
											class="col-xs-12 col-sm-12 col-md-3 side-bar left-side-bar">

											<div class="side-bar-block filter-block">
												<h3>Sort By Filter</h3>
												<p>Find your dream flights today</p>

												<div class="panels-group">

													<div class="panel panel-default">
														<div class="panel-heading">
															<a href="#panel-1" data-toggle="collapse">Select
																Airline <span><i class="fa fa-angle-down"></i></span>
															</a>
														</div>
														<!-- end panel-heading -->

														<div id="panel-1" class="panel-collapse collapse">
															<div class="panel-body text-left">
																<ul class="list-unstyled">
																	<li class="custom-check"><input type="checkbox"
																		id="check01" name="checkbox" /> <label for="check01"><span><i
																				class="fa fa-check"></i></span>All Types</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check02" name="checkbox" /> <label for="check02"><span><i
																				class="fa fa-check"></i></span>Aruba Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check03" name="checkbox" /> <label for="check03"><span><i
																				class="fa fa-check"></i></span>Asiana Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check04" name="checkbox" /> <label for="check04"><span><i
																				class="fa fa-check"></i></span>American Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check05" name="checkbox" /> <label for="check05"><span><i
																				class="fa fa-check"></i></span>Delta Stop</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check06" name="checkbox" /> <label for="check06"><span><i
																				class="fa fa-check"></i></span>KingFisher Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check07" name="checkbox" /> <label for="check07"><span><i
																				class="fa fa-check"></i></span>Lufthansa Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check08" name="checkbox" /> <label for="check08"><span><i
																				class="fa fa-check"></i></span>Qatar Airlines</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check09" name="checkbox" /> <label for="check09"><span><i
																				class="fa fa-check"></i></span>United Airlines</label></li>
																</ul>
															</div>
															<!-- end panel-body -->
														</div>
														<!-- end panel-collapse -->
													</div>
													<!-- end panel-default -->

													<div class="panel panel-default">
														<div class="panel-heading">
															<a href="#panel-2" data-toggle="collapse">Flight
																Class <span><i class="fa fa-angle-down"></i></span>
															</a>
														</div>
														<!-- end panel-heading -->

														<div id="panel-2" class="panel-collapse collapse">
															<div class="panel-body text-left">
																<ul class="list-unstyled">
																	<li class="custom-check"><input type="checkbox"
																		id="check10" name="checkbox" /> <label for="check10"><span><i
																				class="fa fa-check"></i></span>All</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check11" name="checkbox" /> <label for="check11"><span><i
																				class="fa fa-check"></i></span>Economy</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check12" name="checkbox" /> <label for="check12"><span><i
																				class="fa fa-check"></i></span>First Class</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check13" name="checkbox" /> <label for="check13"><span><i
																				class="fa fa-check"></i></span>Business</label></li>
																</ul>
															</div>
															<!-- end panel-body -->
														</div>
														<!-- end panel-collapse -->
													</div>
													<!-- end panel-default -->

													<div class="panel panel-default">
														<div class="panel-heading">
															<a href="#panel-3" data-toggle="collapse">Flight
																Stops <span><i class="fa fa-angle-down"></i></span>
															</a>
														</div>
														<!-- end panel-heading -->

														<div id="panel-3" class="panel-collapse collapse">
															<div class="panel-body text-left">
																<ul class="list-unstyled">
																	<li class="custom-check"><input type="checkbox"
																		id="check14" name="checkbox" /> <label for="check14"><span><i
																				class="fa fa-check"></i></span>All</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check15" name="checkbox" /> <label for="check15"><span><i
																				class="fa fa-check"></i></span>1 Stop</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check16" name="checkbox" /> <label for="check16"><span><i
																				class="fa fa-check"></i></span>2 Stop</label></li>
																	<li class="custom-check"><input type="checkbox"
																		id="check17" name="checkbox" /> <label for="check17"><span><i
																				class="fa fa-check"></i></span>3 Stop</label></li>
																</ul>
															</div>
															<!-- end panel-body -->
														</div>
														<!-- end panel-collapse -->
													</div>
													<!-- end panel-default -->

												</div>
												<!-- end panel-group -->

												<div class="price-slider">
													<p>
														<input type="text" id="amount" readonly>
													</p>
													<div id="slider-range"></div>
												</div>
												<!-- end price-slider -->
											</div>
											<!-- end side-bar-block -->

											<div class="row">
												<div class="col-xs-12 col-sm-6 col-md-12">
													<div class="side-bar-block main-block ad-block">
														<div class="main-img ad-img">
															<a href="#"> <img src="images/car-ad.jpg"
																class="img-responsive" alt="car-ad" />
																<div class="ad-mask">
																	<div class="ad-text">
																		<span>Luxury</span>
																		<h2>Car</h2>
																		<span>Offer</span>
																	</div>
																	<!-- end ad-text -->
																</div>
																<!-- end columns -->
															</a>
														</div>
														<!-- end ad-img -->
													</div>
													<!-- end side-bar-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-12">
													<div class="side-bar-block support-block">
														<h3>Need Help</h3>
														<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
															fabulas, in lucilius prodesset pri. Veniam delectus ei
															vis. Est atqui timeam mnesarchum.</p>
														<div class="support-contact">
															<span><i class="fa fa-phone"></i></span>
															<p>+1 123 1234567</p>
														</div>
														<!-- end support-contact -->
													</div>
													<!-- end side-bar-block -->
												</div>
												<!-- end columns -->

											</div>
											<!-- end row -->
										</div>
										<!-- end columns -->

										<div
											class="col-xs-12 col-sm-12 col-md-9 col-lg-9 content-side">
											<div class="row">

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-1.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-2.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-3.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-4.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-5.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

												<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="grid-block main-block f-grid-block">
														<a href="flight-detail-left-sidebar.html">
															<div class="main-img f-img">
																<img src="images/flight-6.jpg" class="img-responsive"
																	alt="flight-img" />
															</div>
															<!-- end f-img -->
														</a>
														<ul class="list-unstyled list-inline offer-price-1">
															<li class="price">$568.00<span class="divider">|</span><span
																class="pkg">2 Stay</span></li>
														</ul>

														<div class="block-info f-grid-info">
															<div class="f-grid-desc">
																<span class="f-grid-time"><i
																	class="fa fa-clock-o"></i>6 hours - 30 minutes</span>
																<h3 class="block-title">
																	<a href="flight-detail-left-sidebar.html">Sydney to
																		Paris</a>
																</h3>
																<p class="block-minor">
																	<span>Fr 5379,</span> Oneway Flight
																</p>
																<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
																	fabulas, in lucilius prodesset pri. Veniam delectus ei
																</p>
															</div>
															<!-- end f-grid-desc -->

															<div class="f-grid-timing">
																<ul class="list-unstyled">
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 02-2017 </span>(8:40 PM)</li>
																	<li><span><i class="fa fa-plane"></i></span><span
																		class="date">Aug, 03-2017 </span>(8:40 PM)</li>
																</ul>
															</div>
															<!-- end flight-timing -->

															<div class="grid-btn">
																<a href="flight-detail-left-sidebar.html"
																	class="btn btn-orange btn-block btn-lg">View More</a>
															</div>
															<!-- end grid-btn -->
														</div>
														<!-- end f-grid-info -->
													</div>
													<!-- end f-grid-block -->
												</div>
												<!-- end columns -->

											</div>
											<!-- end row -->

											<div class="pages">
												<ol class="pagination">
													<li><a href="#" aria-label="Previous"><span
															aria-hidden="true"><i class="fa fa-angle-left"></i></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#" aria-label="Next"><span
															aria-hidden="true"><i class="fa fa-angle-right"></i></span></a></li>
												</ol>
											</div>
											<!-- end pages -->
										</div>
										<!-- end columns -->

									</div>
									<!-- end row -->
								</div>
								<!-- end container -->
							</div>
							<!-- end flight-grid -->
						</section>
						<!-- end innerpage-wrapper -->


						<!--======================= BEST FEATURES =====================-->
						<section id="best-features" class="banner-padding black-features">
							<div class="container">
								<div class="row">
									<div class="col-sm-6 col-md-3">
										<div class="b-feature-block">
											<span><i class="fa fa-dollar"></i></span>
											<h3>Best Price Guarantee</h3>
											<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
												fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
										</div>
										<!-- end b-feature-block -->
									</div>
									<!-- end columns -->

									<div class="col-sm-6 col-md-3">
										<div class="b-feature-block">
											<span><i class="fa fa-lock"></i></span>
											<h3>Safe and Secure</h3>
											<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
												fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
										</div>
										<!-- end b-feature-block -->
									</div>
									<!-- end columns -->

									<div class="col-sm-6 col-md-3">
										<div class="b-feature-block">
											<span><i class="fa fa-thumbs-up"></i></span>
											<h3>Best Travel Agents</h3>
											<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
												fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
										</div>
										<!-- end b-feature-block -->
									</div>
									<!-- end columns -->

									<div class="col-sm-6 col-md-3">
										<div class="b-feature-block">
											<span><i class="fa fa-bars"></i></span>
											<h3>Travel Guidelines</h3>
											<p>Lorem ipsum dolor sit amet, ad duo fugit aeque
												fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
										</div>
										<!-- end b-feature-block -->
									</div>
									<!-- end columns -->
								</div>
								<!-- end row -->
							</div>
							<!-- end container -->
						</section>
						<!-- end best-features -->


<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>
