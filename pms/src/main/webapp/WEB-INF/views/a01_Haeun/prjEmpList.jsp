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
<title>AEAP PMS</title>

<!-- Favicons -->
<link href="${path}/Dashio/img/favicon.png" rel="icon">
<link href="${path}/Dashio/img/apple-touch-icon.png"
	rel="apple-touch-icon">

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
<!-- js placed at the end of the document so the pages load faster -->
<script src="${path}/a00_Common/a00_com/vue.js"></script>
<script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
<script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript"
	src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
<script src="${path}/Dashio/lib/jquery.nicescroll.js"
	type="text/javascript"></script>
<!--common script for all pages-->
<script src="${path}/Dashio/lib/common-scripts.js"></script>
<!--script for this page-->

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
				
				<h3>
					<i class="fa fa-angle-right"></i> 프로젝트 사원 관리
				</h3>
				<div class="row">
					<c:forEach var="prj" items="${prjList}" varStatus="status">
						<div class="col-md-4 cot">
	                        <div class="content-panel">
	                            <table class="table table-hover text-center">
	                                <thead>
	                                    <tr>
	                                        <th class="text-center" colspan="2">${prj.prjName}</th>
	                                    </tr>
                                        <tr>
                                            <td><strong>시작일</strong></td>
                                            <td><strong>종료일</strong></td>
                                        </tr>
                                        <tr>
                                            <td><fmt:formatDate value="${prj.prjStartDate}"/></td>
                     						<td><fmt:formatDate value="${prj.prjEndDate}"/></td>
                                        </tr>
                                        <tr>
                                        	<td><strong>직책</strong></td>
                                        	<td><strong>이름</strong></td>
                                    </thead>
                                    <tbody id="${prj.prjNo}">
                                    </tbody>
                                    <tfoot>
                                        <tr>
	                                    	<td colspan="2"><button class="btn btn-primary" onclick="goUptForm('${prj.prjNo}')"
	                                    		<c:if test="${emp.auth != 'PM'}">disabled</c:if>
	                                    		>인적자원 수정</button></td>
	                                    </tr>
	                                    <button style="display:none;" class="btn btn-info" id="${status.index}" onclick="giveNo('${prj.prjNo}')">인적자원 보기</button>
	                                    <input type="hidden" value="${prj.prjNo}">
	                                </tfoot>
	                            </table>
	                        </div>
	                    </div>
                    </c:forEach>
					<!-- /col-md-12 -->
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
					Created with Dashio template by <a
						href="${path}/Dashio/https://templatemag.com/">TemplateMag</a>
				</div>
				<a href="${path}/Dashio/basic_table.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
<script type="text/javascript">
	/*
	$(function() {
		$("tr[data-id]").on("click", function() {
			const id = $(this).data("id");
			location.href = `01.riskManagement.jsp?id=` + id;
		});
	});
	$(function(){
	$("button").click(function(){
           $('.modal').fadeIn();
       });
       $('.modal_content').click(function(){
           $('.modal').fadeOut();
       });
     
	});
	$('select').selectpicker();
	*/
	function giveNo(prjNo) {
		var prjNoVal = prjNo
		$.ajax({
			url:"${path}/ajaxPrj.do",
			data:"prjNo="+prjNoVal,
			dataType:"json",
			success:function(data){
				var list = data.ajaxPrj
				var addHTML = ""
				$(list).each(function(idx, prj){
					addHTML+="<tr><td>"+prj.job+"</td><td>"+prj.ename+"</td></tr>"
				})
				console.log(addHTML)
				$("#"+prjNoVal+"").html(addHTML)
			}
		})
	}
	function goUptForm(prjNo) {
		location.href="${path}/UptPrjEmpForm.do?prjNo="+prjNo;
	}
	$(document).ready(function(){
		var abc = document.getElementsByClassName('cot').length
		for (var idx=0;idx<abc;idx++) {
			$("#"+idx+"").click()
		}
	})
</script>
</body>

</html>
