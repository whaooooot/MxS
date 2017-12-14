

	<!-- footer Start -->
	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="row row-bottom-padded-sm">
				<div class="col-md-12">
					<p class="copyright text-center">&copy; 2017 <a href="main.jsp">MXS</a>. All Rights Reserved. <br> Free HTML5 Template by <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> | Images by <a href="http://pexels.com/" target="_blank">Pexels</a> &amp;  <a href="http://unsplash.com/" target="_blank">Unsplash</a></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					
				</div>
			</div>
		</div>
	</footer>
	<!-- footer End -->

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

