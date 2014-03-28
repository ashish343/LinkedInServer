<%@ include file="/WEB-INF/jsp/header.jsp" %>
			
		<link rel="stylesheet" type="text/css" href="/resources/css/demo1.css" />
		<link rel="stylesheet" type="text/css" href="/resources/css/component1.css" />
		
	<style>
		.panel-title1{
			height: 5px;
		}
	</style>	
	<script src="/resources/js/cbpFWTabs.js"></script>
		<script>
		 P.when('jQuery').execute(function($) {
			 new CBPFWTabs( document.getElementById( 'tabs' ) );
	       });
			
		</script>		
	<div class="main">
	
	
	<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-shop"><span>Table of 2</span></a></li>
						<li><a href="#section-2" class="icon-cup"><span>Table of 4</span></a></li>
						<li><a href="#section-3" class="icon-food"><span>Table of 6</span></a></li>
						<li><a href="#section-4" class="icon-lab"><span>Table of 12</span></a></li>						
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">
					<div class="row">
						<div class="col-lg-6">
							<table class="table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td>Table 12<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 14<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 2<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						<table class="table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr><td class='booked'>								
			          				 Table 2			          			        			
			        			
							      <div class="panel-body">
							        <span class="glyphicon glyphicon-time"> Coming at 7.30							        
							      </div>							      
							    
								
								</td></tr>
								<tr><td class= 'booked'>Table 15</td></tr>
								<tr><td class= 'booked'>Table 12</td></tr>
							</table>
						</div>
						
					</div>
						
					</section>
					<section id="section-2">
						<div class="row">
						<div class="col-lg-6">
							<table class="table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td>Table 12<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 14<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 2<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						<table class="table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr><td class='booked'>								
			          				 Table 2			          			        			
			        			
							      <div class="panel-body">
							        <span class="glyphicon glyphicon-time"> Coming at 7.30							        
							      </div>							      
							    
								
								</td></tr>
								<tr><td class= 'booked'>Table 15</td></tr>
								<tr><td class= 'booked'>Table 12</td></tr>
							</table>
						</div>
						
					</div>
					</section>
					<section id="section-3">
						<div class="row">
						<div class="col-lg-6">
							<table class="table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td>Table 12<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 14<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 2<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						<table class="table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr><td class='booked'>								
			          				 Table 2			          			        			
			        			
							      <div class="panel-body">
							        <span class="glyphicon glyphicon-time"> Coming at 7.30							        
							      </div>							      
							    
								
								</td></tr>
								<tr><td class= 'booked'>Table 15</td></tr>
								<tr><td class= 'booked'>Table 12</td></tr>
							</table>
						</div>
						
					</div>
					</section>
					<section id="section-4">
						<div class="row">
						<div class="col-lg-6">
							<table class="table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td>Table 12<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 14<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td>Table 2<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						<table class="table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr><td class='booked'>								
			          				 Table 2			          			        			
			        			
							      <div class="panel-body">
							        <span class="glyphicon glyphicon-time"> Coming at 7.30							        
							      </div>							      
							    
								
								</td></tr>
								<tr><td class= 'booked'>Table 15</td></tr>
								<tr><td class= 'booked'>Table 14</td></tr>
							</table>
						</div>
						
					</div>
					</section>
					
				</div><!-- /content -->
			</div><!-- /tabs -->
			
		
			
						
	</div>	
					
		
		<script>
		var favicon;
        var faviconCount = 0;
        P.when('jQuery', 'favicon').execute(function($){
            initializeFavicon(this.$);
        });

        P.when('jQuery').execute(function($){
        	loadJS('/resources/js/favicon.js', function() {P.register('favicon');});
        	loadJS('/resources/js/pusher.min.js', function() {P.register('pusher');});
        });

        P.when('pusher').execute(function(){
            myPusherFunc();
        });
        
        var myPusherFunc = function() {
            Pusher.log = function(message) {
                if (window.console && window.console.log) {
                    window.console.log(message);
                }
            };

            var pusher = new Pusher('1f7298f8e64c81a0d7de');
            var channel = pusher.subscribe('R1');
            channel.bind('notify_table', function(data) {
               alert(data);
            });
        }
        
        
        var initializeFavicon = function($) {
        	favicon=new Favico({
                bgColor : '#ff0000',
                textColor : '#ff0',
                type: 'rectangle',
                animation:'fade'
            });
        	favicon.badge(2);
        }
		</script>
	</body>
</html>
