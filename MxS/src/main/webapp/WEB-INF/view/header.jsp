<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	

	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	 
	
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/boothead.css">
	
	<link href="css/main.css" rel="stylesheet" type="text/css">
	

<link href="css/header.css" rel="stylesheet" type="text/css">


	<!-- End demo purposes only -->


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<!-- header Start -->
	<header role="banner" id="fh5co-header">
			<div class="container">
			 <nav class="navbar navbar-default">
			 
			 <div class="navbar-header">
		        	<!-- Mobile Toggle Menu Button -->
					<a href="index" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		          	<a class="navbar-brand" href="index">MXS</a> 
		        </div>
		        
		        
			<!-- 로그임 Start -->
<div class="row row1">
            <ul class="largenav pull-right">
                <li class="upper-links"><a class="links" href="login">로그인</a></li>
                <li class="upper-links"><a class="links" href="https://campusbox.org/">회원가입</a></li>
                <li class="upper-links"><a class="links" href="http://clashhacks.in/">My MXS</a></li>
                <li class="upper-links"><a class="links" href="customer_service">고객센터</a></li>
                <li class="upper-links">
                    <a class="links" href="http://clashhacks.in/">
                        <svg class="" width="16px" height="12px" style="overflow: visible;">
                            <path d="M8.037 17.546c1.487 0 2.417-.93 2.417-2.417H5.62c0 1.486.93 2.415 2.417 2.415m5.315-6.463v-2.97h-.005c-.044-3.266-1.67-5.46-4.337-5.98v-.81C9.01.622 8.436.05 7.735.05 7.033.05 6.46.624 6.46 1.325v.808c-2.667.52-4.294 2.716-4.338 5.98h-.005v2.972l-1.843 1.42v1.376h14.92v-1.375l-1.842-1.42z" fill="#fff"></path>
                        </svg>
                    </a>
                </li>
                <li class="upper-links dropdown"><a class="links" href="http://clashhacks.in/">Dropdown</a>
                    <ul class="dropdown-menu">
                        <li class="profile-li"><a class="profile-links" href="http://yazilife.com/">로그인</a></li>
                        <li class="profile-li"><a class="profile-links" href="http://hacksociety.tech/">회원가입</a></li>
                        <li class="profile-li"><a class="profile-links" href="http://clashhacks.in/">My MXS</a></li>
                        <li class="profile-li"><a class="profile-links" href="http://clashhacks.in/">고객센터</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        
        	<!-- 로그임 end -->
        
        			
			
				<div class="row">
			   
		        
		        
		        <div id="navbar" class="navbar-collapse collapse"> 
		          <ul class="nav navbar-nav navbar-left">
		          	 <li class="active"><a href="index" data-nav-section="home"><span>홈</span></a></li>
		            <li><a href="MovieChartPage" data-nav-section=""><span>영화</span></a></li>
		            <li><a href="moviebook" data-nav-section=""><span>빠른예매</span></a></li>
		            <li><a href="" data-nav-section=""><span>극장</span></a></li>
		             <li><a href="store" data-nav-section=""><span>스토어</span></a></li>
		            <li><a href="event" data-nav-section=""><span>이벤트</span></a></li>		           
		          </ul>
		          
		
		        </div>
		          </div>
		          </nav>
		          
		          
		  
		          
		        
		  <!-- </div> -->
		  </div>
		  
		  
		  
		  
		  
		  
	</header>
	<!-- header End -->
	


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
	<script src="js/jquery.style.switcher.js"></script>
	<script>
	$(function(){
		$('#colour-variations ul').styleSwitcher({
			defaultThemeId: 'theme-switch',
			hasPreview: false,
			cookie: {
	          	expires: 30,
	          	isManagingLoad: true
	      	}
		});	
		$('.option-toggle').click(function() {
			$('#colour-variations').toggleClass('sleep');
		});
	});
	
	$(document).ready(function(){
		$(".lnb ul.smenu").hide();
		$(".lnb ul.menu li").click(function(){
			$("ul",this).slideToggle("fast");
		});
	});
	</script>
	<!-- End demo purposes only -->

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	<script src="js/header.js"></script>
	</body>
</html>
