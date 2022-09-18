<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>AEAPPMS</title>
<style>
#main-button {
	display: inline;
	position: relative;
	background-color: none;
	width: 100%;
	height: 140px;
}

.content-panel {
	position: relative;
	width: 50%;
	margin-left: 14px;
}

#side-panel {
	height: 520px;
}

.details {
	height: 16px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Favicons -->
<link href="${path}/Dashio/img/favicon.png" rel="icon">
<link href="${path}/Dashio/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${path}/Dashio/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="${path}/Dashio/lib/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" href="${path}/lib/xchart/xcharts.css">
<!-- Custom styles for this template -->
<link href="${path}/Dashio/css/style.css" rel="stylesheet">
<link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
<script src="${path}/Dashio/lib/chart-master/Chart.js"></script>

<!-- chart js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<!--script for this page-->
	<script src="${path}/Dashio/lib/xchart/d3.v3.min.js"></script>
	<script src="${path}/Dashio/lib/xchart/xcharts.min.js"></script>
	<script src="${path}/js/chartjs.js"></script>
		<!--script for this page-->
	<script src="${path}/Dashio/lib/sparkline-chart.js"></script>
	<script src="${path}/Dashio/lib/zabuto_calendar.js"></script>
		<!-- js placed at the end of the document so the pages load faster -->
	<script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>

	<script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
	<script src="${path}/Dashio/lib/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script src="${path}/Dashio/lib/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="${path}/Dashio/lib/common-scripts.js"></script>
	<script type="text/javascript"
		src="${path}/Dashio/lib/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="${path}/Dashio/lib/gritter-conf.js"></script>
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.html" class="logo"><b>AEAP<span>PMS</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">Select Dashboard</p>
							</li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">A Whole</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Project1</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Project2</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Project4</div>
									</div>
							</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">You have 5 new messages</p>
							</li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="${path}/Dashio/img/ui-zac.jpg"></span> <span
									class="subject"> <span class="from">Zac Snider</span> <span
										class="time">Just now</span>
								</span> <span class="message"> Hi mate, how is everything? </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src=""${path}/Dashio/img/ui-divya.jpg"></span> <span
									class="subject"> <span class="from">Divya Manian</span>
										<span class="time">40 mins.</span>
								</span> <span class="message"> Hi, I need your help with this. </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="${path}/Dashio/img/ui-danro.jpg"></span> <span
									class="subject"> <span class="from">Dan Rogers</span> <span
										class="time">2 hrs.</span>
								</span> <span class="message"> Love your new Dashboard. </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="${path}/Dashio/img/ui-sherman.jpg"></span> <span
									class="subject"> <span class="from">Dj Sherman</span> <span
										class="time">4 hrs.</span>
								</span> <span class="message"> Please, answer asap. </span>
							</a></li>
							<li><a href="index.html#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-bell-o"></i> <span class="badge bg-warning">7</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>
							<li>
								<p class="yellow">You have 7 new notifications</p>
							</li>
							<li><a href="index.html#"> <span
									class="label label-danger"><i class="fa fa-bolt"></i></span>
									Server Overloaded. <span class="small italic">4 mins.</span>
							</a></li>
							<li><a href="index.html#"> <span
									class="label label-warning"><i class="fa fa-bell"></i></span>
									Memory #2 Not Responding. <span class="small italic">30
										mins.</span>
							</a></li>
							<li><a href="index.html#"> <span
									class="label label-danger"><i class="fa fa-bolt"></i></span>
									Disk Space Reached 85%. <span class="small italic">2
										hrs.</span>
							</a></li>
							<li><a href="index.html#"> <span
									class="label label-success"><i class="fa fa-plus"></i></span>
									New User Registered. <span class="small italic">3 hrs.</span>
							</a></li>
							<li><a href="index.html#">See all notifications</a></li>
						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="login.html">Logout</a></li>
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
					<p class="centered">
						<a href="profile.html"><img
							src="${path}/Dashio/img/bbibbi.jpg" class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">삐삐(14세)</h5>
					<li class="mt"><a class="active" href="index.html"> <i
							class="fa fa-dashboard"></i> <span>대쉬보드</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-desktop"></i> <span>통합프로젝트</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-calendar-o"></i> <span>일정관리</span>
					</a>
						<ul class="sub">
							<li><a href="#">submenu1</a></li>
							<li><a href="#">submenu2</a></li>
							<li><a href="#">submenu3</a></li>
							<li><a href="#">submenu4</a></li>
						</ul></li>
					<li><a href="#"> <i class="fa fa-money"></i> <span>재정관리</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-exclamation-circle"></i> <span>위험관리</span>
					</a>
						<ul class="sub">
							<li><a href="#">submenu1</a></li>
							<li><a href="#">submenu2</a></li>
							<li><a href="#">submenu3</a></li>
							<li><a href="#">submenu4</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-users"></i> <span>인적자원관리</span>
					</a>
						<ul class="sub">
							<li><a href="#">submenu1</a></li>
							<li><a href="#">submenu2</a></li>
							<li><a href="#">submenu3</a></li>
							<li><a href="#">submenu4</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-suitcase"></i> <span>품질관리</span>
					</a>
						<ul class="sub">
							<li><a href="#">검토계획조회</a></li>
							<li><a href="#">시정조치결과조회</a></li>
							<li><a href="#">검토계획등록</a></li>
							<li><a href="#">시정조치결과등록</a></li>
							<li><a href="#">기습결함등록</a></li>
						</ul></li>
					<li><a href="inbox.html"> <i class="fa fa-envelope"></i> <span>메일</span>
							<span class="label label-theme pull-right mail-info">2</span>
					</a></li>
					<li><a href="lobby.html"> <i class="fa fa-comments-o"></i>
							<span>채팅</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-edit"></i> <span>회의록</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-edit"></i> <span>회의록</span>
					</a></li>
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
				<div class="row">
					<div class="border-head">
						<h3>전체 대시보드</h3>
					</div>
					<div id="main-button" class="d-flex justify-content-around mb-4">

						<div onclick="location.href=''" class="p-5 m-3"
							style="width: 22%; height: 100px; background-color: #EE5F63;">Time
							out</div>
						<div onclick="location.href=''" class="p-5 m-3"
							style="width: 22%; height: 100px; background-color: #2D9CD1;">My
							tasks</div>
						<div onclick="location.href=''" class="p-5 m-3"
							style="width: 22%; height: 100px; background-color: #00A985;">Events
							today</div>
						<div onclick="location.href=''" class="p-5 m-3"
							style="width: 22%; height: 100px; background-color: #1564AF;">New
							post</div>
					</div>


					<div class="col-lg-9 main-chart">
						<!--CUSTOM CHART START -->
						<div class="border-head">
							<h3>> 달성률</h3>
						</div>
						<div class="custom-bar-chart">
							<ul class="y-axis">
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;100</span></li>
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;80</span></li>
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;60</span></li>
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;40</span></li>
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;20</span></li>
								<li><span> &nbsp;&nbsp;&nbsp;&nbsp;0</span></li>
							</ul>

							<div class="bar">
								<div class="title">project1</div>
								<div class="value tooltips" data-original-title="85"
									data-toggle="tooltip" data-placement="top">85%</div>
							</div>
							<div class="bar ">
								<div class="title">project2</div>
								<div class="value tooltips" data-original-title="50"
									data-toggle="tooltip" data-placement="top">50%</div>
							</div>
							<div class="bar ">
								<div class="title">project3</div>
								<div class="value tooltips" data-original-title="60"
									data-toggle="tooltip" data-placement="top">60%</div>
							</div>
							<div class="bar ">
								<div class="title">project4</div>
								<div class="value tooltips" data-original-title="45"
									data-toggle="tooltip" data-placement="top">45%</div>
							</div>
						</div>
						<!--custom chart end-->
						<div class="row mt">
							<!-- SERVER STATUS PANELS -->
							<div class="col-md-4 col-sm-4 mb">
								<div class="grey-panel pn donut-chart">
									<div class="grey-header">
										<h5>프로젝트별 품질점수</h5>
									</div>
									
									<canvas id="serverstatus01" height="120" width="120"></canvas>
									<div class="row">
										<div class="col-sm-6 col-xs-6 goleft">
											<p>
												project1<br />품질점수:
											</p>
										</div>
										<div class="col-sm-6 col-xs-6">
											<h2>70점</h2>
										</div>
									</div>
									<script>
                    var doughnutData = [{
                        value: 70,
                        color: "#FF6B6B"
                      },
                      {
                        value: 30,
                        color: "#fdfdfd"
                      }
                    ];
                    var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
                  </script>

								</div>
								<!-- /grey-panel -->
							</div>
							<!-- /col-md-4-->
							<div class="col-md-4 col-sm-4 mb">
								<!-- REVENUE PANEL -->
								<div class="green-panel pn">
									<div class="green-header">
										<h5>Project 1</h5>
									</div>

									<p class="mt">
										<b>프로젝트 목적</b><br> <br> <br> <br> <br />프로젝트
										결과물
									</p>
								</div>
							</div>

							<!-- /col-md-4 -->
							<div class="col-md-4 col-sm-4 mb">
								<h4>
									<i class="fa fa-angle-right"></i> 프로젝트별 예산
								</h4>
								<div class="panel-body">
	<canvas id="barChart" style="height: 100px;"></canvas>
	<script>
    var prjfinance = []
	var prjno = []
	$.ajax({
		url:"${path}/getPrjFinance.do",
		dataType:"json",
		success:function(data){
			var data = data.prjfinance
			$(data).each(function(idx, p){
				prjfinance.push(Number(p.prjfinance))
				prjno.push(p.prjno)
			})
			 new Chart(document.querySelector('#barChart'), {
				    type: 'bar',
				    data: {
				      labels: prjno,
				      datasets: [{
				        label: '프로젝트별 예산',
				        data: prjfinance,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 100
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

								</div>
							</div>

							<div class="col-md-4 col-sm-4 mb">
								<h4>
									<i class="fa fa-angle-right"></i> 프로젝트별 참여 사원 수
								</h4>
								<div class="panel-body">
	<canvas id="barChart" style="height: 100px;"></canvas>
	<script>
    var cnt = []
	var prjno = []
	$.ajax({
		url:"${path}/getPrjHR.do",
		dataType:"json",
		success:function(data){
			var data = data.cnt
			$(data).each(function(idx, p){
				cnt.push(Number(p.cnt))
				prjno.push(p.prjno)
			})
			 new Chart(document.querySelector('#barChart'), {
				    type: 'bar',
				    data: {
				      labels: prjno,
				      datasets: [{
				        label: '프로젝트별 진행상황',
				        data: cnt,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 100
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

								</div>
							</div>
							<div class="col-md-4 col-sm-4 mb">
								<h4>
									<i class="fa fa-angle-right"></i> 프로젝트별 진행상황
								</h4>
								<div class="panel-body">
	<!-- 전체 프로젝트 진행상황 -->
	<canvas id="barChart" style="height: 100px;"></canvas>
	<script>
    var prjrate = []
	var prjno = []
	$.ajax({
		url:"${path}/getPrjRate.do",
		dataType:"json",
		success:function(data){
			var data = data.prjrate
			$(data).each(function(idx, p){
				prjrate.push(Number(p.prjrate))
				prjno.push(p.prjno)
			})
			 new Chart(document.querySelector('#barChart'), {
				    type: 'bar',
				    data: {
				      labels: prjno,
				      datasets: [{
				        label: '프로젝트별 진행상황',
				        data: prjrate,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 100
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>
								</div>
							</div>
						</div>
					</div>

					<!-- /row -->


					<!-- /col-lg-9 END SECTION MIDDLE -->
					<!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
					<div id="side-panel" class="col-lg-3 ds ">

						<!-- TEAM MEMBERS LIST -->
						<h4 class="centered mt">TEAM MEMBERS LIST</h4>
						<!-- First Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/member1.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">남주혁</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Second Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/member2.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">강태오</a><br />
									<muted>I am Busy</muted>
								</p>
							</div>
						</div>
						<!-- Third Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/member3.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">양세종</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fourth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/member4.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">이도현</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fifth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/member5.png" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">최우식</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Sixth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="${path}/Dashio/img/bbibbi.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">삐삐</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
					</div> 

					<!-- /col-lg-3 -->
				</div>
				<!-- /row -->
				
				<canvas id="barChart" style="height: 200px;"></canvas>
			</section>
		</section>

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
				<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>


	<script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to bbibbi!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: '${path}/Dashio/img/bbibbi.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>

	<script>
    (function() {
      var data = [{
        "xScale": "ordinal",
        "comp": [],
        "main": [{
          "className": ".main.l1",
          "data": [{
            "y": 15,
            "x": "project1"
          }, {
            "y": 11,
            "x": "project2"
          }, {
            "y": 8,
            "x": "project3"
          }, {
            "y": 10,
            "x": "project4"
          }]
        }, {
          "className": ".main.l2",
          "data": [{
            "y": 29,
            "x": "project1"
          }, {
            "y": 33,
            "x": "project2"
          }, {
            "y": 13,
            "x": "project3"
          }, {
            "y": 16,
            "x": "project4"
          }]
        }, {
            "className": ".main.l3",
            "data": [{
              "y": 20,
              "x": "project1"
            }, {
              "y": 37,
              "x": "project2"
            }, {
              "y": 10,
              "x": "project3"
            }, {
              "y": 22,
              "x": "project4"
            }]
          }],
        "type": "line-dotted",
        "yScale": "linear"
      }, {
        "xScale": "ordinal",
        "comp": [],
        "main": [{
          "className": ".main.l1",
          "data": [{
            "y": 12,
            "x": "project1"
          }, {
            "y": 18,
            "x": "project2"
          }, {
            "y": 8,
            "x": "project3"
          }, {
            "y": 7,
            "x": "project4"
          }]
        }, {
          "className": ".main.l2",
          "data": [{
            "y": 29,
            "x": "project1"
          }, {
            "y": 33,
            "x": "project2"
          }, {
            "y": 13,
            "x": "project3"
          }, {
            "y": 16,
            "x": "project4"
          }]
        }, {
            "className": ".main.l3",
            "data": [{
              "y": 20,
              "x": "project1"
            }, {
              "y": 30,
              "x": "project2"
            }, {
              "y": 12,
              "x": "project3"
            }, {
              "y": 16,
              "x": "project4"
            }]
          }],
        "type": "cumulative",
        "yScale": "linear"
      }, {
        "xScale": "ordinal",
        "comp": [],
        "main": [{
          "className": ".main.l1",
          "data": [{
            "y": 12,
            "x": "project1"
          }, {
            "y": 18,
            "x": "project2"
          }, {
            "y": 8,
            "x": "project3"
          }, {
            "y": 7,
            "x": "project4"
          }]
        }, {
          "className": ".main.l2",
          "data": [{
            "y": 29,
            "x": "project1"
          }, {
            "y": 33,
            "x": "project2"
          }, {
            "y": 13,
            "x": "project3"
          }, {
            "y": 16,
            "x": "project4"
          }]
        }, {
            "className": ".main.l3",
            "data": [{
              "y": 12,
              "x": "project1"
            }, {
              "y": 38,
              "x": "project2"
            }, {
              "y": 32,
              "x": "project3"
            }, {
              "y": 24,
              "x": "project4"
            }]
          }
        ],
        "type": "bar",
        "yScale": "linear"
      }];
      var order = [0, 2],
        i = 0,
        xFormat = d3.time.format('project%'),
        chart = new xChart('line-dotted', data[order[i]], '#chart', {
          axisPaddingTop: 5,
          dataFormatX: function(x) {
            return new String(x);
          },
          tickFormatX: function(x) {
            return xFormat(x);
          },
          timing: 1250
        }),
        rotateTimer,
        toggles = d3.selectAll('.multi button'),
        t = 3500;

      function updateChart(i) {
        var d = data[i];
        chart.setData(d);
        toggles.classed('toggled', function() {
          return (d3.select(this).attr('data-type') === d.type);
        });
        return d;
      }

      toggles.on('click', function(d, i) {
        clearTimeout(rotateTimer);
        updateChart(i);
      });

      function rotateChart() {
        i += 1;
        i = (i >= order.length) ? 0 : i;
        var d = updateChart(order[i]);
        rotateTimer = setTimeout(rotateChart, t);
      }
      rotateTimer = setTimeout(rotateChart, t);
    }());
    
    
    
    const labels = Utils.months({count: 7});
    const data = {
      labels: labels,
      datasets: [{
        label: 'My First Dataset',
        data: [65, 59, 80, 81, 56, 55, 40],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 205, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(201, 203, 207, 0.2)'
        ],
        borderColor: [
          'rgb(255, 99, 132)',
          'rgb(255, 159, 64)',
          'rgb(255, 205, 86)',
          'rgb(75, 192, 192)',
          'rgb(54, 162, 235)',
          'rgb(153, 102, 255)',
          'rgb(201, 203, 207)'
        ],
        borderWidth: 1
      }]
    };
    
  </script>

</body>

</html>

