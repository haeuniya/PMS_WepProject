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
  <link href="${path }/Dashio/img/favicon.png" rel="icon">
  <link href="${path }/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path }/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path }/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
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
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="${path }/login.do" method="post">
        <h2 class="form-login-heading">로그인</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" placeholder="ID" name="id" autofocus>
          <br>
          <input type="password" class="form-control" placeholder="Password" name="pw">
          	<label class="checkbox">
            <h6>　　<input type="checkbox" value="remember-me"> ID 저장</h6>
            <span class="pull-right">
            <a data-toggle="modal" href="login.html#myModal"> 비밀번호를 잊으셨나요?</a>
            </span>
            </label>
          <button class="btn btn-theme btn-block" type="button" onclick="login()"><i class="fa fa-lock"></i> 로그인</button>
          <hr>
          <div class="registration">
            아직 계정이 없으신가요?<br/>
            <a href="http://localhost:7080/pms/register01.do">회원가입</a>
            <h1>${emp.id}</h1>
          </div>
        </div>
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Forgot Password ?</h4>
              </div>
              <div class="modal-body">
                <p>Enter your e-mail address below to reset your password.</p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                <button class="btn btn-theme" type="button">Submit</button>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path }/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path }/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="${path }/Dashio/lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("${path }/Dashio/img/login-bg.jpg", {
      speed: 500
    });
  </script>
  <script type="text/javascript">
	function login(){
		var idVal = $("[name=id]").val();
	    if(idVal == ""){
	    	alert("아이디를 입력하세요");
	    	$("[name=id]").focus();
	    	return;
	    }
	    var pwVal = $("[name=pw]").val();
	    if(pwVal == ""){
	    	alert("비밀번호를 입력하세요");
	    	$("[name=pw]").focus();
	    	return;
	    }
	    document.querySelector("form").submit();
	}
  
	var isLogin = "${isLogin}"
		if(isLogin=="Y"){
			location.href="http://localhost:7080/pms/profile.do"	// 임시 링크, 추후 메인화면(대시보드)로 연결 예정
		}
		if(isLogin=="N"){
			alert("${msg}")
		}
  </script>
</body>

</html>