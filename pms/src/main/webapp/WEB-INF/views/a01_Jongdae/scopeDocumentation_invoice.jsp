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
