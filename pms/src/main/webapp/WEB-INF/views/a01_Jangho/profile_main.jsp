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
  <meta name="description01" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path }/Dashio/img/favicon.png" rel="icon">
  <link href="${path }/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path }/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path }/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="${path }/Dashio/lib/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path }/Dashio/css/style.css" rel="stylesheet">
  <link href="${path }/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
  
  
  
  
  
										<!-- 여기부터 복사 -->  
  
  
  
  
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
    
    
    										<!-- 여기까지 복사 -->
    
    
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <div class="row mt">
          <div class="col-lg-12">
            <div class="row content-panel">
              <div class="col-md-4 profile-text mt mb centered">
                <div class="right-divider hidden-sm hidden-xs">
                  <h4>${emp.id}</h4>
                  <h6>ID</h6>
                  <h4>${emp.phoneNum}</h4>
                  <h6>Phone</h6>
                  <h4>${emp.email}</h4>
                  <h6>E-MAIL</h6>
                </div>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 profile-text">
              	<br>
                <h3>${emp.ename}</h3>
                <h6>${emp.auth}</h6>
                <p>${emp.description}</p>
                <br>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 centered">
                <div>
                  <p><img src="${path}/z01_HRFileupload/${emp.eimage}" width=160></p>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </div>
          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt">
            <div class="row content-panel">
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#profile_select">프로필 조회</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#profile_update">프로필 수정</a>
                  </li>
                </ul>
              </div>
              <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="profile_select" class="tab-pane active">
                    <div class="row">
                    <h3>　　　<i class="fa fa-angle-right"></i> 프로필 조회</h3>
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                      <h4 class="mb">Personal Information</h4>
                        <form role="form" class="form-horizontal">
                        <br>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">사원번호</label>
                            <div class="col-lg-6">
                              <h5>${emp.empno}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">아이디</label>
                            <div class="col-lg-6">
                              <h5>${emp.id}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">이름</label>
                            <div class="col-lg-6">
                              <h5>${emp.ename}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">성별</label>
                            <div class="col-lg-6">
                            	<input type="radio" name="gender" value="남자" 
                            	<c:if test="${emp.gender eq '남자' }">checked</c:if> disabled/> 남자　
								<input type="radio" name="gender" value="여자"
								<c:if test="${emp.gender eq '여자' }">checked</c:if> disabled/> 여자
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">생년월일</label>
                            <div class="col-lg-6">
                              <input type="date" id="birthS" class="form-control"
                              	value="<fmt:formatDate value="${emp.birth}" pattern="yyyy-MM-dd"/>" readonly/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">직책</label>
                            <div class="col-lg-6">
                              <h5>${emp.job}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">권한</label>
                            <div class="col-lg-6">
                              <h5>${emp.auth}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">부서번호</label>
                            <div class="col-lg-6">
                              <h5>${emp.deptno}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">관리자번호</label>
                            <div class="col-lg-6">
                              <h5>${emp.mgr}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">입사일</label>
                            <div class="col-lg-6">
                              <input type="date" id="hiredate" class="form-control"
                              	value="<fmt:formatDate value="${emp.hiredate}" pattern="yyyy-MM-dd"/>" readonly/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연봉</label>
                            <div class="col-lg-6">
                              <h5>${emp.sal}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">중요도</label>
                            <div class="col-lg-6">
                              <h5>${emp.eImportant}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">프로필 이미지</label>
                            <div class="col-lg-6">
                              <img src="${path}/z01_HRFileupload/${emp.eimage}" width="160">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">소개글</label>
                            <div class="col-lg-6">
                              <h5>${emp.description}</h5>
                            </div>
                          </div>
                          <br><br>
                          
                          <h4 class="mb">Contact Information</h4>
                          <br>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">주소</label>
                            <div class="col-lg-6">
                              <h5>${emp.address}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">전화번호</label>
                            <div class="col-lg-6">
                              <h5>${emp.phoneNum}</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">이메일</label>
                            <div class="col-lg-6">
                              <h5>${emp.email}</h5>
                            </div>
                          </div>
                          
                        </form>
                      </div>
                    </div>
                    <!-- / row -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="profile_update" class="tab-pane">
                    <div class="row">
                    <h3>　　　<i class="fa fa-angle-right"></i> 프로필 수정</h3>
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                      	<h4 class="mb">Personal Information</h4>
                        <form id="update" class="form-horizontal" action="${path}/profileUpdate.do" enctype="multipart/form-data" method="post">
                        <br>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">사원번호</label>
                            <div class="col-lg-6">
                              <input type="text" id="empno" name="empno" class="form-control"
                              	value="${emp.empno}" readonly>
                              <input type="hidden" id="no" name="no" class="form-control"
                              	value="${emp.empno}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">아이디</label>
                            <div class="col-lg-6">
                            	<div class="form-inline">
                              		<input type="text" id="id" name="id" class="form-control"
                              			value="${emp.id}">
                              		<input type="button" class="btn btn-theme03" name="idDuplConfirm" value="중복 확인">
                              		<input type="hidden" name="idConfirm" value="idCheck">
                              		<span class="help-block">* 아이디를 8자 이상, 16자 이하로 입력해주세요.</span>
                              		<h5 id="idMsg">　</h5>
                              	</div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">비밀번호</label>
                            <div class="col-lg-6">
                              	<input type="password" id="pw" name="pw" class="form-control"
                             	 	value="${emp.pw}">
                          	 	<span class="help-block">* 비밀번호를 8자 이상, 16자 이하로 입력해주세요.</span>
                          	 	<h5 id="pwMsg">　</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">비밀번호 확인</label>
                            <div class="col-lg-6">
                              <input type="password" id="pw_confirm" name="pw_confirm" class="form-control"
                              	value="${emp.pw}">
                              <span class="help-block">* 위 비밀번호와 같은 값을 입력해주세요.</span>
                              <h5 id="pw_confirmMsg">　</h5>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">이름</label>
                            <div class="col-lg-6">
                              <input type="text" id="ename" name="ename" class="form-control"
                              	value="${emp.ename}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">성별</label>
                            <div class="col-lg-6">
                            	<input type="radio" id="gender" name="gender" value="남자" 
                            	<c:if test="${emp.gender eq '남자' }">checked</c:if>/> 남자　
								<input type="radio" name="gender" value="여자"
								<c:if test="${emp.gender eq '여자' }">checked</c:if>/> 여자
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">생년월일</label>
                            <div class="col-lg-6">
                              <input type="date" id="birthS" name="birthS" class="form-control"
                              	value="<fmt:formatDate value="${emp.birth}" pattern="yyyy-MM-dd"/>"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">직책</label>
                            <div class="col-lg-6">
                              <input type="text" id="job" name="job" class="form-control"
                              	value="${emp.job}" readonly>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">권한</label>
                            <div class="col-lg-6">
                              <input type="text" id="auth" name="auth" class="form-control"
                              	value="${emp.auth}" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">부서번호</label>
                            <div class="col-lg-6">
                              <input type="text" id="deptno" name="deptno" class="form-control"
                              	value="${emp.deptno}" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">관리자번호</label>
                            <div class="col-lg-6">
                              <input type="text" id="mgr" name="mgr" class="form-control"
                              	value="${emp.mgr}" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">입사일</label>
                            <div class="col-lg-6">
                              <input type="date" id="hiredateS" name="hiredateS" class="form-control"
                              	value="<fmt:formatDate value="${emp.hiredate}" pattern="yyyy-MM-dd"/>" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연봉</label>
                            <div class="col-lg-6">
                              <input type="text" id="sal" name="sal" class="form-control"
                              	value="${emp.sal}" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">중요도</label>
                            <div class="col-lg-6">
                              <input type="text" id="eImportant" name="eImportant" class="form-control"
                              	value="${emp.eImportant}" readonly>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">프로필 사진</label>
                            <div class="col-lg-6">
                              <input type="file" id="eimage" name="report" class="file-pos">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">소개글</label>
                            <div class="col-lg-6">
                              <input type="text" id="description" name="description" class="form-control"
                              	value="${emp.description}">
                            </div>
                          </div>
                          
                          <br><br>
                          
                          <h4 class="mb">Contact Information</h4>
                          <br>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">주소</label>
                            <div class="col-lg-6">
                              <input type="text" id="address" name="address" class="form-control"
                              	value="${emp.address}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연락처</label>
                            <div class="col-lg-6">
                              <input type="text" id="phoneNum" name="phoneNum" class="form-control"
                              	value="${emp.phoneNum}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">이메일</label>
                            <div class="col-lg-6">
                              <input type="text" id="email" name="email" class="form-control"
                              	value="${emp.email}">
                            </div>
                          </div>
                          
                        </form>
                       <center><button class="btn btn-theme" type="button" onclick="check()">수정</button></center>
                      </div>
                    </div>
                    <!-- / row -->
                  </div>
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
            <!-- /col-lg-12 -->
          </div>
          <!-- /row -->
        </div>
        <!-- /container -->
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
        <a href="profile.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path }/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path }/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="${path }/Dashio/lib/fullcalendar/fullcalendar.min.js"></script>
  <script src="${path }/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path }/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path }/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path }/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path }/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="${path }/Dashio/lib/calendar-conf-events.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("[name=idDuplConfirm]").click(function(){
			$.ajax({
		    	url:"${path}/hasEmp.do",
		    	data:"id=" + $("[name=id]").val(),
		    	dataType:"json",
		    	success:function(data){
		    		console.log(data)
		    		if(data.hasEmp){
		    			alert("이미 존재하는 아이디 입니다!\n다른 아이디를 입력하세요.")
		    			$("[name=id]").val("").focus();
		    			$("#idMsg").text("　");
		    		}else if($("[name=id]").val() == ""){
		    			alert("아이디를 입력하세요.")
		    			$("[name=id]").focus();
		    			$("#idMsg").text("　");
		    		}else{
		    			alert("사용 가능한 아이디 입니다!")
		    			$("[name=idConfirm]").val("idCheck");
		    		}
		    		
		    	},
		    	error:function(err){
		    		console.log(err)
		    	}
			});
		})
	
		$("[name=id]").keyup(function(){
			$("[name=idConfirm]").val("idUncheck");
			var idVal = $(this).val() 
			if(idVal.length>=8 && idVal.length<=16){
				$("#idMsg").text("유효한 아이디 입니다.").css("color","green")
			} else {
				$("#idMsg").text("유효하지 않은 아이디 입니다.").css("color","red")	  
			}
		});
		$("[name=pw]").keyup(function(){
			var pwVal = $(this).val() 
			var pw_confirmVal=$("[name=pw_confirm]").val()
			if(pwVal.length>=8 && pwVal.length<=16){
				$("#pwMsg").text("유효한 비밀번호 입니다.").css("color","green")
			} else {
				$("#pwMsg").text("유효하지 않은 비밀번호 입니다.").css("color","red")
			}
			if(pw_confirmVal.length != 0 && pw_confirmVal != pwVal){
				$("#pw_confirmMsg").text("비밀번호와 일치하지 않습니다.").css("color","red")
			}
			if(pw_confirmVal.length != 0 && pw_confirmVal == pwVal){
				$("#pw_confirmMsg").text("비밀번호와 일치합니다.").css("color","green")
				if(!(pw_confirmVal.length>=8 && pw_confirmVal.length<=16)){
					$("#pw_confirmMsg").text("유효하지 않은 비밀번호 입니다.").css("color","red")
				}
			}
		});
		$("[name=pw_confirm]").keyup(function(){
			var pwVal = $("[name=pw]").val()
			var pw_confirmVal=$(this).val() 
			if(pw_confirmVal == pwVal){
				if(pw_confirmVal.length>=8 && pw_confirmVal.length<=16){
					$("#pw_confirmMsg").text("비밀번호와 일치합니다.").css("color","green")
				} else {
					$("#pw_confirmMsg").text("유효하지 않은 비밀번호 입니다.").css("color","red")
				}
			} else {
				$("#pw_confirmMsg").text("비밀번호와 일치하지 않습니다.").css("color","red")	  
			}
		});
	})
	
function check(){
	   if(confirm("프로필을 수정하시겠습니까?")){
	      var idVal = $("[name=id]").val();
	      var idConfirmVal = $("[name=idConfirm]").val();
	      var pwVal = $("[name=pw]").val();
	      var pw_confirmVal = $("[name=pw_confirm]").val();
	      var enameVal = $("[name=ename]").val();
	      var genderVal = $("[name=gender]").val();
	      var birthVal = $("[name=birthS]").val();
	      var jobVal = $("[name=job]").val();
	      var authVal = $("[name=auth]").val();
	      var deptnoVal = $("[name=deptno]").val();
		  var hiredateVal = $("[name=hiredateS]").val();
	      var salVal = $("[name=sal]").val();
		  var eImportantVal = $("[name=eImportant]").val();
		  var emailVal = $("[name=email]").val();
		  var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	      if(idVal == ""){
	         alert("아이디를 입력하세요");
	         $("[name=id]").focus();
	         return;
	      }
	      if(!(idVal.length>=8 && idVal.length<=16)){
	    	  alert("유효하지 않은 아이디 입니다.");
	    	  $("[name=id]").focus();
	    	  return;
	      }
	      if(idConfirmVal == "idUncheck"){
	    	  alert("아이디를 중복 확인 하세요.")
	    	  return;
	      }
	      if(pwVal == ""){
	         alert("비밀번호를 입력하세요");
	         $("[name=pw]").focus();
	         return;
	      }
	      if(!(pwVal.length>=8 && pwVal.length<=16)){
		      alert("유효하지 않은 비밀번호 입니다.");
		      $("[name=pw]").focus();
		      return;
		  }
	      if(pw_confirmVal == ""){
	         alert("비밀번호 확인을 입력하세요");
	         $("[name=pw_confirm]").focus();
	         return;
	      }
	      if(pw_confirmVal != pwVal){
		      alert("비밀번호 확인이 비밀번호와 일치하지 않습니다.");
		      $("[name=pw_confirm]").focus();
		      return;
		  }
	      if(enameVal == ""){
	         alert("이름을 입력하세요");
	         $("[name=ename]").focus();
	         return;
	      }
	      if(genderVal == ""){
	         alert("성별을 선택하세요");
	         $("[name=gender]").focus();
	         return;
	      }
	      if(birthVal == ""){
	         alert("생년월일을 선택하세요");
	         $("[name=birthS]").focus();
	         return;
	      }
		  if(jobVal == ""){
		     alert("직책을 선택하세요");
		     $("[name=job]").focus();
		     return;
		  }
		  if(authVal == ""){
		     alert("권한을 선택하세요");
		     $("[name=auth]").focus();
		     return;
		  }
		  if(deptnoVal == ""){
		     alert("부서를 선택하세요");
		     $("[name=deptno]").focus();
		     return;
		  }
		  if(hiredateVal == ""){
		     alert("입사일을 선택하세요");
		     $("[name=hiredateS]").focus();
		     return;
		  }
		  if(salVal == ""){
			  alert("연봉을 입력하세요");
			  $("[name=sal]").focus();
			  return;
		  }
		  if(eImportantVal == ""){
			  alert("중요도를 선택하세요");
			  $("[name=eImportant]").focus();
			  return;
		  }
		  if(emailVal == ""){
			  alert("이메일을 입력하세요");
			  $("[name=email]").focus();
			  return;
		  }
		  if(!emailVal.match(emailPattern)){
				alert("이메일 형식이 올바르지 않습니다.")
				$("[name=email]").focus();
				return
		  }
	      alert("프로필 수정 완료!\n다시 로그인 해주세요.")
	      document.querySelector("#update").submit();
	    }
	}
	
var isUpdate = "${isUpdate}"
    if(isUpdate=="Y"){
    	location.href="${path}/loginPage.do"
    }

</script>


</body>

</html>