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
<script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
<script src="${path}/a00_Common/a00_com/popper.min.js"></script>
<script src="${path}/a00_Common/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>  

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
          <h5 class="centered">${emp.ename}</h5>
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
              <li><a href="${path}/prjInsertForm.do">프로젝트 등록</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="${path}/prjSchdList.do ">
              <i class="fa fa-calendar-o"></i>
              <span>일정관리</span>
            </a>
          </li>
          <li>
            <a href="${path}/cosPrjList.do">
              <i class="fa fa-money"></i>
              <span>재정관리</span>
            </a>
          </li>
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
        <h3><i class="fa fa-angle-right"></i>품질관리점수 조회</h3><br>
        <div class="row">
        	<div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>
              <form id="frm01" action="${path}/fbplanInsert.do" class="form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">일정관리점수</label>
                  <div class="col-sm-10">
                    <input name="feedbackName" type="text" class="form-control" placeholder="${QpointDetail.schdlScore}" readonly>
                  </div><br>
                </div><br>

                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">인적자원관리점수</label>
                  <div class="col-sm-10">
                    <input name="fbStep" type="text" class="form-control" placeholder="${QpointDetail.hrScore}" readonly>
                 <br> </div>      
                </div>  
                        
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">비용관리점수</label>
                  <div class="col-sm-10">
                    <input name="feedbackItem" type="text" class="form-control" placeholder="${QpointDetail.costScore}" readonly>
                  <br></div>
                </div><br>              
                
                
                
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">의사소통관리점수</label>
                  <div class="col-sm-10">
                    <input name="fbNote" type="text" class="form-control" placeholder="${QpointDetail.commuScore}" readonly>
                  <br></div>
                </div><br>


                <br>
                
                <div class="find-btn">
	
          			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter1">수정</button>
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
  
  <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <form id="frm03" action="${path}/updateQpoint.do" class="form">
 		 <input type="hidden" name="prjNo" value="${param.prjNo}"/>
 		 <input type="hidden" name="feedbackno" value="${param.feedbackno}"/>
 		 <input type="hidden" name="riskNo" value="${param.riskNo}"/>
      <div class="modal-header">
      	
        <h4 class="modal-title" id="exampleModalLongTitle" >품질관리점수 수정  </h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	 
      	
        <div class="row">
         <div class="col">
           <h4>일정관리점수</h4>
           <input type="text" size=2 maxlength=2 class="form-control" placeholder="${QpointDetail.schdlScore}" name="schdlScore">
         </div><br>
         <div class="col">
           <h4>인적자원관리점수</h4>
           <input type="text" size=2 maxlength=2 class="form-control" placeholder="${QpointDetail.hrScore}" name="hrScore">
         </div><br>
          <div class="col">
           <h4>비용관리점수</h4>
           <input type="text" size=2 maxlength=2 class="form-control" placeholder="${QpointDetail.costScore}" name="costScore">
         </div><br>
          <div class="col">
           <h4>의사소통관리점수</h4>
           <input type="text" size=2 maxlength=2 class="form-control" placeholder="${QpointDetail.commuScore}" name="commuScore" >
         </div><br>
         
      
         <%-- <div class="col">
           <h4>비고 입력</h4>
           <input type="text" class="form-control" placeholder="비고 입력"  value="${rplandetail.specialnote}">
         </div><br> --%>
         
       </div>
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!-- <button type="submit"  class="btn btn-primary">Save changes</button> -->
        <button type="button" onclick="completeupt()"  class="btn btn-primary">Save changes</button>
      </div>
      </form>  
      
      </div>
      
      <script type="text/javascript">
      function completeupt(){
 		 	var schdlScoreVal = $("[name=schdlScore]").val();
 			schdlScoreVal *= 1;
 			var hrScoreVal = $("[name=hrScore]").val();
 			hrScoreVal *= 1;
 			var costScoreVal = $("[name=costScore]").val();
 			costScoreVal *= 1;
 			var commuScoreVal = $("[name=commuScore]").val();
 			commuScoreVal *= 1;
 			if( !(schdlScoreVal <=20 && schdlScoreVal>0)){
 				alert("0-20사이의 값을 입력해주세요!");
 				$("[name=schdlScore]").focus();
 				return;
 			}
 			if( !(hrScoreVal <=20 && hrScoreVal>0)){
 				alert("0-20사이의 값을 입력해주세요!");
 				$("[name=hrScore]").focus();
 				return;
 			}
 			if( !(costScoreVal <=20 && costScoreVal>0)){
 				alert("0-20사이의 값을 입력해주세요!");
 				$("[name=costScore]").focus();
 				return;
 			}
 			if( !(commuScoreVal <=20 && commuScoreVal>0)){
 				alert("0-20사이의 값을 입력해주세요!");
 				$("[name=commuScore]").focus();
 				return;
 			}
 			alert("수정완료")
 			document.querySelector("#frm03").submit();
 			location.href="${path}/QpointDetail.do?prjNo="+'${param.prjNo}'+"&riskNo="+'${param.riskNo}'
 		
 	} 
      
     /*  var proc ="${proc}"
    		if(proc=="pupt"){
    			alert("수정성공")
    			alert(${fbplandetail.feedbackNo})
    			location.href="${path}/fbPlanDetail.do?feedbackno="+'${param.feedbackno}'+"&prjNo="+'${param.prjNo}'
    		}  */
      </script>
    </div>
  </div>   
              
           

</body>

</html>