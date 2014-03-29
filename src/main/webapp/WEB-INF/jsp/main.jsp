<%@ include file="/WEB-INF/jsp/header.jsp" %>
			
		<link rel="stylesheet" type="text/css" href="/resources/css/demo1.css" />
		<link rel="stylesheet" type="text/css" href="/resources/css/component1.css" />
		
	<style>
		.panel-title1{
			height: 5px;
		}
		.hidden {
		    display:none;
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
						<li><a href="#section-3" class="icon-food"><span>Table of 8</span></a></li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">
					<div class="row">
						<div class="col-lg-6">
							<table class="available table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td class="table1">Table 1<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table2">Table 2<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table3">Table 3<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table4">Table 3<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table5">Table 5<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table6">Table 6<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						<table class="booked table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr>
								<td class='hidden table1 booked'>Table 1
								    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree1"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree1" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
			<!-- 				      <div class="panel-body">
							        <span class="glyphicon glyphicon-time"> Coming at 7.30							        
							      </div> -->							      
							    
								
								</td></tr>
								<tr>
                                <td class='hidden table2 booked'>Table 2
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree2"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table3 booked'>Table 3
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree3"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree3" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table4 booked'>Table 4
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree4"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree4" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table5 booked'>Table 5
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree5"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree5" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table6 booked'>Table 6
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree6"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
							</table>
						</div>
						
					</div>
						
					</section>
					<section id="section-2">
						<div class="row">
						<div class="col-lg-6">
							<table class="available table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td class="table7">Table 7<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table8">Table 8<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table9">Table 9<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table10">Table 10<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table11">Table 11<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table12">Table 12<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						    <table class="booked table table-striped table-hover table-bordered">
							    <tr><th>Booked Tables</th></tr>
							    <tr>
                                <td class='hidden table7 booked'>Table 7
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree7"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree7" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table8 booked'>Table 8
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree8"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree8" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table9 booked'>Table 9
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree9"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree9" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table10 booked'>Table 10
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree10"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree10" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table11 booked'>Table 11
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree11"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree11" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table12 booked'>Table 12
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree12"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree12" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
						    </table>
						</div>
						
					</div>
					</section>
					<section id="section-3">
						<div class="row">
						<div class="col-lg-6">
							<table class="available table table-striped table-hover table-bordered">
								<tr><th>Available Tables</th></tr>
								<tr><td class="table13">Table 13<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table14">Table 14<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table15">Table 15<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table16">Table 16<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
								<tr><td class="table17">Table 17<div style="float: right;"><span class="glyphicon glyphicon-plus" ></span></div></td></tr>
							</table>
						</div>
						<div class="col-lg-6">
						    <table class="booked table table-striped table-hover table-bordered">
								<tr><th>Booked Tables</th></tr>
								<tr>
                                <td class='hidden table13 booked'>Table 13
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree13"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree13" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table14 booked'>Table 14
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree14"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree14" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table15 booked'>Table 15
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree15"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree15" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table16 booked'>Table 16
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree16"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree16" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default send-message" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
                                <tr>
                                <td class='hidden table17 booked'>Table 17
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree17"><span class="name-time glyphicon glyphicon-time"></span></a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree17" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div style="padding-bottom:20px;">
                                                <span class="hidden booking-id"></span>
                                                <span class="hidden booking-id"></span>
                                                <span class="label label-default">Contact Info:</span>
                                                <span class="contact"></span>
                                                </div>
                                                <div class="input-group">
                                                    <input type="text" class="form-control">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Send Message</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </div>
                                    </div>
            <!--                      <div class="panel-body">
                                    <span class="glyphicon glyphicon-time"> Coming at 7.30                                  
                                  </div> -->                                  
                                
                                
                                </td></tr>
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
            attachEvent(this.$);
        });

        var attachEvent = function($) {
        	 $('.send-message').click(function() {
            	 var bookingId = $(this).parents('.panel-body').find('.booking-id').html();
            	 var data = $(this).parents('.input-group').find('.form-control').val();
        		 var request = $.ajax({
                     url: "/rest?action=message&bookingId=" + bookingId + "&data=" + data,
                     type: "GET",
                 });
             });
        }

        P.when('jQuery').execute(function($){
        	loadJS('/resources/js/favicon.js', function() {P.register('favicon');});
        	loadJS('/resources/js/pusher.min.js', function() {P.register('pusher');});
        });

        P.when('jQuery', 'pusher').execute(function($){
            myPusherFunc(this.$);
        });

        var d; 
        
        var myPusherFunc = function($) {
            Pusher.log = function(message) {
                if (window.console && window.console.log) {
                    window.console.log(message);
                }
            };

            var pusher = new Pusher('1f7298f8e64c81a0d7de');
            var channel = pusher.subscribe('R1');
            channel.bind('notify_table', function(data) {
               d=data;
               $('.available .' + data.tableId).addClass('hidden');
               $('.booked .' + data.tableId).removeClass('hidden');
               $('.booked .' + data.tableId).find('.name-time').html(data.name +" @ "  + msToTime(data.time));
               $('.booked .' + data.tableId).find('.contact').html(data.phoneNo);
               $('.booked .' + data.tableId).find('.booking-id').html(data.bookingId);
               //alert(data);
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
        function msToTime(ms){
            var secs = Math.floor(ms / 1000);
            var msleft = ms % 1000;
            var hours = Math.floor(secs / (60 * 60));
            var divisor_for_minutes = secs % (60 * 60);
            var minutes = Math.floor(divisor_for_minutes / 60);
            var divisor_for_seconds = divisor_for_minutes % 60;
            var seconds = Math.ceil(divisor_for_seconds);
            return hours + ":" + minutes; 
        }
		</script>
	</body>
</html>
