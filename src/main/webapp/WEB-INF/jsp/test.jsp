
<!DOCTYPE html>
<html lang="en">
    <head>		
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />       	
		<script type="text/javascript" src="/resources/js/modernizr.custom.79639.js"></script> 
		<noscript><link rel="stylesheet" type="text/css" href="/resources/css/noJS.css" /></noscript>
    </head>
    <body>
        <div class="container">
		<section class="main">
				<div class="wrapper-demo">
					<div id="dd" class="wrapper-dropdown-3" tabindex="1" style="width: 400px">
						<span>Transport</span>
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
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">

			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			$(function() {

				var dd = new DropDown( $('#dd') );

				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-2').removeClass('active');
				});

			});

		</script>
    </body>
</html>
