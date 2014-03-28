<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
    <head>		
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.min.css" />       	
		<script type="text/javascript" src="/resources/js/modernizr.custom.79639.js"></script>
		<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
		 <%@ include file="/WEB-INF/jsp/common.jsp" %>
		<noscript><link rel="stylesheet" type="text/css" href="/resources/css/noJS.css" /></noscript>
		<style type="text/css">
		.time{
			spanor: graytext;
		}
		.red{
		background-color: red; 		
		}
		
		.green{
		background-color: green; 		
		}
		.row{
		margin: 10px;
		}
		.no-margin{
		margin: 0px;
		padding-left: 0px;
		padding-right: 30px;
		}
		.border{
		border-style: solid;
		border-color: grey
		}
		
		</style>
		
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
    </head>
    
    <body>
       
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
		
		
    </body>
</html>
