<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Hotel Search Result</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="icon" href="/resources/travel/images/favicon.png" type="image/x-icon">
        
        <!-- Google Fonts -->	
        <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i%7CMerriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        
        <!-- Bootstrap Stylesheet -->	
        <link rel="stylesheet" href="/resources/travel/css/bootstrap.min.css">
        
        <!-- Font Awesome Stylesheet -->
        <link rel="stylesheet" href="/resources/travel/css/font-awesome.min.css">
            
        <!-- Custom Stylesheets -->	
        <link rel="stylesheet" href="/resources/travel/css/style.css">
        <link rel="stylesheet" id="cpswitch" href="/resources/travel/css/orange.css">
        <link rel="stylesheet" href="/resources/travel/css/responsive.css">
        
        <!--Date-Picker Stylesheet-->
        <link rel="stylesheet" href="/resources/travel/css/datepicker.css">
    </head>
    
    
    <body>
    
    <jsp:include page="include/footer.jsp"></jsp:include>    
        
        <!--======================= PAGE-COVER ====================-->
        <section class="page-cover back-size" id="cover-hotel-search">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                    	<h1 class="page-title">Hotel Search Result</h1>
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Hotel Search Result</li>
                        </ul>
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end page-cover -->
        
        
        <!--===== INNERPAGE-WRAPPER ====-->
        <section class="innerpage-wrapper">
        	<div id="search-result-page" class="innerpage-section-padding">
        		<div class="container">
        			<div class="row">
                        
                    	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 content-side">
                        	<div class="page-search-form">
                            	<h2>Search the <span>Hotel <i class="fa fa-building"></i></span></h2>
                                
                                <form class="pg-search-form">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="form-group">
                                                <label><span><i class="fa fa-map-marker"></i></span>Where</label>
                                                <input class="form-control" placeholder="City, Hotel Name, Country"/>
                                            </div>
                                        </div><!-- end columns -->
                                        
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="row">
                                                <div class="col-xs-6 col-sm-6">
                                                    <div class="form-group">
                                                        <label><span><i class="fa fa-calendar"></i></span>Check In</label>
                                                        <input class="form-control dpd1" placeholder="Date"/>
                                                    </div>
                                                </div><!-- end columns -->
                                                
                                                <div class="col-xs-6 col-sm-6">
                                                    <div class="form-group">
                                                        <label><span><i class="fa fa-calendar"></i></span>Check Out</label>
                                                        <input class="form-control dpd2" placeholder="Date"/>
                                                    </div>
                                                </div><!-- end columns -->
                                            </div>
                                        </div><!-- end columns -->
                                        
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="row">
                                                <div class="col-xs-6 col-sm-6">
                                                    <div class="form-group">
                                                        <label><span><i class="fa fa-users"></i></span>Guests</label>
                                                        <input type="number" class="form-control" placeholder="Total" min="0"/>                                          			</div>
                                                </div><!-- end columns -->
                                                
                                                <div class="col-xs-6 col-sm-6">
                                                    <div class="form-group">
                                                        <label><span><i class="fa fa-clone"></i></span>Rooms</label>
                                                        <input type="number" class="form-control" placeholder="Total" min="0"/>                                          			</div>
                                                </div><!-- end columns -->
                                        	</div>
                                        </div>
                                        
                                    </div><!-- end row -->
                                    
                                    <button class="btn btn-orange">Search</button>
                                </form>
                                 
                            </div><!-- end page-search-form -->
                            
                            
                    		<div class="row">
                            
                        		<div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-1.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-2.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-3.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-4.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-5.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="grid-block main-block h-grid-block">
                                    	<div class="main-img h-grid-img">
                                        	<a href="hotel-detail-left-sidebar.html">
                                    			<img src="images/hotel-grid-6.jpg" class="img-responsive" alt="hotel-img" />
                                            </a>
                                            <div class="main-mask">
                                                <ul class="list-unstyled list-inline offer-price-1">
                                                    <li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                </ul>
                                            </div><!-- end main-mask -->
                                    	</div><!-- end h-grid-img -->
                                        
                                         <div class="block-info h-grid-info">
                                         	<div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </div><!-- end rating -->
                                            
                                         	<h3 class="block-title"><a href="hotel-detail-left-sidebar.html">Herta Berlin Hotel</a></h3>
                                            <p class="block-minor">From: Scotland</p>
                                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei </p>
                                            <div class="grid-btn">
                                            	<a href="hotel-detail-left-sidebar.html" class="btn btn-orange btn-block btn-lg">View More</a>
                                            </div><!-- end grid-btn -->
                                         </div><!-- end h-grid-info -->
                                    </div><!-- end h-grid-block -->
                                </div><!-- end columns -->
                                
                            </div><!-- end row --> 
                        </div><!-- end columns -->

                    </div><!-- end row -->
            	</div><!-- end container -->
            </div><!-- end search-result-page -->
        </section><!-- end innerpage-wrapper -->
        
        
        <!--======================= BEST FEATURES =====================-->
        <section id="best-features" class="banner-padding black-features">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-dollar"></i></span>
                        	<h3>Best Price Guarantee</h3>
                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-lock"></i></span>
                        	<h3>Safe and Secure</h3>
                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-thumbs-up"></i></span>
                        	<h3>Best Travel Agents</h3>
                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-bars"></i></span>
                        	<h3>Travel Guidelines</h3>
                            <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end best-features -->  
 <jsp:include page="include/footer.jsp"></jsp:include>
    </body>
</html>
