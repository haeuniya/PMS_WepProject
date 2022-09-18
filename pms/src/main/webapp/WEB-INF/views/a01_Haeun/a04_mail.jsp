<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<%--


 --%>
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
  <link href="${path}/Dashio/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />	
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
  <link rel="stylesheet" href="${path}/a00_Common/a01_css/empInsert.css">
  <script src="${path}/a00_Common/a00_com/jquery-3.6.0.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
  <script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
		var msg = "${msg}"
		if(msg!="") alert(msg)
</script>
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
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt">
          <div class="col-sm-3">
            <section class="panel">
              <div class="panel-body">
                <a href="mail_compose.html" class="btn btn-compose">
                  <i class="fa fa-pencil"></i>  메일 쓰기
                  </a>
                <ul class="nav nav-pills nav-stacked mail-nav">
                  <li class="active"><a href="inbox.html"> <i class="fa fa-inbox"></i> 받은 메일함  <span class="label label-theme pull-right inbox-notification">3</span></a></li>
                  <li><a href="#"> <i class="fa fa-envelope-o"></i> 보낸 메일함</a></li>
                  <li><a href="#"> <i class="fa fa-file-text-o"></i> 임시보관함 <span class="label label-info pull-right inbox-notification">8</span></a></li>
                  <li><a href="#"> <i class="fa fa-trash-o"></i> 휴지통</a></li>
                </ul>
              </div>
            </section>
   
          </div>
          <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading wht-bg">
              </header>
              <div class="panel-body">
                <div class="compose-mail">
                  <form role="form-horizontal" action="${path}/mailSenderHR.do" method="post">
                    <div class="form-group">
                      <label for="to" class="">수신자:</label>
                      <input type="text" tabindex="1" id="receiver" name="receiver" value="${param.email}" placeholder="" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="subject" class="">발신자:</label>
                      <input type="text" tabindex="1" id="sender" class="form-control" value="yeeaahzzii@gmail.com" readonly>
                    </div>
                    <div class="form-group">
                      <label for="subject" class="">제목:</label>
                      <input type="text" tabindex="1" id="title" name="title" value="${param.ename}" class="form-control">
                    </div>
                    <div class="compose-editor">
                      <textarea name="content" id="content" class="form-control" rows="9">${param.content}</textarea>
                    </div>
                    <div class="compose-btn">
                      <button class="btn btn-theme btn-sm" type="submit"><i class="fa fa-check"></i> 보내기</button>
                      <button class="btn btn-sm" type="button" onclick="history.back()"><i class="fa fa-times"></i> 작성취소</button>
                      <button class="btn btn-sm">임시보관</button>
                      <button class="btn btn-sm" type="button" onclick="history.back()">등록화면으로 이동</button>
                    </div>
                  </form>
                </div>
              </div>
            </section>
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
        <a href="mail_compose.html#" class="go-top">
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
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

  <script type="text/javascript">
    //wysihtml5 start

    $('.wysihtml5').wysihtml5();

    //wysihtml5 end
  </script>
  
</body>

</html>
