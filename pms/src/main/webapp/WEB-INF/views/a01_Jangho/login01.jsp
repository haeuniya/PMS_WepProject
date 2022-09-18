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
      <form class="form-login" action="${path}/login.do" method="post">
        <h2 class="form-login-heading">로그인</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" placeholder="ID" name="id" autofocus>
          <br>
          <input type="password" class="form-control" placeholder="Password" name="pw">
          <br>
          <button class="btn btn-theme btn-block" id="loginBtn" type="button" onclick="login()"><i class="fa fa-lock"></i> 로그인</button>
          <hr>
          <div class="registration">
            <a href="${path}/register01.do">PM 회원가입</a>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path }/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path }/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="${path}/Dashio/lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("${path}/Dashio/img/login-bg.jpg", {
      speed: 500
    });
  </script>
  <script type="text/javascript">
	$(document).ready(function(){
		$('[name=id]').on('keypress', function(e){ 
		    if(e.keyCode == '13'){ 
		        $('#loginBtn').click(); 
		    }
		});
		$('[name=pw]').on('keypress', function(e){ 
		    if(e.keyCode == '13'){ 
		        $('#loginBtn').click(); 
		    }
		});
	});

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
			location.href="${path}/indexprjWhole.do"
		}
		if(isLogin=="N"){
			alert("${msg}")
		}
  </script>
</body>

</html>