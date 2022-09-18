<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<script type="text/javascript">
	function yesScopeStmt() {
		if (confirm("승인하시겠습니까?")) {
			$("form").attr("action", "${path}/yesScopeStmt.do")
			$("form").submit();
		}
	}
	function NoScopeStmt() {
		if (confirm("반려하시겠습니까?")) {
			$("form").attr("action", "${path}/noScopeStmt.do")
			$("form").submit();
		}
	}
	$(document).ready(function(){
		<%-- 
		
		--%>


	});
</script>
<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="${path}/Dashio/index.html" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="${path}/Dashio/index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">4</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="${path}/Dashio/#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="${path}/Dashio/index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="${path}/Dashio/img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="${path}/Dashio/img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="${path}/Dashio/img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="photo"><img alt="avatar" src="${path}/Dashio/img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="${path}/Dashio/index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${path}/Dashio/login.html">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="${path}/Dashio/profile.html"><img src="${path}/Dashio/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a href="${path}/Dashio/index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/general.html">General</a></li>
              <li><a href="${path}/Dashio/buttons.html">Buttons</a></li>
              <li><a href="${path}/Dashio/panels.html">Panels</a></li>
              <li><a href="${path}/Dashio/font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/grids.html">Grids</a></li>
              <li><a href="${path}/Dashio/calendar.html">Calendar</a></li>
              <li><a href="${path}/Dashio/gallery.html">Gallery</a></li>
              <li><a href="${path}/Dashio/todo_list.html">Todo List</a></li>
              <li><a href="${path}/Dashio/dropzone.html">Dropzone File Upload</a></li>
              <li><a href="${path}/Dashio/inline_editor.html">Inline Editor</a></li>
              <li><a href="${path}/Dashio/file_upload.html">Multiple File Upload</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="${path}/Dashio/javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/blank.html">Blank Page</a></li>
              <li><a href="${path}/Dashio/login.html">Login</a></li>
              <li><a href="${path}/Dashio/lock_screen.html">Lock Screen</a></li>
              <li><a href="${path}/Dashio/profile.html">Profile</a></li>
              <li class="active"><a href="${path}/Dashio/invoice.html">Invoice</a></li>
              <li><a href="${path}/Dashio/pricing_table.html">Pricing Table</a></li>
              <li><a href="${path}/Dashio/faq.html">FAQ</a></li>
              <li><a href="${path}/Dashio/404.html">404 Error</a></li>
              <li><a href="${path}/Dashio/500.html">500 Error</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/form_component.html">Form Components</a></li>
              <li><a href="${path}/Dashio/advanced_form_components.html">Advanced Components</a></li>
              <li><a href="${path}/Dashio/form_validation.html">Form Validation</a></li>
              <li><a href="${path}/Dashio/contactform.html">Contact Form</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/basic_table.html">Basic Table</a></li>
              <li><a href="${path}/Dashio/responsive_table.html">Responsive Table</a></li>
              <li><a href="${path}/Dashio/advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
          <li>
            <a href="${path}/Dashio/inbox.html">
              <i class="fa fa-envelope"></i>
              <span>Mail </span>
              <span class="label label-theme pull-right mail-info">2</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Charts</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/morris.html">Morris</a></li>
              <li><a href="${path}/Dashio/chartjs.html">Chartjs</a></li>
              <li><a href="${path}/Dashio/flot_chart.html">Flot Charts</a></li>
              <li><a href="${path}/Dashio/xchart.html">xChart</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/Dashio/javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="${path}/Dashio/lobby.html">Lobby</a></li>
              <li><a href="${path}/Dashio/chat_room.html"> Chat Room</a></li>
            </ul>
          </li>
          <li>
            <a href="${path}/Dashio/google_maps.html">
              <i class="fa fa-map-marker"></i>
              <span>Google Maps </span>
              </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="col-lg-10 col-lg-offset-1">
              <div class="invoice-body">
                <div class="pull-left">
                  	<h1>${prjInfo.prjName}</h1>
                </div>
                <!-- /pull-left -->
                <div class="pull-right">
                  	<h1>${scInfo.isApproval}</h1>
                </div>
                <!-- /pull-right -->
                <div class="clearfix"></div>
                <br>
                <br>
                <br>
                <div class="row">
                  <div class="col-md-9">        
                    <h4>${PMInfo.ename}</h4>
                    <address>
                  	<strong>${PMInfo.dname}</strong><br>
                  	${PMInfo.loc}<br>
                  	대한민국<br>
                    <abbr>P:</abbr> ${PMInfo.phoneNum}
                  </address>         
                  </div>
                  <!-- /col-md-9 -->
                  <div class="col-md-3">
                    <br>
                    <div>
		                <div class="pull-left"> INVOICE NO : </div>
	                      <div class="pull-right"> ${scInfo.scpStmtNo} </div>
	                      <div class="clearfix"></div>
	                    </div>
	                    <div>
	                      <!-- /col-md-3 -->
	                      <div class="pull-left"> INVOICE DATE : </div>
	                      <div class="pull-right"> <fmt:formatDate value="${scInfo.scpStmtDate}"/> </div>
	                      <div class="clearfix"></div>
	                    </div>
                      
                    <!-- /row -->
                    <br>
                    <div class="well well-small green">
                      <div class="pull-left"> Total Due : </div>
	                  	<div class="pull-right">${prjInfo.prjFinance}</div>
                      <div class="clearfix"></div>
                    </div> 
                  </div>
                  <!-- /invoice-body -->
                </div>
                <!-- /col-lg-10 -->
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:60px" class="text-center">#</th>
                      <th class="text-left">로드맵</th>
                      <th class="col-lg-1">시작일</th>
                      <th class="col-lg-1">종료일</th>
                      <th class="text-right col-lg-1">TOTAL</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach var="rm" items="${rmList}" varStatus="status">         
	                  <tr>
	                    <td class="text-center">${status.count}</td>
	                    <td>${rm.rmName}</td>
	                    <td name="b"><fmt:formatDate value="${rm.rmStartDate}"/></td>
	                    <td name="a"><fmt:formatDate value="${rm.rmEndDate}"/></td>
	                    <td class="text-right">${rm.rmCost}</td>
	                  </tr>
                  	</c:forEach>
	                    <tr>
	                      <td colspan="2" rowspan="6">
	                      <h4>${scInfo.adtnlCntntTitle}</h4>
	                      <p>${scInfo.adtnlCntnt}</p>              
	                      <td colspan="2" class="text-right"><strong>인건비 총합</strong></td>
	                      <td class="text-right">${hcostsum.hsal/30*hcostsum.prjPeriod}</td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" class="text-right"><strong>설비 비용</strong></td>
	                      <td class="text-right">${prjInfo.eqpmnCost}</td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" class="text-right"><strong>자재 비용</strong></td>
	                      <td class="text-right">${prjInfo.materialCost}</td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" class="text-right"><strong>서비스 비용</strong></td>
	                      <td class="text-right">${prjInfo.serviceCost}</td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" class="text-right"><strong>간접 비용</strong></td>
	                      <td class="text-right">${prjInfo.indirectCost}</td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" class="text-right"><strong>예비비</strong></td>
	                      <td class="text-right">${prjInfo.rsrvExpns}</td>
	                    </tr>	                	
                    <tr>
                      <td></td>
                      <td></td>
                      <td colspan="2" class="text-right no-border">
                        <div class="well well-small green"><strong>Total</strong></div>
                      </td>
                      <td class="text-right"><strong>${prjInfo.prjFinance}</strong></td>
                    </tr>
                  </tbody>
                </table>
                <br>
                <br>
              </div>
              <!--/col-lg-12 mt -->
              <form>
              	  <input type="hidden" name="scpStmtNo" value="${scInfo.scpStmtNo}">
                <div class="form-group" align="center">
                  <button id="yes" class="btn btn-success" type="button"
                  		style="width:100px;" onclick="yesScopeStmt()">승인</button>
                  <button id="no" class="btn btn-danger" type="button"
                  		style="width:100px;" onclick="NoScopeStmt()">반려</button>
                </div>
             	 <input type="hidden" name="prjno" value="${scInfo.prjNo}">            
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="${path}/Dashio/invoice.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>

<script type="text/javascript">
	var proc = "${proc}"
	if (proc=="upt"){
		alert("승인 완료")
		var prjno = "${param.prjno}"
		location.href="${path}/scope.do?prjno="+prjno;
	}
	if (proc=="del"){
		alert("반려 완료")
		var prjno = "${param.prjno}"
		location.href="${path}/scope.do?prjno="+prjno;
	}
</script>
</body>

</html>
