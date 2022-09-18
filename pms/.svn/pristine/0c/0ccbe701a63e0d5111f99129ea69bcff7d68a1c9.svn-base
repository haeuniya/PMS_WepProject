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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




<!-- 8/16 dashio 링크 추가 -->

  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

<!-- 여기까지 dashio 링크추가 -->

<link href='${path}/a00_Common/a00_com/lib/main.css' rel='stylesheet' />
<script src='${path}/a00_Common/a00_com/lib/main.js'></script>
<link rel="stylesheet" href="${path}/a00_Common/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_Common/a00_com/jquery-ui.css" >


<style>
	td{text-align:center;}
	body {
	    margin: 40px 10px;
	    padding: 0;
	    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	    font-size: 14px;
	}
	#calendar {
	   max-width: 1100px;
	   margin: 0 auto;
	}
</style>
<script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
<script src="${path}/a00_Common/a00_com/popper.min.js"></script>
<script src="${path}/a00_Common/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">



document.addEventListener('DOMContentLoaded', function() {
	
	// 초기 화면 로딩 날짜 오늘 날짜로 설정
	var toDay = new Date()
	var date = toDay.toISOString().split("T")[0]
	console.log(date)
	
	
    var calendarEl = document.getElementById('calendar');
	
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: date,
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
    	  $("#regBtn").show()
    	  $("#uptBtn").hide()
    	  $("#delBtn").hide()
    	  
    	  $("#exampleModalLongTitle").text("일정등록");
    	  $("#frm01")[0].reset(); // 기존 등록된 데이터 삭제 처리..
    	  $("#modalBox").click(); // 팝업창 로딩:이벤트를 하지 않더라도 코드에 의해 강제 실행 처리..
    	  console.log("#fullcalendar 데이터#")
    	  console.log(arg)
    	  console.log(arg.start)
    	  console.log(arg.end)
    	  console.log(arg.color) // 입력으로 넣을 예정
    	  console.log(arg.textColor) // 입력으로 넣을 예정
    	  console.log(arg.allDay)
    	  // arg.start.toISOString() : GMT 기준 시간으로 나온다.
    	  $("#frm01 [name=start]").val(arg.start.toISOString())
    	  $("#frm01 [name=end]").val(arg.end.toISOString())
    	  $("#frm01 [name=allDay]").val(""+arg.allDay)
    	  // 내용은 추가적으로 넣을 예정..
      },
      // 있는 데이터를 클릭시, (상세 내용을 보고 수정/삭제..)
      eventClick: function(arg) {
    	  $("#regBtn").hide()
    	  $("#uptBtn").show()
    	  $("#delBtn").show()
    	  $("#exampleModalLongTitle").text("일정상세");
    	  $("#modalBox").click(); // 모달창 로딩.. 
    	  formData(arg.event)
    	  

      },
      eventDrop:function(info){
    	  // 일정을 클릭해서 드랍처리 시, 날짜 변경
    	  formData(info.event)
   	  	  $("#frm01").attr("action","${path}/calUpdate.do");
   	  	  $("#frm01").submit();   	  
      },
      eventResize:function(info){
    	  // 시간일정을 늘리거나 줄일때..
    	  formData(info.event)
   	  	  $("#frm01").attr("action","${path}/calUpdate.do");
   	  	  $("#frm01").submit();
      },
      
      
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: function(info, successCallback, failureCallback){
    	  // http://localhost:7080/springweb/calList.do callist
    	  $.ajax({
    		  type:"post",
    		  url:"${path}/calList.do",
    		  dataType:"json",
    		  success:function(data){
    			  console.log(data.callist)
    			  successCallback(data.callist)
    		  },
    		  error:function(err){
    			  console.log(err)
    		  }
    		  
    	  });
    	  
      }
    });

    calendar.render();

    
    
    
  });
  function formData(event){
 	  $("#frm01 [name=id]").val(event.id)
 	  $("#frm01 [name=title]").val(event.title)
 	  $("#frm01 [name=start]").val(event.start.toISOString())
 	  if(event.end!=null){
	  	$("#frm01 [name=end]").val(event.end.toISOString())
 	  }else{
 		 $("#frm01 [name=end]").val(event.start.toISOString())  
 	  }
	  $("#frm01 [name=backgroundColor]").val(event.backgroundColor)
	  $("#frm01 [name=textColor]").val(event.textColor)
	  $("#frm01 [name=allDay]").val(""+event.allDay)   	  
	  $("#frm01 [name=content]").val(event.extendedProps.content)  	  
  }

</script>
</head>

<body>

  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
   
    <header class="header black-bg">
    <!-- 8/17 주석 
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
    -->
      <!--logo start-->
      <a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme">4</span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning">7</span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
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
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
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
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li><a href="grids.html">Grids</a></li>
              <li class="active"><a href="calendar.html">Calendar</a></li>
              <li><a href="gallery.html">Gallery</a></li>
              <li><a href="todo_list.html">Todo List</a></li>
              <li><a href="dropzone.html">Dropzone File Upload</a></li>
              <li><a href="inline_editor.html">Inline Editor</a></li>
              <li><a href="file_upload.html">Multiple File Upload</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
              </a>
            <ul class="sub">
              <li><a href="blank.html">Blank Page</a></li>
              <li><a href="login.html">Login</a></li>
              <li><a href="lock_screen.html">Lock Screen</a></li>
              <li><a href="profile.html">Profile</a></li>
              <li><a href="invoice.html">Invoice</a></li>
              <li><a href="pricing_table.html">Pricing Table</a></li>
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="404.html">404 Error</a></li>
              <li><a href="500.html">500 Error</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li><a href="form_component.html">Form Components</a></li>
              <li><a href="advanced_form_components.html">Advanced Components</a></li>
              <li><a href="form_validation.html">Form Validation</a></li>
              <li><a href="contactform.html">Contact Form</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
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
              <li><a href="morris.html">Morris</a></li>
              <li><a href="chartjs.html">Chartjs</a></li>
              <li><a href="flot_chart.html">Flot Charts</a></li>
              <li><a href="xchart.html">xChart</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="lobby.html">Lobby</a></li>
              <li><a href="chat_room.html"> Chat Room</a></li>
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
    <section id="main-content" >
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Calendar</h3>
        <!-- page start-->
        <div id='calendar'></div>
<h2 data-toggle="modal" id="modalBox"  
	data-target="#exampleModalCenter" style="display:none;">모달창 로딩</h2>

<!-- 
특정한 data-target="#exampleModalCenter"로 된 DOM을 클릭시,
모달창이 로딩..



모달 창 로딩.. -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm01" class="form"  method="post">
			<input type="hidden" name="id" value="0"/>
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="제목 입력" 
	        	 data-bs-toggle="tooltip"  title="제목 입력" name="title">
	      </div>
	      <div class="col">
	        <select name="allDay" class="form-control"   data-bs-toggle="tooltip"  title="종일여부">
	        	<option value="false">시간</option>
	        	<option value="true">종일</option>
	        </select>
	      </div>      	      
	     </div>
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control"  data-bs-toggle="tooltip"  title="시작일" name="start">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control"  data-bs-toggle="tooltip"  title="종료일" name="end">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col"> 
	        <input type="color" class="form-control"  data-bs-toggle="tooltip"  title="배경색상" 
	        	value="#0099cc" name="backgroundColor">
	      </div>
	      <div class="col">
	        <input type="color" class="form-control"   data-bs-toggle="tooltip"  title="글자색상" 
	        	value="#ccffff" name="textColor">
	      </div>
	     </div>	   
	     <div class="row">
	      <div class="col">
	        <textarea name="content" rows="7"  class="form-control" 
	        	 data-bs-toggle="tooltip"  placeholder="내용 입력"  title="내용" ></textarea>
	      </div>
	     </div>	 	     
	         
	    </form> 
      </div>
      <div class="modal-footer"> 
        <button type="button" id="regBtn" class="btn btn-primary">일정등록</button>
        <button type="button" id="uptBtn" class="btn btn-info">일정수정</button>
        <button type="button" id="delBtn" class="btn btn-danger">일정삭제</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      <script type="text/javascript">
      	$("#regBtn").click(function(){
      		if(confirm("등록하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calInsert.do");
      			$("#frm01").submit();
      		}
      	});
      	$("#uptBtn").click(function(){ // calUpdate.do
      		if(confirm("수정하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calUpdate.do");
      			$("#frm01").submit();
      		}
      	});
      	$("#delBtn").click(function(){
      		if(confirm("삭제하시겠습니까?")){
      			$("#frm01").attr("action","${path}/calDelete.do");
      			$("#frm01").submit();
      		}
      	});
      	// 11:15~
      </script>
    </div>
  </div>
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
        <a href="calendar.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>














</body>
</html>