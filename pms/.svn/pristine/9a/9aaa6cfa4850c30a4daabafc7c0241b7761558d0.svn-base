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
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datetimepicker/css/datertimepicker.css" />
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="${path}/Dashio/lib/advanced-datatable/css/DT_bootstrap.css" />
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
      <a href="${path}/indexprjWhole.do" class="logo"><b>AEAP<span>PMS</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">Select Dashboard</p>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do">
                  <div class="task-info">
                    <div class="desc">A Whole</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1000">
                  <div class="task-info">
                    <div class="desc">Project1</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1001">
                  <div class="task-info">
                    <div class="desc">Project2</div>
                  </div>
                </a>
              </li>
              <li>
                <a href="${path}/indexprjWhole.do?prjno=P1002">
                  <div class="task-info">
                    <div class="desc">Project3</div>
                  </div>
                </a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${path }/logout.do">Logout</a></li>
        </ul>
      </div>
    </header>
    <script type="text/javascript">
    
    // session 만료 시 로그아웃 
   var sessionVal = "${emp.id}"
   if(sessionVal == ""){
      alert("세션이 만료되어 로그인 페이지로 이동합니다.")
      location.href="${path}/logout.do"
   }
    </script>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="${path}/profile.do"><img src="${path}/z01_HRFileupload/${emp.eimage}" width=160></a></p>
          <h5 class="centered">${emp.ename}<br>(${emp.empno})</h5>
          <li class="mt">
            <a href="${path}/indexprjWhole.do">
              <i class="fa fa-dashboard"></i>
              <span>대시보드</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>통합 프로젝트</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/prjList.do">통합 프로젝트 관리</a></li>
              <li>
              <c:if test="${emp.auth == 'PM'}"> <a href="${path}/prjInsertForm.do">프로젝트 등록</a> </c:if>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjSchdList.do ">
              <i class="fa fa-calendar-o"></i>
              <span>일정관리</span>
            </a>
          </li>
           <c:if test="${emp.auth != '사원'}">
          <li>
             <a href="${path}/cosPrjList.do">
              <i class="fa fa-money"></i>
              <span>재정관리</span>
            </a>
          </li>
         </c:if>

          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-users"></i>
              <span>인적자원관리</span>
            </a>
            <ul class="sub">
              <li><a href="${path}/empList.do">전체 사원 관리</a></li>
              <li><a href="${path}/prjEmpManage.do">프로젝트 사원 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjlist.do">
              <i class="fa fa-suitcase"></i>
              <span>품질관리</span>
            </a>
          </li>
          <li>
            <a href="${path}/mailForm.do">
              <i class="fa fa-envelope"></i>
              <span>메일</span>
            </a>
          </li>
          <li>
            <a href="${path}/chat.do">
              <i class="fa fa-comments-o"></i>
              <span>채팅</span>
              </a>
          </li>
          <li>
            <a href="${path}/boardList.do">
              <i class="fa fa-edit"></i>
              <span>회의록</span>
            </a>
          </li>
          <li>
            <a href="${path}/introduce.do">
              <i class="fa fa-info-circle"></i>
              <span>AEAP소개</span>
            </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered">
            <a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a>
          </p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a href="index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li>
                <a href="general.html">General</a>
              </li>
              <li>
                <a href="buttons.html">Buttons</a>
              </li>
              <li>
                <a href="panels.html">Panels</a>
              </li>
              <li>
                <a href="font_awesome.html">Font Awesome</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li>
                <a href="grids.html">Grids</a>
              </li>
              <li>
                <a href="calendar.html">Calendar</a>
              </li>
              <li>
                <a href="gallery.html">Gallery</a>
              </li>
              <li>
                <a href="todo_list.html">Todo List</a>
              </li>
              <li>
                <a href="dropzone.html">Dropzone File Upload</a>
              </li>
              <li>
                <a href="inline_editor.html">Inline Editor</a>
              </li>
              <li>
                <a href="file_upload.html">Multiple File Upload</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li>
                <a href="blank.html">Blank Page</a>
              </li>
              <li>
                <a href="login.html">Login</a>
              </li>
              <li>
                <a href="lock_screen.html">Lock Screen</a>
              </li>
              <li>
                <a href="profile.html">Profile</a>
              </li>
              <li>
                <a href="invoice.html">Invoice</a>
              </li>
              <li>
                <a href="pricing_table.html">Pricing Table</a>
              </li>
              <li>
                <a href="faq.html">FAQ</a>
              </li>
              <li>
                <a href="404.html">404 Error</a>
              </li>
              <li>
                <a href="500.html">500 Error</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li>
                <a href="form_component.html">Form Components</a>
              </li>
              <li>
                <a href="advanced_form_components.html">Advanced Components</a>
              </li>
              <li>
                <a href="form_validation.html">Form Validation</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li class="active">
                <a href="basic_table.html">Basic Table</a>
              </li>
              <li>
                <a href="responsive_table.html">Responsive Table</a>
              </li>
              <li>
                <a href="advanced_table.html">Advanced Table</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="inbox.html">
              <i class="fa fa-envelope"></i>
              <span>Mail </span>
              <span class="label label-theme pull-right mail-info">2</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Charts</span>
              </a>
            <ul class="sub">
              <li>
                <a href="morris.html">Morris</a>
              </li>
              <li>
                <a href="chartjs.html">Chartjs</a>
              </li>
              <li>
                <a href="flot_chart.html">Flot Charts</a>
              </li>
              <li>
                <a href="xchart.html">xChart</a>
              </li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li>
                <a href="lobby.html">Lobby</a>
              </li>
              <li>
                <a href="chat_room.html"> Chat Room</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="google_maps.html">
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
      
      	
      	
        <h3><i class="fa fa-angle-right"></i> 검토계획 조회   </h3><br>
        <div class="row">
          <div class="col-md-12">
  
           <div class="form-group">
                  
                <form class="form-inline" role="form" method="post">
                
                
                <select name='search' style="width:100px;height:35px;">
  					<option value='' selected>-- 검색조건 --</option>
  					<option value='projectN'>프로젝트명으로 검색</option>
  					<option value='rplanN'>검토계획명으로 검색</option>
  					<option value='pmN'>PM명으로 검색</option>
				</select>
                  
                <div class="form-group">
                
                  <label class="sr-only" for="exampleInputEmail2">prjname</label>
                  <input type="text" class="form-control" name="prjname" value="${rplan.prjname}" placeholder="프로젝트명 입력">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="exampleInputPassword2">rplanname</label>
                  <input type="text" class="form-control" name="rplanname" value="${rplan.rplanname}" placeholder="검토계획명 입력">
                
                
                    <div class="input-group input-large" data-date="01/01/2014" data-date-format="mm/dd/yyyy">
                      <input type="text" class="form-control dpd1" name="from" value="${rplan.requestdate}">
                      <span class="input-group-addon">To</span>
                      <input type="text" class="form-control dpd2" name="to" value="${rplan.approvaldate}">
                      
                    </div>
                   &nbsp;
                   <button type="submit" class="btn btn-primary">Primary</button>
                </div>
                
                
              	</form>
                  	
                  	
                
                </div>
          </div>
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 검토계획 테이블</h4>
                <hr>
                <thead>
                  <tr>
                    
                    <th>검토계획ID</th>
                    <th>검토계획명</th>
                    <th>프로젝트명</th>
                    <th>프로젝트기간</th>
                    <th>PM명</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="bd" items="${rlist}">
       
       			  <tr><td>${bd.rplanno}</td><td>${bd.rplanname}</td>
       			  	<td>${bd.prjname}</td><td><fmt:formatDate value="${bd.requestdate}"/>~<fmt:formatDate value="${bd.approvaldate}"/></td>
       				<td>${bd.pmname}</td></tr>
     			  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- row -->
        <div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i> 승인확인테이블</h4>
                <hr>
                <thead>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i> 프로젝트명</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 검토계획명</th>
                    <th><i class="fa fa-bookmark"></i> 특이사항</th>
                    <th>승인상태</th>
                    <th><i class=" fa fa-edit"></i> 승인및삭제</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="bd" items="${rlist}">
       
       			  <tr><td><a href="basic_table.html#">${bd.prjname}</a></td><td>${bd.rplanname}</td><td>${bd.specialnote}</td>
       			  	<td>${bd.rplanstatus}</td>
       				<td><button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                    </td>
                   </tr>
     			  </c:forEach>
                </tbody>
                
              </table>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- /row -->
      </section>
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
        <a href="basic_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="${path}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="${path}/Dashio/lib/advanced-form-components.js"></script>
  
           

</body>

</html>