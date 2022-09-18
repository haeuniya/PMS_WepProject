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
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
	});

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
      <h3>　<i class="fa fa-angle-right"></i> 인적자원 <i class="fa fa-angle-right"></i> 인적자원 관리 <i class="fa fa-angle-right"></i> 사원 등록</h3>
      <!--ADVANCED FILE INPUT-->
      <div class="row mt" id="row mt">
		          <div class="col-lg-12">
		            <div class="form-panel">
      
		<!-- FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
           
            <!-- /tab-pane -->
                  <div id="edit" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Personal Information</h4>
                        <form class="form-horizontal" id="eform" enctype="multipart/form-data" action="${path}/empInsert.do" method="post">
                        <div class="form-group last">
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label"style="color:blue;">아이디*</label>
                            <div class="col-lg-6">
                            	<div class="form-inline">
                              		<input type="text" id="id" name="id" class="form-control"
                              			value="" placeholder="아이디를 입력하세요">
                              		<input type="button" class="btn btn-theme03" name="idDuplConfirm" value="중복 확인">
                              		<input type="hidden" name="idConfirm" value="idCheck">
                              		<span class="help-block">* 아이디를 8자 이상, 16자 이하로 입력해주세요.</span>
                              		<h5 id="idMsg">　</h5>
                              	</div>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">비밀번호*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="비밀번호를 입력하세요" name="pw" id="c-name" class="form-control" value=""/> 
                              <span class="help-block">* 비밀번호를 8자 이상, 16자 이하로 입력해주세요.</span>
                          	 	<h5 id="pwMsg">　</h5>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">이름*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="이름을 입력하세요" name="ename" id="c-name" class="form-control" value=""/>
                            </div>
                          </div>                         
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">성별*</label>
                            <div class="col-lg-6">
                            	<input type="radio" name="gender" value="남자"/> 남자　
								<input type="radio" name="gender" value="여자"/> 여자
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">생년월일*</label>
                            <div class="col-lg-6">
                              <input type="date" name="birthS" placeholder="생년월일을 입력하세요" class="form-control" 
								value='<fmt:formatDate value="" 
								pattern="yyyy-MM-dd"/>'/>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">직책*</label>
                            <div class="col-lg-6">                            
                              <select name="job">
                              	<option value="" selected>=====선택=====</option>
                              	<option value="사원">사원</option>
                              	<option value="대리">대리</option>
                              	<option value="과장">과장</option>
                              	<option value="PM">PM</option>
                              	<option value="임원">임원</option>
                              </select>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">권한*</label>
                            <div class="col-lg-6">
                              <select name="auth">
                              	<option value="" selected>=====선택=====</option>
                             	<option value="사원">사원</option>
                              	<option value="PM">PM</option>
                              	<option value="임원">임원</option>
                              </select>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">부서*</label>         
                            <div class="col-lg-6">
                              <select name="deptno">
                              	<option value="" selected>=====선택=====</option>
                              	<option value="10">IT 사업부</option>
                              	<option value="20">백엔드 개발</option>
                              	<option value="30">프론트엔드 개발</option>
                              </select>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">관리자번호</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="관리자번호를 입력하세요" name="mgr" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">입사일*</label>
                            <div class="col-lg-6">
                              <input type="date" name="hiredateS" placeholder="입사일" class="form-control"  
								value='<fmt:formatDate value="" 
								pattern="yyyy-MM-dd"/>'/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">연봉*</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="연봉을 입력하세요" name="sal" id="country" class="form-control" value=""/>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">중요도*</label>
                            <div class="col-lg-6">
                              <select name="eImportant">
                              	<option value="" selected>=====선택=====</option>
                              	<option value="상">상</option>
                              	<option value="중">중</option>
                              	<option value="하">하</option>
                              </select>
                            </div>
                          </div>
                          
                          <div class="form-group">
	                            <label class="col-lg-2 control-label">프로필 사진</label>
	                            <div class="col-lg-6">
	                              <input type="file" id="eimage" name="report" class="file-pos">
	                            </div>
	                          </div>
                                                              
                          <h4 class="mb">Contact Information</h4>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">주소</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="주소를 입력하세요" name="address" id="addr1" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연락처</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="전화번호를 입력하세요 (010-0000-0000)" name="phoneNum" id="cell" class="form-control" value=""/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:blue;">이메일*</label>
                            <div class="col-lg-6">
                              <span class="tooltip">이메일 형식을 지켜주세요.</span>
                              <input type="text" placeholder="이메일을 입력하세요" name="email" id="email" class="form-control" value=""/>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label" style="color:white">content</label>
                            <div class="col-lg-6">
                              <input type="hidden" placeholder=" " id="skype" name="content" class="form-control">
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" type="button" onclick="insertProc()">등록</button>
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
		          </div>
		          <!-- /col-lg-12 -->
		        </div>
		        

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
  <!-- js placed at the end of the document so the pages load faster -->
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
			if(pwVal.length>=8 && pwVal.length<=16){
				$("#pwMsg").text("유효한 비밀번호 입니다.").css("color","green")
			} else {
				$("#pwMsg").text("유효하지 않은 비밀번호 입니다.").css("color","red")
			}
		});
	})
  
  var isInsert = "${isInsert}"
	  if(isInsert=="Y"){
		alert("등록 성공했습니다!")
		location.href="${path}/empList.do"
	  }
  
  function goMain(){
	  location.href="${path}/empList.do";
  }
  
  function insertProc(){
	  if(confirm("등록하시겠습니까?")){
		  var idVal = $("[name=id]").val();
		  if(idVal == ""){
			  alert("임시 아이디를 입력하세요");
			  $("[name=id]").focus();
			  return;
		  }
		  if(!(idVal.length>=8 && idVal.length<=16)){
	    	  alert("유효하지 않은 아이디 입니다.");
	    	  $("[name=id]").focus();
	    	  return;
	      }
		  var idConfirmVal = $("[name=idConfirm]").val();
		  if(idConfirmVal == "idUncheck"){
	    	  alert("아이디를 중복 확인 하세요.")
	    	  return;
	      }
		  
		  var pwVal = $("[name=pw]").val();
		  if(pwVal == ""){
			  alert("임시 비밀번호를 입력하세요");
			  $("[name=pw]").focus();
			  return;
		  }
		  if(!(pwVal.length>=8 && pwVal.length<=16)){
		      alert("유효하지 않은 비밀번호 입니다.");
		      $("[name=pw]").focus();
		      return;
		  }
		  
		  var enameVal = $("[name=ename]").val();
		  if(enameVal == ""){
			  alert("이름을 입력하세요");
			  $("[name=ename]").focus();
			  return;
		  }
		  var genderVal = $("[name=gender]").val();
		  if(genderVal == ""){
		     alert("성별을 선택하세요");
		     $("[name=gender]").focus();
		     return;
		  }
		  var birthVal = $("[name=birthS]").val();
		  if(birthVal == ""){
		     alert("생년월일을 선택하세요");
		     $("[name=birthS]").focus();
		     return;
		  }
		  var jobVal = $("[name=job]").val();
		  if(jobVal == ""){
		     alert("직책을 선택하세요");
		     $("[name=job]").focus();
		     return;
		  }
		  var authVal = $("[name=auth]").val();
		  if(authVal == ""){
		     alert("권한을 선택하세요");
		     $("[name=auth]").focus();
		     return;
		  }
		  var deptnoVal = $("[name=deptno]").val();
		  if(deptnoVal == ""){
		     alert("부서를 선택하세요");
		     $("[name=deptno]").focus();
		     return;
		  }
		  var hiredateVal = $("[name=hiredateS]").val();
		  if(hiredateVal == ""){
		     alert("입사일을 선택하세요");
		     $("[name=hiredateS]").focus();
		     return;
		  }
		  var salVal = $("[name=sal]").val();
		  var regExp = /^[0-9]*$/;
		  if(salVal == ""){
			  alert("연봉을 입력하세요");
			  $("[name=sal]").focus();
			  return;
		  }
		  if(!salVal.match(regExp)){
			  alert("연봉은 숫자형으로 입력해주세요");
			  $("[name=sal]").focus();
			  return;
		  }
		  var eImportantVal = $("[name=eImportant]").val();
		  if(eImportantVal == ""){
			  alert("중요도를 선택하세요");
			  $("[name=eImportant]").focus();
			  return;
		  }
		  var emailVal = $("[name=email]").val();
		  if(emailVal == ""){
			  alert("이메일을 입력하세요");
			  $("[name=email]").focus();
			  return;
		  }
		  var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		  if(!emailVal.match(emailPattern)){
				alert("이메일 형식이 올바르지 않습니다.")
				$("[name=email]").focus();
				return
		  }
		  
		  /*
		  var pwPattern = /^(?=.*[a-z])(?=.*\d)[a-z0-9_-]{5,15}$/;
		  if(pswd1Obj.length < 5 || pswd1Obj.length > 15 || !pswd1Obj.value.match(pwPattern)){
				alert("비밀번호는 5~15자 영문+숫자 조합입니다.");
				pswd1Obj.focus();
				return
			}
		  */
		  
		  document.querySelector("#eform").submit();
	  }
  }
  
  

  </script>
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
