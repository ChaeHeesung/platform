<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <head>
        <title>Index</title>
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
    
        <!-- Owl Carousel Stylesheet -->
        <link rel="stylesheet" href="/resources/travel/css/owl.carousel.css">
        <link rel="stylesheet" href="/resources/travel/css/owl.theme.css">
        
        <!-- Flex Slider Stylesheet -->
        <link rel="stylesheet" href="/resources/travel/css/flexslider.css" type="text/css" />
        
        <!--Date-Picker Stylesheet-->
        <link rel="stylesheet" href="/resources/travel/css/datepicker.css">
        
        <!-- Magnific Gallery -->
        <link rel="stylesheet" href="/resources/travel/css/magnific-popup.css">
    </head>
    
    
    <body id="main-homepage">
    
    <jsp:include page="include/header.jsp"></jsp:include>
        
        
		<!--========================= FLEX SLIDER =====================-->
        <section class="flexslider-container" id="flexslider-container-1">

            <div class="flexslider slider" id="slider-1">
                <ul class="slides">
                    
                    <li class="item-1" style="background:			linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(/resources/travel/images/homepage-slider-1.jpg) 50% 0%;
	background-size:cover;
	height:100%;">
                    	<div class=" meta">         
                            <div class="container">
                                <h2>Discover</h2>
                                <h1>ENGLAND</h1>
                                <a href="#" class="btn btn-default">View More</a>
                            </div><!-- end container -->  
                        </div><!-- end meta -->
                    </li><!-- end item-1 -->
                    
                    <li class="item-2" style="background:			linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(/resources/travel/images/homepage-slider-2.jpg) 50% 0%;
	background-size:cover;
	height:100%;">
                        <div class=" meta">         
                            <div class="container">
                                <h2>Discover</h2>
                                <h1>NEW ZELAND</h1>
                                <a href="#" class="btn btn-default">View More</a>
                            </div><!-- end container -->  
                        </div><!-- end meta -->
                    </li><!-- end item-2 -->
                   
                      <li class="item-3" style="background:			linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(/resources/travel/images/homepage-slider-3.jpg) 50% 0%;
	background-size:cover;
	height:100%;">
                    	<div class=" meta">         
                            <div class="container">
                                <h2>Discover</h2>
                                <h1>Australia</h1>
                                <a href="#" class="btn btn-default">View More</a>
                            </div><!-- end container -->  
                        </div><!-- end meta -->
                    </li><!-- end item-3 -->
                   
                </ul>
            </div><!-- end slider -->
            
            <div class="search-tabs" id="search-tabs-1">
            	<div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                        
                            <ul class="nav nav-tabs center-tabs">
                                <li class="active"><a href="#flights" data-toggle="tab"><span><i class="fa fa-plane"></i></span><span class="st-text">Flights</span></a></li>
                                <li><a href="#hotels" data-toggle="tab"><span><i class="fa fa-building"></i></span><span class="st-text">Hotels</span></a></li>
                                <li><a href="#tours" data-toggle="tab"><span><i class="fa fa-suitcase"></i></span><span class="st-text">Tours</span></a></li>
                            </ul>
        
                            <div class="tab-content">

                                <div id="flights" class="tab-pane in active">
                                    <form>
                                        <div class="row">

                                            <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
                                                <div class="row">
                                                
                                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control" placeholder="From" >
                                                            <i class="fa fa-map-marker"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control" placeholder="To" >
                                                            <i class="fa fa-map-marker"></i>
                                                        </div>
                                                    </div><!-- end columns -->
        
                                                </div><!-- end row -->								
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
                                                <div class="row">
                                                
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control dpd1" placeholder="Check In" >
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control dpd2" placeholder="Check Out" >
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                    </div><!-- end columns -->
        
                                                </div><!-- end row -->								
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                                                <div class="form-group right-icon">
                                                    <select class="form-control">
                                                        <option selected>Adults</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                    <i class="fa fa-angle-down"></i>
                                                </div>
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn">
                                           
                                            <a href="hotel-search-result" class="btn btn-orange">Search</a>
                                            
                                            </div><!-- end columns -->
                                            
                                        </div><!-- end row -->
                                    </form>
                                </div><!-- end flights -->
                                
                                <div id="hotels" class="tab-pane">
                                    <form>
                                        <div class="row">
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-5">
                                                <div class="row">
                                                
                                                    <div class="col-xs-12 col-sm-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control dpd1" placeholder="Check In" >
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-12 col-sm-6">
                                                        <div class="form-group left-icon">
                                                            <input type="text" class="form-control dpd2" placeholder="Check Out" >
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                    </div><!-- end columns -->
        
                                                </div><!-- end row -->								
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-5">
                                                <div class="row">
                                                
                                                    <div class="col-xs-12 col-sm-12 col-md-4">
                                                        <div class="form-group right-icon">
                                                            <select class="form-control">
                                                                <option selected>Rooms</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>
                                                            </select>
                                                            <i class="fa fa-angle-down"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-6 col-sm-6 col-md-4">
                                                        <div class="form-group right-icon">
                                                            <select class="form-control">
                                                                <option selected>Adults</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>
                                                            </select>
                                                            <i class="fa fa-angle-down"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-6 col-sm-6 col-md-4">
                                                        <div class="form-group right-icon">
                                                            <select class="form-control">
                                                                <option selected>Kids</option>
                                                                <option>0</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                            <i class="fa fa-angle-down"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                </div><!-- end row -->
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn">
                                                <button class="btn btn-orange">Search</button>
                                            </div><!-- end columns -->
                                            
                                        </div><!-- end row -->
                                    </form>
                                </div><!-- end hotels -->

                                <div id="tours" class="tab-pane">
                                    <form>
                                        <div class="row">
                                        
                                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
                                                <div class="form-group left-icon">
                                                    <input type="text" class="form-control" placeholder="City,Country" />
                                                    <i class="fa fa-map-marker"></i>
                                                </div>
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                                <div class="form-group right-icon">
                                                    <select class="form-control">
                                                        <option selected>Month</option>
                                                        <option>January</option>
                                                        <option>February</option>
                                                        <option>March</option>
                                                        <option>April</option>
                                                        <option>May</option>
                                                        <option>June</option>
                                                        <option>July</option>
                                                        <option>August</option>
                                                        <option>September</option>
                                                        <option>October</option>
                                                        <option>November</option>
                                                        <option>December</option>
                                                    </select>
                                                    <i class="fa fa-angle-down"></i>
                                                </div>
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                                                <div class="row">
    
                                                    <div class="col-xs-12 col-sm-6">
                                                        <div class="form-group right-icon">
                                                            <select class="form-control">
                                                                <option selected>Adults</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>
                                                            </select>
                                                            <i class="fa fa-angle-down"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                    <div class="col-xs-12 col-sm-6">
                                                        <div class="form-group right-icon">
                                                            <select class="form-control">
                                                                <option selected>Kids</option>
                                                                <option>0</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                            <i class="fa fa-angle-down"></i>
                                                        </div>
                                                    </div><!-- end columns -->
                                                    
                                                </div><!-- end row -->
                                            </div><!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn">
                                                <button class="btn btn-orange">Search</button>
                                            </div><!-- end columns -->
                                            
                                        </div><!-- end row -->
                                    </form>
                                </div><!-- end tours -->
                            </div><!-- end tab-content -->
                            
                        </div><!-- end columns -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end search-tabs -->
            
        </section><!-- end flexslider-container -->
         <!--================= FLIGHT OFFERS =============-->
        <section id="flight-offers" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Flight Offers</h2>
                            <hr class="heading-line" />
                        </div><!-- end page-heading -->
                        
                        <div class="row">
                        
                        	<div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-1.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-2.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-3.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-4.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-5.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block flight-block">
                                    <a href="#">
                                        <div class="flight-img">
                                            <img src="/resources/travel/images/flight-6.jpg" class="img-responsive" alt="flight-img" />
                                        </div><!-- end flight-img -->
                                        
                                        <div class="flight-info">
                                            <div class="flight-title">
                                                <h3><span class="flight-destination">Spain</span>|<span class="flight-type">OneWay Flight</span></h3>
                                            </div><!-- end flight-title -->
                                            
                                            <div class=" flight-timing">
                                                <ul class="list-unstyled">
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 02-2017 </span>(8:40 PM)</li>
                                                    <li><span><i class="fa fa-plane"></i></span><span class="date">Aug, 03-2017 </span>(8:40 PM)</li>
                                                </ul>
                                            </div><!-- end flight-timing -->
                                            
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="pkg">Avg/Person</span></li>
                                                <li class="rating">
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end flight-info -->
                                    </a>
                                </div><!-- end flight-block -->
                            </div><!-- end columns -->
                            
                        </div><!-- end row -->
                        
                        <div class="view-all text-center">
                        	<a href="#" class="btn btn-orange">View All</a>
                        </div><!-- end view-all -->
                    </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end flight-offers -->
                               
      
        <!--=============== HOTEL OFFERS ===============-->
        <section id="hotel-offers" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Hotels Offers</h2>
                            <hr class="heading-line" />
                        </div><!-- end page-heading -->
                        
                        <div class="owl-carousel owl-theme owl-custom-arrow" id="owl-hotel-offers">
                            
                            <div class="item">
                                <div class="main-block hotel-block">
                                    <div class="main-img">
                                    	<a href="#">
                                        	<img src="/resources/travel/images/hotel-1.jpg" class="img-responsive" alt="hotel-img" />
                                        </a>
                                        <div class="main-mask">
                                        	<ul class="list-unstyled list-inline offer-price-1">
                                            	<li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                <li class="rating">
                                                	<span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end main-mask -->
                                    </div><!-- end offer-img -->
                                    
                                    <div class="main-info hotel-info">
                                    	<div class="arrow">
                                        	<a href="#"><span><i class="fa fa-angle-right"></i></span></a>
                                        </div><!-- end arrow -->
                                        
                                    	<div class="main-title hotel-title">
                                            <a href="#">Herta Berlin Hotel</a>
                                            <p>From: Scotland</p>
                                        </div><!-- end hotel-title -->
                                    </div><!-- end hotel-info -->
                                </div><!-- end hotel-block -->
                            </div><!-- end item -->
                        	
                            <div class="item">
                                <div class="main-block hotel-block">
                                    <div class="main-img">
                                    	<a href="#">
                                        	<img src="/resources/travel/images/hotel-2.jpg" class="img-responsive" alt="hotel-img" />
                                        </a>
                                        <div class="main-mask">
                                        	<ul class="list-unstyled list-inline offer-price-1">
                                            	<li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                <li class="rating">
                                                	<span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end main-mask -->
                                    </div><!-- end offer-img -->
                                    
                                    <div class="main-info hotel-info">
                                    	<div class="arrow">
                                        	<a href="#"><span><i class="fa fa-angle-right"></i></span></a>
                                        </div><!-- end arrow -->
                                        
                                    	<div class="main-title hotel-title">
                                            <a href="#">Roosevelt Hotel</a>
                                            <p>From: Germany</p>
                                        </div><!-- end hotel-title -->
                                    </div><!-- end hotel-info -->
                                </div><!-- end hotel-block -->
                            </div><!-- end item -->
                            
                            <div class="item">
                                <div class="main-block hotel-block">
                                    <div class="main-img">
                                    	<a href="#">
                                        	<img src="/resources/travel/images/hotel-3.jpg" class="img-responsive" alt="hotel-img" />
                                        </a>
                                        <div class="main-mask">
                                        	<ul class="list-unstyled list-inline offer-price-1">
                                            	<li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                <li class="rating">
                                                	<span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end main-mask -->
                                    </div><!-- end offer-img -->
                                    
                                    <div class="main-info hotel-info">
                                    	<div class="arrow">
                                        	<a href="#"><span><i class="fa fa-angle-right"></i></span></a>
                                        </div><!-- end arrow -->
                                        
                                    	<div class="main-title hotel-title">
                                            <a href="#">Hotel Fort De</a>
                                            <p>From: Austria</p>
                                        </div><!-- end hotel-title -->
                                    </div><!-- end hotel-info -->
                                </div><!-- end hotel-block -->
                            </div><!-- end item -->
                            
                            <div class="item">
                                <div class="main-block hotel-block">
                                    <div class="main-img">
                                        <a href="#">
                                        	<img src="/resources/travel/images/hotel-4.jpg" class="img-responsive" alt="hotel-img" />
                                        </a>
                                        <div class="main-mask">
                                        	<ul class="list-unstyled list-inline offer-price-1">
                                            	<li class="price">$568.00<span class="divider">|</span><span class="pkg">Avg/Night</span></li>
                                                <li class="rating">
                                                	<span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star orange"></i></span>
                                                    <span><i class="fa fa-star lightgrey"></i></span>
                                                </li>
                                            </ul>
                                        </div><!-- end main-mask -->
                                    </div><!-- end offer-img -->
                                    
                                    <div class="main-info hotel-info">
                                    	<div class="arrow">
                                        	<a href="#"><span><i class="fa fa-angle-right"></i></span></a>
                                        </div><!-- end arrow -->
                                        
                                    	<div class="main-title hotel-title">
                                            <a href="#">Roosevelt Hotel</a>
                                            <p>From: Germany</p>
                                        </div><!-- end hotel-title -->
                                    </div><!-- end hotel-info -->
                                </div><!-- end hotel-block -->
                            </div><!-- end item -->
                            
                        </div><!-- end owl-hotel-offers -->
                        
                        <div class="view-all text-center">
                        	<a href="#" class="btn btn-orange">View All</a>
                        </div><!-- end view-all -->
                    </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end hotel-offers -->
        
        
        <!--======================= BEST FEATURES =====================-->
        <section id="best-features" class="banner-padding black-features">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-dollar"></i></span>
                        	<h3>Best Price Guarantee</h3>
                            <p>We guarantee you always get the lowest price when you use our website.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-lock"></i></span>
                        	<h3>Safe and Secure</h3>
                            <p>Our system is monitored by highly trained IT security team. We guarantee there is no privacy breach.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-thumbs-up"></i></span>
                        	<h3>Best Travel Agents</h3>
                            <p>Our customer team will always be ready to assist your needs.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-bars"></i></span>
                        	<h3>Travel Guidelines</h3>
                            <p>There are numerous regulations you must follow when you visit certain countries. Please make sure you are informed.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end best-features -->
                
        
        <!--=============== TOUR OFFERS ===============-->
        <section id="tour-offers" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Tour Offers</h2>
                            <hr class="heading-line" />
                        </div><!-- end page-heading -->
                        
                         <div class="owl-carousel owl-theme owl-custom-arrow" id="owl-tour-offers">
                            
                            <div class="item">
                                <div class="main-block tour-block">
                                    <div class="main-img">
                                    	<a href="#">
                                        	<img src="/resources/travel/images/tour-1.jpg" class="img-responsive" alt="tour-img" />
                                    	</a>
                                    </div><!-- end offer-img -->
                                    
                                    <div class="offer-price-2">
                                        <ul class="list-unstyled">
                                            <li class="price">$568.00<a href="#" ><span class="arrow"><i class="fa fa-angle-right"></i></span></a></li>
                                        </ul>
                                    </div><!-- end offer-price-2 -->
                                        
                                    <div class="main-info tour-info">
                                    	<div class="main-title tour-title">
                                            <a href="#">China Temple Tour</a>
                                            <p>From: China</p>
                                            <div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star grey"></i></span>
                                            </div>
                                        </div><!-- end tour-title -->
                                    </div><!-- end tour-info -->
                                </div><!-- end tour-block -->
                            </div><!-- end item -->
                            
                            <div class="item">
                                <div class="main-block tour-block">
                                    <div class="main-img">
                                        <a href="#">
                                        	<img src="/resources/travel/images/tour-2.jpg" class="img-responsive" alt="tour-img" />
                                    	</a>
                                    </div><!-- end offer-img -->
                                    
                                    <div class="offer-price-2">
                                        <ul class="list-unstyled">
                                            <li class="price">$745.00<a href="#" ><span class="arrow"><i class="fa fa-angle-right"></i></span></a></li>
                                        </ul>
                                    </div><!-- end offer-price-2 -->
                                        
                                    <div class="main-info tour-info">
                                    	<div class="main-title tour-title">
                                            <a href="#">African Safari Tour</a>
                                            <p>From: Africa</p>
                                            <div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star grey"></i></span>
                                            </div>
                                        </div><!-- end tour-title -->
                                    </div><!-- end tour-info -->
                                </div><!-- end tour-block -->
                            </div><!-- end item -->
                            
                            <div class="item">
                                <div class="main-block tour-block">
                                    <div class="main-img">
                                        <a href="#">
                                        	<img src="/resources/travel/images/tour-3.jpg" class="img-responsive" alt="tour-img" />
                                    	</a>
                                    </div><!-- end offer-img -->
                                    
                                    <div class="offer-price-2">
                                        <ul class="list-unstyled">
                                            <li class="price">$459.00<a href="#" ><span class="arrow"><i class="fa fa-angle-right"></i></span></a></li>
                                        </ul>
                                    </div><!-- end offer-price-2 -->
                                        
                                    <div class="main-info tour-info">
                                    	<div class="main-title tour-title">
                                            <a href="#">Paris City Tour</a>
                                            <p>From: Paris</p>
                                            <div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star grey"></i></span>
                                            </div>
                                        </div><!-- end tour-title -->
                                    </div><!-- end tour-info -->
                                </div><!-- end tour-block -->
                            </div><!-- end item -->
                            
                            <div class="item">
                                <div class="main-block tour-block">
                                    <div class="main-img">
                                        <a href="#">
                                        	<img src="/resources/travel/images/tour-4.jpg" class="img-responsive" alt="tour-img" />
                                    	</a>
                                    </div><!-- end offer-img -->
                                    
                                    <div class="offer-price-2">
                                        <ul class="list-unstyled">
                                            <li class="price">$745.00<a href="#" ><span class="arrow"><i class="fa fa-angle-right"></i></span></a></li>
                                        </ul>
                                    </div><!-- end offer-price-2 -->
                                        
                                    <div class="main-info tour-info">
                                    	<div class="main-title tour-title">
                                            <a href="#">China Temple Tour</a>
                                            <p>From: China</p>
                                            <div class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star grey"></i></span>
                                            </div>
                                        </div><!-- end tour-title -->
                                    </div><!-- end tour-info -->
                                </div><!-- end tour-block -->
                            </div><!-- end item -->
                            
                        </div><!-- end owl-tour-offers -->
                        
                        <div class="view-all text-center">
                        	<a href="#" class="btn btn-orange">View All</a>
                        </div><!-- end view-all -->
                    </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end tour-offers -->
                     
        
      
                           
        
        <!--==================== VIDEO BANNER ===================-->
        <section id="video-banner" class="banner-padding back-size"> 
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2>Take a Video Tour</h2>
                        <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                        
                        <a href="https://www.youtube.com/watch?v=fZ-Sqixm_6s" class="popup-youtube" id="play-button"><span><i class="fa fa-play"></i></span></a>
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end video-banner -->
       
        <!--================ LATEST BLOG ==============-->
        <section id="latest-blog" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Our Latest Blogs</h2>
                            <hr class="heading-line" />
                        </div>
                        
                        <div class="row">
                        	<!-- 여행 블로그 1 시작 -->
                             <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                    	<a href="https://maptia.com/">
                                        	<img src="/resources/travel/images/latest-blog-1.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="https://maptia.com/">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="#">Travel Insuranve Benefits</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                            </div><!-- end columns -->
                        	<!-- 여행 블로그 2 시작-->
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                        <a href="http://roadsandkingdoms.com/">
                                        	<img src="/resources/travel/images/latest-blog-2.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="#">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="http://roadsandkingdoms.com/">Travel Guideline Agents</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                             </div><!-- end columns -->
                             <!-- 여행 블로그 3시작 -->
                             <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                        <a href="http://www.whileoutriding.com/">
                                        	<img src="/resources/travel/images/latest-blog-3.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="#">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="#">Travel Guideline Agents</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                             </div><!-- end columns -->
             
                        </div><!-- end row -->
                        
                        <div class="view-all text-center">
                        	<a href="#" class="btn btn-orange">View All</a>
                        </div><!-- end view-all -->  
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end latest-blog -->         
          
     <!--===== INNERPAGE-WRAPPER ====-->
        <section class="innerpage-wrapper">
        	<div id="contact-us-2">

                <div class="map">
                    <iframe src=		"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6509729.487836256!2d-123.77686152799836!3d37.1864783963941!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb9fe5f285e3d%3A0x8b5109a227086f55!2sCalifornia!5e0!3m2!1sen!2s!4v1490695907554" allowfullscreen></iframe>
                </div><!-- end map -->
        
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12">
                            
                            <div class="row">
                            	<div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">  
                                    	<span class="border-shape-top"></span>                       
 						        		<span><i class="fa fa-map-marker"></i></span>
                                        <h4>Find us at</h4>
                                        <p>166 Seonburo, South Korea</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">   
                                    	<span class="border-shape-top"></span>                      
 						        		<span><i class="fa fa-envelope"></i></span>
                                        <h4>Email us at</h4>
                                        <p>startrvels@gmail.com</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">          
                                    	<span class="border-shape-top"></span>               
 						        		<span><i class="fa fa-phone"></i></span>
                                        <h4>Call us at</h4>
                                        <p>+82 10 7473 2046</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                            </div><!-- end row -->
                            
                            <div id="contact-form-2" class="innerpage-section-padding">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-lg-10 col-lg-offset-1">
                                        <div class="page-heading">
                                            <h2>Contact Us</h2>
                                            <hr class="heading-line" />
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 contact-form-2-text">
                                                <p><strong>Customer Support:</strong>Thank you for using Star travel! Please complete the form, 
                                                so we can provide quick and efficient service. If this is an urgent matter please contact customer support.
                                                </p>
                                                <ul class="social-links list-inline list-unstyled">
                                                    <li><a href="#"><span><i class="fa fa-facebook"></i></span></a></li>
                                                    <li><a href="#"><span><i class="fa fa-twitter"></i></span></a></li>
                                                    <li><a href="#"><span><i class="fa fa-google-plus"></i></span></a></li>
                                                    <li><a href="#"><span><i class="fa fa-pinterest-p"></i></span></a></li>
                                                    <li><a href="#"><span><i class="fa fa-instagram"></i></span></a></li>
                                                </ul>
                                            
                                            </div>
                                            
                                            <div class="col-xs-12 col-sm-6">
                                            
                                                <form>
                                                    
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-6">
                                                            <div class="form-group">
                                                                 <input type="text" class="form-control" placeholder="Name"  required/>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-xs-12 col-sm-6">
                                                            <div class="form-group">
                                                                 <input type="email" class="form-control" placeholder="Email"  required/>
                                                            </div>
                                                        </div>
                                                    
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                         <input type="text" class="form-control" placeholder="Subject"  required/>
                                                    </div>
                    
                                                    <div class="form-group">
                                                        <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
                                                    </div>
                                                    
                                                    <div class="text-center">
                                                        <button class="btn btn-orange">Send</button>
                                                    </div>
                                                </form>
                                            
                                            </div>
                                            
                                        </div>
                                        
                                    </div>
								</div>
                            </div>
                        </div><!-- end columns -->
                    </div><!-- end row -->
                </div><!-- end container -->   
            </div><!-- end contact-us -->
        </section><!-- end innerpage-wrapper -->

<jsp:include page="include/footer.jsp"></jsp:include>   
    </body>
</html>