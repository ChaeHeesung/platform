<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>

    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>Philosophy</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="/resources/css/base.css">
    <link rel="stylesheet" href="/resources/css/vendor.css">
    <link rel="stylesheet" href="/resources/css/main.css">

    <!-- script
    ================================================== -->
    <script src="/resources/js/modernizr.js"></script>
    <script src="/resources/js/pace.min.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="shortcut icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">

</head>
<script type="text/javascript">

	function logout(){
		alert('로그아웃');
		console.log(document.getElementbyId('logoutFrm'));
		document.getElementbyId('logoutFrm')[0].submit();
	}
</script>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/plugins.js"></script>
<script src="/resources/js/main.js"></script>
<body id="top">

    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader s-pageheader--home">

        <header class="header">
            <div class="header__content row">

                <div class="header__logo">
                    <a class="logo" href="index.html">
                        <img src="/resources/images/logo.jpg" alt="Homepage">
                    </a>
                </div> <!-- end header__logo -->

                <ul class="header__social">
                    <li>
                        <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    </li>
                </ul> <!-- end header__social -->
                
               <sec:authorize access="isAuthenticated()">
					<div style="position: absolute; text-align: right; padding-left: 750px">
		                <a><sec:authentication property="principal.name"/> 님 환영합니다.</a>
		                <a href="/logout" style="padding-left: 13px; font-weight: 600">로그아웃</a>
		                <a href="" style="padding-left: 13px; font-weight: 600">FAQ</a>
		                <a href="" style="padding-left: 13px; font-weight: 600">이벤트</a>
		                <a href="" style="padding-left: 13px; font-weight: 600">캠페인</a>
	                </div>
				</sec:authorize>
				
				<sec:authorize access="isAnonymous()">
                <div style="position: absolute; text-align: right; padding-left: 850px">
	                <%@ include file="login/loginModal.jspf" %>
	                <a href="#login_form" style="padding-left: 13px; font-weight: 600">로그인</a>
	                <a href="#login_form" style="padding-left: 13px; font-weight: 600">회원가입</a>
	                <a href="" style="padding-left: 13px; font-weight: 600">FAQ</a>
	                <a href="" style="padding-left: 13px; font-weight: 600">이벤트</a>
	                <a href="" style="padding-left: 13px; font-weight: 600">캠페인</a>
                </div>
				</sec:authorize>
                
                <a class="header__search-trigger" href="#0"></a>

                <div class="header__search">

                    <form role="search" method="get" class="header__search-form" action="#">
                        <label>
                            <span class="hide-content">Search for:</span>
                            <input type="search" class="search-field" placeholder="Type Keywords" value="" name="s" title="Search for:" autocomplete="off">
                        </label>
                        <input type="submit" class="search-submit" value="Search">
                    </form>
        
                    <a href="#0" title="Close Search" class="header__overlay-close">Close</a>

                </div>  <!-- end header__search -->


                <a class="header__toggle-menu" href="#0" title="Menu"><span>Menu</span></a>

                <nav class="header__nav-wrap">

                    <h2 class="header__nav-heading h6">Site Navigation</h2>

                    <ul class="header__nav">
                        <li class="current"><a href="index.html" title="">Home</a></li>
                        <li class="has-children">
                            <a href="/travel/" title="" onclick="location.href='/travel/'">Travel</a>
                            <ul class="sub-menu">
                            <li><a href="/travel/">Reservate</a></li>
                            <li><a href="/safety/wt_main">Safety</a></li>
                            </ul>
                        </li>
                        <li class="has-children">
                            <a href="library/" title="" onclick="location.href='/library/'">Library</a>
                            <ul class="sub-menu">
                            <li><a href="/library/">Search</a></li>
                            <li><a href="/library/journal">Journal Search</a></li>
                            </ul>
                        </li>
                        <li><a href="/sports/main" title="">Baseball</a></li>
                        <li><a href="/shop/" title="">Shopping</a></li>
                        <li><a href="/dream/" title="">Rent</a></li>
                    </ul> <!-- end header__nav -->

                    <a href="#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>

                </nav> <!-- end header__nav-wrap -->

            </div> <!-- header-content -->
        </header> <!-- header -->


        <div class="pageheader-content row">
            <div class="col-full">

                <div class="featured">

                    <div class="featured__column featured__column--big">
                        <div class="entry" style="background-image:url('/resources/images/thumbs/featured/discussion.JPG');">
                            
                            <div class="entry__content">
                                <span class="entry__category"><a href="#0">Music</a></span>

                                <h1><a href="#0" title="">What Your Music Preference Says About You and Your Personality.</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="/resources/images/avatars/user-03.jpg" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">John Doe</a></li>
                                        <li>December 29, 2017</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->
                            
                        </div> <!-- end entry -->
                    </div> <!-- end featured__big -->

                    <div class="featured__column featured__column--small">

                        <div class="entry" style="background-image:url('/resources/images/thumbs/featured/buildings.JPG');">
                            
                            <div class="entry__content">
                                <span class="entry__category"><a href="#0">Management</a></span>

                                <h1><a href="#0" title="">The Pomodoro Technique Really Works.</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="/resources/images/avatars/user-03.jpg" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">John Doe</a></li>
                                        <li>December 27, 2017</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->
                          
                        </div> <!-- end entry -->

                        <div class="entry" style="background-image:url('/resources/images/thumbs/featured/featured-beetle.jpg');">

                            <div class="entry__content">
                                <span class="entry__category"><a href="#0">LifeStyle</a></span>

                                <h1><a href="#0" title="">Throwback To The Good Old Days.</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="/resources/images/avatars/user-03.jpg" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">John Doe</a></li>
                                        <li>December 21, 2017</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->

                        </div> <!-- end entry -->

                    </div> <!-- end featured__small -->
                </div> <!-- end featured -->

            </div> <!-- end col-full -->
        </div> <!-- end pageheader-content row -->

    </section> <!-- end s-pageheader -->


    <!-- s-content
    ================================================== -->
    <section class="s-content">
        
        <div class="row masonry-wrap">
            <div class="masonry">

                <div class="grid-sizer"></div>

                <article class="masonry__brick entry format-standard" data-aos="fade-up">
                        
                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/lamp-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/lamp-400.jpg 1x, /resources/images/thumbs/masonry/lamp-800.jpg 2x" alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 15, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Just a Standard Format Post.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Design</a> 
                                <a href="category.html">Photography</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-quote" data-aos="fade-up">
                        
                    <div class="entry__thumb">
                        <blockquote>
                                <p>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</p>
    
                                <cite>Dieter Rams</cite>
                        </blockquote>
                    </div>   
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">
                        
                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/tulips-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/tulips-400.jpg 1x, /resources/images/thumbs/masonry/tulips-800.jpg 2x" alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 15, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">10 Interesting Facts About Caffeine.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Health</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/cookies-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/cookies-400.jpg 1x, /resources/images/thumbs/masonry/cookies-800.jpg 2x" alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">No Sugar Oatmeal Cookies.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Cooking</a>
                                <a href="category.html">Health</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/wheel-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/wheel-400.jpg 1x, /resources/images/thumbs/masonry/wheel-800.jpg 2x" alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Visiting Theme Parks Improves Your Health.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="#">Health</a> 
                                <a href="#">Lifestyle</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-video" data-aos="fade-up">
                        
                    <div class="entry__thumb video-image">
                        <a href="https://player.vimeo.com/video/117310401?color=01aef0&title=0&byline=0&portrait=0" data-lity>
                            <img src="/resources/images/thumbs/masonry/shutterbug-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/shutterbug-400.jpg 1x, /resources/images/thumbs/masonry/shutterbug-800.jpg 2x" alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-video.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-video.html">Key Benefits Of Family Photography.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Family</a> 
                                <a href="category.html">Photography</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->


                <article class="masonry__brick entry format-gallery" data-aos="fade-up">
                        
                    <div class="entry__thumb slider">
                        <div class="slider__slides">
                            <div class="slider__slide">
                                <img src="/resources/images/thumbs/masonry/gallery/gallery-1-400.jpg" 
                                        srcset="/resources/images/thumbs/masonry/gallery/gallery-1-400.jpg 1x, /resources/images/thumbs/masonry/gallery/gallery-1-800.jpg 2x" alt=""> 
                            </div>
                            <div class="slider__slide">
                                <img src="/resources/images/thumbs/masonry/gallery/gallery-2-400.jpg" 
                                        srcset="/resources/images/thumbs/masonry/gallery/gallery-2-400.jpg 1x, /resources/images/thumbs/masonry/gallery/gallery-2-800.jpg 2x" alt=""> 
                            </div>
                            <div class="slider__slide">
                                <img src="/resources/images/thumbs/masonry/gallery/gallery-3-400.jpg" 
                                        srcset="/resources/images/thumbs/masonry/gallery/gallery-3-400.jpg 1x, /resources/images/thumbs/masonry/gallery/gallery-3-800.jpg 2x" alt="">  
                            </div>
                        </div>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-gallery.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-gallery.html">Workspace Design Trends and Ideas.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Work</a> 
                                <a href="category.html">Management</a>
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-audio" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-audio.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/guitarman-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/discussion.JPG 1x, /resources/images/thumbs/masonry/discussion.JPG 2x" alt="">
                        </a>
                        <div class="audio-wrap">
                            <audio id="player" src="/resources/media/AirReview-Landmarks-02-ChasingCorporate.mp3" width="100%" height="42" controls="controls"></audio>
                        </div>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-audio.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-audio.html">What Your Music Preference Says About You and Your Personality.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Music</a> 
                                <a href="category.html">Lifestyle</a>
                            </span>
                        </div>
                    </div>

                </article> <!-- end article -->

                <article class="masonry__brick entry format-link" data-aos="fade-up">
                    
                    <div class="entry__thumb">
                        <div class="link-wrap">
                            <p>The Only Resource You Will Need To Start a Blog Using WordPress.</p>
                            <cite>
                                <a target="_blank" href="https://colorlib.com/">https://colorlib.com</a>
                            </cite>
                        </div>
                    </div>
                    
                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/jump-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/jump-400.jpg 1x, /resources/images/thumbs/masonry/jump-800.jpg 2x" alt="">
                        </a>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Create Meaningful Family Moments.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Family</a>
                                <a href="category.html">Relationship</a>
                            </span>
                        </div>
                    </div>

                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/beetle-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/beetle-400.jpg 1x, /resources/images/thumbs/masonry/beetle-800.jpg 2x" alt="">
                        </a>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Throwback To The Good Old Days.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Lifestyle</a>
                            </span>
                        </div>
                    </div>

                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/fuji-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/fuji-400.jpg 1x, /resources/images/thumbs/masonry/fuji-800.jpg 2x" alt="">
                        </a>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Just Another  Standard Format Post.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Design</a> 
                                <a href="category.html">Photography</a>
                            </span>
                        </div>
                    </div>

                </article> <!-- end article -->

                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href="single-standard.html" class="entry__thumb-link">
                            <img src="/resources/images/thumbs/masonry/sydney-400.jpg" 
                                    srcset="/resources/images/thumbs/masonry/sydney-400.jpg 1x, /resources/images/thumbs/masonry/sydney-800.jpg 2x" alt="">
                        </a>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">December 10, 2017</a>
                            </div>
                            <h1 class="entry__title"><a href="single-standard.html">Planning Your First Trip to Sydney.</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua...
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="category.html">Travel</a> 
                                <a href="category.html">Vacation</a>
                            </span>
                        </div>
                    </div>

                </article> <!-- end article -->

            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->

        <div class="row">
            <div class="col-full">
                <nav class="pgn">
                    <ul>
                        <li><a class="pgn__prev" href="#0">Prev</a></li>
                        <li><a class="pgn__num" href="#0">1</a></li>
                        <li><span class="pgn__num current">2</span></li>
                        <li><a class="pgn__num" href="#0">3</a></li>
                        <li><a class="pgn__num" href="#0">4</a></li>
                        <li><a class="pgn__num" href="#0">5</a></li>
                        <li><span class="pgn__num dots">â¦</span></li>
                        <li><a class="pgn__num" href="#0">8</a></li>
                        <li><a class="pgn__next" href="#0">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </section> <!-- s-content -->


    <!-- s-extra
    ================================================== -->
    <section class="s-extra">

        <div class="row top">

            <div class="col-eight md-six tab-full popular">
                <h3>Popular Posts</h3>

                <div class="block-1-2 block-m-full popular__posts">
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/wheel-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">Visiting Theme Parks Improves Your Health.</a></h5>
                        <section class="popular__meta">
                                <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-19">Dec 19, 2017</time></span>
                        </section>
                    </article>
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/shutterbug-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">Key Benefits Of Family Photography.</a></h5>
                        <section class="popular__meta">
                            <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-18">Dec 18, 2017</time></span>
                        </section>
                    </article>
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/cookies-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">Absolutely No Sugar Oatmeal Cookies.</a></h5>
                        <section class="popular__meta">
                                <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-16">Dec 16, 2017</time></span>
                        </section>
                    </article>
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/beetle-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">Throwback To The Good Old Days.</a></h5>
                        <section class="popular__meta">
                            <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-16">Dec 16, 2017</time></span>
                        </section>
                    </article>
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/tulips-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">10 Interesting Facts About Caffeine.</a></h5>
                        <section class="popular__meta">
                            <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-14">Dec 14, 2017</time></span>
                        </section>
                    </article>
                    <article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="/resources/images/thumbs/small/salad-150.jpg" alt="">
                        </a>
                        <h5><a href="#0">Healthy Mediterranean Salad Recipes</a></h5>
                        <section class="popular__meta">
                            <span class="popular__author"><span>By</span> <a href="#0"> John Doe</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-12">Dec 12, 2017</time></span>
                        </section>
                    </article>
                </div> <!-- end popular_posts -->
            </div> <!-- end popular -->
            
            <div class="col-four md-six tab-full about">
                <h3>About Philosophy</h3>

                <p>
                Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Pellentesque in ipsum id orci porta dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada.
                </p>

                <ul class="about__social">
                    <li>
                        <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    </li>
                </ul> <!-- end header__social -->
            </div> <!-- end about -->

        </div> <!-- end row -->

        <div class="row bottom tags-wrap">
            <div class="col-full tags">
                <h3>Tags</h3>
<!-- ëì¤ì íê·¸ ë¨ì´ ìì íê¸° -->
                <div class="tagcloud">
                    <a href="#0">Salad</a>
                    <a href="#0">Recipe</a>
                    <a href="#0">Places</a>
                    <a href="#0">Tips</a>
                    <a href="#0">Friends</a>
                    <a href="#0">Travel</a>
                    <a href="#0">Exercise</a>
                    <a href="#0">Reading</a>
                    <a href="#0">Running</a>
                    <a href="#0">Self-Help</a>
                    <a href="#0">Vacation</a>
                </div> <!-- end tagcloud -->
            </div> <!-- end tags -->
        </div> <!-- end tags-wrap -->

    </section> <!-- end s-extra -->


    <!-- s-footer
    ================================================== -->
    <footer class="s-footer">

        <div class="s-footer__main">
            <div class="row">
                
                <div class="col-two md-four mob-full s-footer__sitelinks">
                        
                    <h4>Quick Links</h4>

                    <ul class="s-footer__linklist">
                        <li><a href="#0">Home</a></li>
                        <li><a href="#0">Blog</a></li>
                        <li><a href="#0">Styles</a></li>
                        <li><a href="#0">About</a></li>
                        <li><a href="#0">Contact</a></li>
                        <li><a href="#0">Privacy Policy</a></li>
                    </ul>

                </div> <!-- end s-footer__sitelinks -->

                <div class="col-two md-four mob-full s-footer__archives">
                        
                    

                   
                </div> <!-- end s-footer__archives -->

                <div class="col-two md-four mob-full s-footer__social">
                        
                   

                </div> <!-- end s-footer__social -->

                <div class="col-five md-full end s-footer__subscribe">
                        
                    <h4>Our Newsletter</h4>

                    <p>Sit vel delectus amet officiis repudiandae est voluptatem. Tempora maxime provident nisi et fuga et enim exercitationem ipsam. Culpa consequatur occaecati.</p>

                    <div class="subscribe-form">
                        <form id="mc-form" class="group" novalidate="true">

                            <input type="email" value="" name="EMAIL" class="email" id="mc-email" placeholder="Email Address" required="">
                
                            <input type="submit" name="subscribe" value="Send">
                
                            <label for="mc-email" class="subscribe-message"></label>
                
                        </form>
                    </div>

                </div> <!-- end s-footer__subscribe -->

            </div>
        </div> <!-- end s-footer__main -->

        <div class="s-footer__bottom">
            <div class="row">
                <div class="col-full">
                    <div class="s-footer__copyright">
                        <span>Â© Copyright Philosophy 2018</span> 
                        <span>Site Template by <a href="https://colorlib.com/">Colorlib</a></span>
                    </div>

                    <div class="go-top">
                        <a class="smoothscroll" title="Back to Top" href="#top"></a>
                    </div>
                </div>
            </div>
        </div> <!-- end s-footer__bottom -->

    </footer> <!-- end s-footer -->


    <!-- preloader
    ================================================== -->
    <div id="preloader">
        <div id="loader">
            <div class="line-scale">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>


    <!-- Java Script
    ================================================== -->


</body>

</html>