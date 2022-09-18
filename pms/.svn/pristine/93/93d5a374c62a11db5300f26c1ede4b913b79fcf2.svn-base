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
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
</head>

<script type="text/javascript">

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
      <a href="${path}/loginPage.do" class="logo"><b>AEAP<span>PMS</span></b></a>
      <!--logo end-->
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
      <section class="wrapper">
      	<br>
        <h3>　<i class="fa fa-angle-right"></i> 회원 가입 <i class="fa fa-angle-right"></i> 회원 정보 입력</h3>
		<form class="form-horizontal style-form" enctype="multipart/form-data" action="${path}/registerInsert.do" method="post">
	        <!-- 회원 정보 -->
	        <div class="row mt">
	          <div class="col-lg-12">
	            <div class="form-panel">
	              <h4 class="mb">　<i class="fa fa-angle-right"></i> 회원 정보</h4>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　아이디*</label>
	                  <div class="col-sm-5">
	                  	<div class="form-inline">
	                      <input type="text" class="form-control" name="id">
	                      <input type="button" class="btn btn-theme03" name="idDuplConfirm" value="중복 확인">
	                      <span class="help-block">* 아이디를 8자 이상, 16자 이하로 입력해주세요.</span>
	                      <input type="hidden" name="idConfirm" value="idUncheck">
	                      <h5 id="idMsg">　</h5>
	                  	</div>
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　비밀번호*</label>
	                  <div class="col-sm-5">
	                    <input type="password" class="form-control" name="pw">
	                    <span class="help-block">* 비밀번호를 8자 이상, 16자 이하로 입력해주세요.</span>
	                    <h5 id="pwMsg">　</h5>
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　비밀번호 확인*</label>
	                  <div class="col-sm-5">
	                    <input type="password" class="form-control" name="pw_confirm">
	                    <span class="help-block">* 위 비밀번호와 같은 값을 입력해주세요.</span>
	                    <h5 id="pw_confirmMsg">　</h5>
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　이름*</label>
	                  <div class="col-sm-5">
	                    <input type="text" class="form-control" name="ename">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　성별</label>
	                  <div class="col-sm-5">
	                    <input type="radio" name="gender" value="남자"/> 남자　
						<input type="radio" name="gender" value="여자"/> 여자
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　생년월일*</label>
	                  <div class="col-sm-5">
	                  	<input type="date" name="birthS" class="form-control" 
								value='<fmt:formatDate value="" pattern="YYYY-MM-DD"/>'/>
	               		<span class="help-block">* 생년월일을 선택하세요.</span>
	                  </div>
	                </div>
	                
	                <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　직책*</label>
                       <div class="col-sm-5">
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
	                  <label class="col-sm-2 col-sm-2 control-label">　　　권한*</label>
	                  <div class="col-sm-5">
	                    <input type="text" class="form-control" name="auth" value="PM" readonly>
	                  </div>
	                </div>
                          
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　부서*</label>
                       <div class="col-sm-5">
                          <select name="deptno">
                          	<option value="" selected>=====선택=====</option>
                          	<option value="10">IT 사업부</option>
                          	<option value="20">백엔드 개발</option>
                          	<option value="30">프론트엔드 개발</option>
                          </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　관리자번호</label>
                       <div class="col-sm-5">
                        	<input type="text" placeholder="관리자번호를 입력하세요" name="mgr" id="country" class="form-control" value=""/>
                        </div>
                    </div>
                          
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　입사일*</label>
                       <div class="col-sm-5">
                          <input type="date" name="hiredateS" placeholder="입사일" class="form-control"  
								value='<fmt:formatDate value="" pattern="yyyy-MM-dd"/>'/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　연봉*</label>
                       <div class="col-sm-5">
                          <input type="text" placeholder="연봉을 입력하세요" name="sal" id="country" class="form-control" value=""/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　중요도*</label>
                       <div class="col-sm-5">
                          <select name="eImportant">
                          	<option value="" selected>=====선택=====</option>
                          	<option value="상">상</option>
                          	<option value="중">중</option>
                          	<option value="하">하</option>
                          </select>
                       </div>
                    </div>
                    
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　프로필 사진</label>
                       <div class="col-sm-5">
                          <input type="file" id="eimage" name="report" class="file-pos">
                        </div>
                    </div>
                    
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label">　　　소개글</label>
                       <div class="col-sm-5">
                          <input type="text" id="description" name="description" class="form-control">
                       </div>
                    </div>
                    
	            </div>
	          </div>
	        </div>
	        
	        <!-- 연락처 정보 -->
	        <div class="row mt">
	          <div class="col-lg-12">
	            <div class="form-panel">
	              <h4 class="mb">　<i class="fa fa-angle-right"></i> 연락처 정보</h4>
	              	<div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　주소</label>
	                  <div class="col-sm-5">
	                    <input type="text" class="form-control" name="address">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　전화번호</label>
	                  <div class="col-sm-5">
	                    <input type="text" class="form-control" name="phoneNum">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label class="col-sm-2 col-sm-2 control-label">　　　이메일*</label>
	                  <div class="col-sm-5">
	                    <input type="text" class="form-control" name="email">
	                  </div>
	                </div>
	            </div>
	          </div>
	        </div>
		</form>
        <!-- /row --><!-- col-lg-12-->
        <br>
        <center><input type="button" class="btn btn-default" onclick="check()" value="가입 완료"></center>
      </section>
      <!-- /wrapper -->
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
        <a href="form_component.html#" class="go-top">
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
  <!--custom switch-->
  <script src="${path}/Dashio/lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="${path}/Dashio/lib/jquery.tagsinput.js"></script>
  <!--custom checkbox & radio-->
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
  
  <script src="${path}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="${path}/Dashio/lib/advanced-form-components.js"></script>
  
  <script src="${path}/Dashio/lib/form-component.js"></script>

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
	   if(confirm("회원가입 하시겠습니까?")){
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
		  var regExp = /^[0-9]*$/;
		  var eImportantVal = $("[name=eImportant]").val();
		  var emailVal = $("[name=email]").val();
		  var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	      if(idVal == ""){
	          alert("아이디를 입력하세요.");
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
	          alert("비밀번호를 입력하세요.");
	          $("[name=pw]").focus();
	          return;
	      }
	      if(!(pwVal.length>=8 && pwVal.length<=16)){
		      alert("유효하지 않은 비밀번호 입니다.");
		      $("[name=pw]").focus();
		      return;
		  }
	      if(pw_confirmVal == ""){
	          alert("비밀번호 확인을 입력하세요.");
	          $("[name=pw_confirm]").focus();
	          return;
	      }
	      if(pw_confirmVal != pwVal){
		      alert("비밀번호 확인이 비밀번호와 일치하지 않습니다.");
		      $("[name=pw_confirm]").focus();
		      return;
		  }
	      
	      if(enameVal == ""){
	         alert("이름을 입력하세요.");
	         $("[name=ename]").focus();
	         return;
	      }
	      if(genderVal == ""){
	         alert("성별을 선택하세요.");
	         $("[name=gender]").focus();
	         return;
	      }
	      if(birthVal == ""){
	         alert("생년월일을 선택하세요.");
	         $("[name=birth]").focus();
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
		  if(!salVal.match(regExp)){
			  alert("연봉은 숫자형으로 입력해주세요");
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
	      	alert("회원가입 완료!\n로그인 화면으로 이동합니다.")
	      	document.querySelector("form").submit();
	      }
	   }
	
var isInsert = "${isInsert}"
    if(isInsert=="Y"){
    	location.href="${path}/loginPage.do"
    }

</script>


</body>

</html>
