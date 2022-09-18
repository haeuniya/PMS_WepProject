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
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datetimepicker/css/datetimepicker.css" />
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
      <h3><i class="fa fa-angle-right"></i> 프로젝트 <i class="fa fa-angle-right"></i> 프로젝트 관리 <i class="fa fa-angle-right"></i> 프로젝트 수정</h3>
      <!--ADVANCED FILE INPUT-->
      <div class="form-panel">     
		<!-- FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
           
            <!-- /tab-pane -->
                  <div id="edit" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Project Information</h4>
                        <form class="form-horizontal" id="pform" enctype="multipart/form-data" action="${path}/updatePrj.do">
                        <div class="form-group last">		                  

                          <div class="form-group">
                            <label class="col-lg-2 control-label">프로젝트명</label>
                            <div class="col-lg-6">
                              <input type="text" name="prjName" class="form-control" value="${uptPrj.prjName}"/>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">프로젝트 목적</label>
                            <div class="col-lg-6">
                              <input type="text" name="prjGoal" class="form-control" value="${uptPrj.prjGoal}"/> 
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">중요도</label>
                            <div class="col-lg-6">
                              <input type="text" name="prjImportant"  class="form-control" value="${uptPrj.prjImportant}"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">산출물</label>
                            <div class="col-lg-6">
                              <input type="text" name="output" class="form-control" value="${uptPrj.output}"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">범위 외</label>
                            <div class="col-lg-6">
                              <input type="text" name="outRange" class="form-control" value="${uptPrj.outRange}"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">프로젝트 기간</label>
                            <div class="col-lg-6">
                              <input type="date" name="prjStartDateS" placeholder="시작일" class="form-control"  
								value="${uptPrj.prjStartDateS}"/>
							  <span class="input-group-addon">To</span>
							  <input type="date" name="prjEndDateS" placeholder="종료일" class="form-control"  
								value="${uptPrj.prjEndDateS}"/>
                            </div>
                          </div>
			                
			                
			                                                     
                          <div class="form-group">
                            <label class="col-lg-2 control-label">설비 비용</label>
                            <div class="col-lg-6">
                              <input type="text" name="eqpmnCost" class="form-control" value="${uptPrj.eqpmnCost}"/>
                            </div>
                          </div>                     
                          <div class="form-group">
                            <label class="col-lg-2 control-label">자재 비용</label>
                            <div class="col-lg-6">
                              <input type="text" name="materialCost" class="form-control" value="${uptPrj.materialCost}"/>
                            </div>
                          </div>                     
                          <div class="form-group">
                            <label class="col-lg-2 control-label">서비스 비용</label>
                            <div class="col-lg-6">
                              <input type="text" name="serviceCost" class="form-control" value="${uptPrj.serviceCost}"/>
                            </div>
                          </div>                     
                          <div class="form-group">
                            <label class="col-lg-2 control-label">간접 비용</label>
                            <div class="col-lg-6">
                              <input type="text" name="indirectCost" class="form-control" value="${uptPrj.indirectCost}"/>
                            </div>
                          </div>  
                          <div class="form-group">
                            <label class="col-lg-2 control-label">예비비</label>
                            <div class="col-lg-6">
                              <input type="text" name="rsrvExpns" class="form-control" value="${uptPrj.rsrvExpns}"/>
                            </div>
                          </div>                     
                          <input type="hidden" name="prjNo" value="${uptPrj.prjNo}">
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" id="insertBtn" type="button" onclick="insertProc()">수정</button>
                              <button class="btn btn-theme03" type="button" onclick="goMain()">메인화면</button>
                            </div>
                          </div>                                                   
                        </form>
                      </div>                
                      <!-- /col-lg-8 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
          </div>
          <!-- /col-lg-12 -->
        </div>
		            </div>
		            <!-- /form-panel -->
		          <!-- /col-lg-12 -->
        <!-- row -->  
        <!-- row -->
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
        <a href="advanced_form_components.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>


  <script type="text/javascript">
  var isInsert = "${isInsert}"
	  if(isInsert=="Y"){
		  alert("수정 성공했습니다")
		  // 조회 화면 이동
		  location.href="${path}/prjList.do"

	  }
  
  function goMain(){
	  location.href="${path}/prjList.do";
  }

  function insertProc(){
	  console.log("실행")
	  if(confirm("수정하시겠습니까?")){
		  var prjNameVal = $("[name=prjName]").val();
		  if(prjNameVal == ""){
			  alert("프로젝트명을 써주세요");
			  $("[name=prjName]").focus();
			  return;
		  }
		  var prjGoalVal = $("[name=prjGoal]").val();
		  if(prjGoalVal == ""){
			  alert("프로젝트 목적을 써주세요");
			  $("[name=prjName]").focus();
			  return;
		  }
		  var prjImportantVal = $("[name=prjImportant]").val();
		  if(prjImportantVal == ""){
			  alert("중요도를 등록하세요");
			  $("[name=prjImportant]").focus();
			  return;
		  }
		  var prjStartDateVal = $("[name=prjStartDate]").val();
		  if(prjStartDateVal == ""){
			  alert("프로젝트 기간을 등록하세요");
			  $("[name=prjStartDate]").focus();
			  return;
		  }
		  var prjEndDateVal = $("[name=prjEndDate]").val();
		  if(prjEndDateVal == ""){
			  alert("프로젝트 기간을 등록하세요");
			  $("[name=prjEndDate]").focus();
			  return;
		  }

		  document.querySelector("form").submit();
	  }
  }
  </script>
  
</body>

</html>
