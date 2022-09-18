<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
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
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
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
<script type="text/javascript">
var wsocket;
$(document).ready(function(){
	$("#enterBtn").click(function(){
		if(confirm("채팅방 접속합니다.")){
			conn();
			
		}
	});
	// 아이디 입력 후,  enter 키를 입력시도 접속
	$("#id").keyup(function(){
		if(event.keyCode==13){
			conn();
		}
	});
	
	$("#exitBtn").click(function(){
		if(confirm("접속을 종료하시겠습니까?")){
			wsocket.send("msg:"+$("#id").val()+":님 접속 종료 했습니다.")
			wsocket.close();
			// 서버 handler public void afterConnectionClosed()
			// 와 연동
		}
	});
	
});
function conn(){
	wsocket = new WebSocket("ws:106.10.18.69:5050/${path}/chat-ws.do")
	wsocket.onopen=function(evt){ // 접속하는 핸들러 메서드와 연결
		console.log(evt)
		// 능동적으로 서버에 소켓통신으로 메시지를 보내는 것..
		wsocket.send("msg:"+$("#id").val()+":님 접속했습니다.")
		// "msg:himan:연결접속했습니다."
		//  msg:전송자:메시지명
		//  msg:그룹명:전송자:메시지  (단일 chatting/그룹 chatting)
		
		
	}
	// 메시지를 받을 때, 처리되는 메서드
	// 서버에서 push방식으로 메시지를 전달 받는데..
	/*
	# 참고
	1. webstorage 활용
		1) 메시지 내용 임시 저장
		2) 로그인한 id 임시 저장.
		
	
	
	*/
	wsocket.onmessage=function(evt){
		
		var msg = evt.data
		console.log(msg)
		if(msg.substring(0,4)=="msg:"){
			
			var date = new Date();
			var dateInfo = date.getHours() + ":" + date.getMinutes();
			// msg: 를 제외한 모든 문자열을 추출
			var revMsg = msg.substring(4)
			console.log("#메시지 받기#")
			console.log(msg)
			$("#chatMessageArea").append(revMsg+"<div class='pull-right'>"+dateInfo+"</div><br>")	
			var mx = parseInt($("#chatMessageArea").height())
			$("#chatArea").scrollTop(mx);	
			
		}
		
		
	}
	// 접속을 종료 처리할 때
	wsocket.onclose=function(){
		alert($("#id").val()+"접속 종료합니다.")
		$("#chatMessageArea").val("")
		$("#id").val("").focus();
		
	}		
	
}
</script>
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
      <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="chat-room mt">
          <aside class="mid-side" >
            <div class="chat-room-head">
              <h3>채팅</h3>
              <input id="id" type="hidden" class="form-control" value="${emp.ename}"/> 
              
              <button type="button" id="exitBtn" class="btn btn-theme04 pull-right" >나가기</button>
              <button type="button" id="enterBtn" class="btn btn-theme02 pull-right" >채팅 입장</button>
              <h4 class="pull-right">  ${emp.ename}님 </h4>
            </div>
            <div class="group-rom" id="chatArea" style="height: 500px;">
              <div class="second-part" id="chatMessageArea"></div>
            </div>
            <footer>
              <div class="chat-txt">
                <input id="msg" value="" class="form-control">
              </div>
              <div class="btn-group hidden-sm hidden-xs">
                <button type="button" class="btn btn-white"><i class="fa fa-meh-o"></i></button>
                <button type="button" class="btn btn-white"><i class=" fa fa-paperclip"></i></button>
              </div>
              <button id="sndBtn" class="btn btn-theme">보내기</button>
                    <script type="text/javascript">
      	$("#msg").keyup(function(){
      		if(event.keyCode==13){
      			wsocket.send("msg:"+$("#id").val()+":"+$(this).val())
      			$(this).val("").focus()
      		}
      	});
      	// 전송 버튼을 클릭시에 메시지 전송
      	$("#sndBtn").click(function(){
      		wsocket.send("msg:"+$("#id").val()+":"+$("#msg").val())
      		$("#msg").val("").focus()
      	});
      </script>
            </footer>
          </aside>
          <aside class="right-side">
            <div class="user-head">
            
            </div>
            <div class="invite-row">
              <input id="id" type="hidden" class="form-control" value="${emp.ename}"/> 
              <h4 class="pull-left">  팀원 리스트 </h4>
            </div>
            <ul class="chat-available-user">
              <li> 
                <a href="chat_room.html">
                  <img class="img-circle" src="img/member1.jpg" width="32">
                  남주혁
                  <span class="text-muted">1h:02m</span>
                  </a>
              </li>
              <li>  
                <a href="chat_room.html">
                  <img class="img-circle" src="img/member2.jpg" width="32">
                  강태오 
                  <span class="text-muted">1h:08m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/member3.jpg" width="32">
                  양세종
                  <span class="text-muted">1h:10m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/member4.jpg" width="32">
                  이도현
                  <span class="text-muted">3h:00m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/bbibbi.jpg" width="32">
                  삐삐
                  <span class="text-muted">4h:22m</span>
                  </a>
              </li>
            </ul>
          </aside>
        </div>
        <!-- page end-->
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
        <a href="chat_room.html#" class="go-top">
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

</body>

</html>

