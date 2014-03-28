<%@ include file="/WEB-INF/jsp/header.jsp" %>
			
	<style>
		.panel-title1{
			height: 5px;
		}
	</style>			
	<div class="main">
		
		<div class='row' >					
			<div class="col-lg-4">
				<c:set var="tableId"  value="t1"/>
				<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
			</div>
			<div class="col-lg-4 ">
			<c:set var="tableId"  value="t2"/>
				<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
			</div>
			<div class="col-lg-4 ">
			<c:set var="tableId"  value="t3"/>
				<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
			</div>
		</div>
		
		<div class='row' style="margin-bottom: 0px" >
			<div class="col-lg-4">
			<c:set var="tableId"  value="t8"/>
			<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
			</div>			
		</div>		
		
		<div class='row' style="margin-top: 0px" >
			<div class="col-lg-7 border"  >
				<div class="row no-margin">
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t9"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t15"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t12"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
				</div>
				<div class="row no-margin">
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t10"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t16"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t13"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
				</div>
				<div class="row no-margin">
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t11"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t17"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
					<div class = "col-lg-4 no-margin">
					<c:set var="tableId"  value="t14"/>
					<%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %>
					</div>
				</div>
			</div>
			<div class="col-lg-5" >
				<div class="row no-margin">
				<c:set var="tableId"  value="t6"/>
					<div class="col-lg-6"><%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %></div>
				<c:set var="tableId"  value="t7"/>
					<div class="col-lg-6"><%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %></div>					
				</div>
				<div class="row no-margin">
				<c:set var="tableId"  value="t4"/>
					<div class="col-lg-6"><%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %></div>
					<c:set var="tableId"  value="t5"/>
					<div class="col-lg-6"><%@ include file="/WEB-INF/jsp/dashboard/simpleTable.jsp" %></div>
				</div>
			</div>
						
		</div>		
						
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
