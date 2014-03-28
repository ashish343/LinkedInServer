
<!DOCTYPE html>
<html lang="en">
    <head>		
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.min.css" />       	
		<script type="text/javascript" src="/resources/js/modernizr.custom.79639.js"></script>
		 <%@ include file="/WEB-INF/jsp/common.jsp" %>
		<noscript><link rel="stylesheet" type="text/css" href="/resources/css/noJS.css" /></noscript>
		<style type="text/css">
		.time{
			color: graytext;
		}</style>
    </head>
    
    <body>
        <div class="container">
		<section class="main">
				<div class="wrapper-demo">
					<div id="dd" class="wrapper-dropdown-3" tabindex="1" style="width: 400px">
						<div class='row' >
						<div class='span2'>Transport</div>
						<div class="span2 time">7:30 PM</div>
						</div>
						<ul class="dropdown">
							<li><a href="#"><i class="icon-envelope icon-large"></i>Classic mail</a></li>
							<li><a href="#"><i class="icon-truck icon-large"></i>UPS Delivery</a></li>
							<li><a href="#"><i class="icon-plane icon-large"></i>Private jet</a></li>
						</ul>
					</div>
				</div>
			</section>			
		</div>
		<!-- jQuery if needed -->
		<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jQuery/1.8.2/jQuery.min.js"></script> -->
		<script type="text/javascript">
		 P.when('jQuery').execute(function($){
			 abc(this.$);
			 });
		 
			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						jQuery(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			
			var abc = function($) {

				var dd = new DropDown( $('#dd') );

				$(document).click(function() {					
					$('.wrapper-dropdown-2').removeClass('active');
				});

			};

		</script>
    </body>
</html>
