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

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
 --%>
<html lang="en">
<head>
  <style>
  .find-btn{
	text-align: right;
}
.find-btn1{
	display :inline-block;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>AEAP PMS</title>

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
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>시정조치 결과 등록</h3><br>
        <div class="row">
        	<div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> 시정조치 결과 정보</h4>
              <form id="frm01" action="${path}/fbplanInsert.do" class="form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">시정조치결과명</label>
                  <div class="col-sm-10">
                    <input name="feedbackName" type="text" class="form-control" placeholder="시정조치결과명 입력">
                  </div><br>
                </div><br>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">시정조치기간</label>
                  <div class="col-sm-10">
                  
                   <div class="input-group input-large" data-date="01/01/2014" data-date-format="mm/dd/yyyy">
                      
                      <input type="text" class="form-control dpd1" name="fbStartDate">
                      <span class="input-group-addon">To</span>
                      <input type="text" class="form-control dpd2" name="fbEndDate">
                      
                    </div>
                  </div><br>
                </div><br>
                
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">시정조치 진행단계</label>
                  <div class="col-sm-10">
                    <input name="fbStep" type="text" class="form-control" placeholder="진행단계입력">
                 <br> </div>
                </div>          
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">시정조치사항</label>
                  <div class="col-sm-10">
                    <input name="feedbackItem" type="text" class="form-control" placeholder="시정조치사항 입력">
                  <br></div>
                </div><br>              
                
                
                
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">비고</label>
                  <div class="col-sm-10">
                    <input name="fbNote" type="text" class="form-control" placeholder="비고">
                  <br></div>
                </div><br>
                 <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"> 위험관리번호 </label>
                  <div class="col-sm-10">
                    <input name="riskNo"  type="text" class="form-control" value="${param.riskNo}" readonly>
                  <br></div>
                </div>

                <br>
                
                <div class="find-btn">
	
          			<button type="button" onclick="completeinsert()" class="btn btn-success find-btn1">등록  </button>
         			<button type="button" onclick="gofbplanlist()" class="btn btn-danger find-btn1">조회화면  </button>
          		</div>
          		
          	</form>
        </div>
             
            </div>
          </div>
          <!-- col-lg-12-->
        </div>
        <script type="text/javascript">
        	function gofbplanlist(){
        		location.href="${path}/fbplanlist.do?riskNo="+'${param.riskNo}'
        	}
        	 function completeinsert(){
        		 var feedbackNameVal = $("[name=feedbackName]").val();
        			var fbStartDateVal = $("[name=fbStartDate]").val();
        			var fbEndDateVal = $("[name=fbEndDate]").val();
        			var fbStepVal = $("[name=fbStep]").val();
        			var feedbackItemVal = $("[name=feedbackItem]").val();
        			var fbNoteVal = $("[name=fbNote]").val();
        			if( feedbackNameVal ==""){
        				alert("시정조치명을 등록하세요");
        				$("[name=subject]").focus();
        				return;
        			}
        			if( fbStartDateVal ==""){
        				alert("시정조치시작일을 등록하세요");
        				$("[name=fbStartDate]").focus();
        				return;
        			}
        			if( fbEndDateVal ==""){
        				alert("시정조치마감일을 등록하세요");
        				$("[name=fbEndDate]").focus();
        				return;
        			}
        			if( fbStepVal ==""){
        				alert("진행단계를 등록하세요");
        				$("[name=fbStep]").focus();
        				return;
        			}
        			if( feedbackItemVal ==""){
        				alert("시정조치사항을 등록하세요");
        				$("[name=feedbackItem]").focus();
        				return;
        			}
        			if( fbNoteVal ==""){
        				alert("비고를 등록하세요");
        				$("[name=fbNote]").focus();
        				return;
        			}
        			alert("등록완료")
        			document.querySelector("form").submit();
        		
        	} 
        	
        </script>
        </div>
        <!-- row -->
        
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