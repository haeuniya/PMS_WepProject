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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
	});
	function goDetail(prjNo){
		location.href="${path}/prj.do?method=detail&prjno="+prjNo;
	}
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 >사원정보</h2>

</div>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input name="" value="" class="form-control mr-sm-2" placeholder="프로젝트번호 입력" />
	    <input name="" value=""  class="form-control mr-sm-2" placeholder="프로젝트명 입력" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="5%">
   	<col width="15%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
   	<col width="15%">
   	<col width="15%">
   	<col width="15%">
    <thead>
    
      <tr class="table-success text-center">
        <th>no</th>
        <th>프로젝트번호</th>
        <th>프로젝트명</th>
        <th>상태</th>
        <th>중요도</th>
        <th>남은기간</th>
        <th>시작일</th>
        <th>종료일</th>
      </tr>
    </thead>	
    <%--
 	function goDetail(empno){
		location.href="${path}/emp.do?method=detail&empno="+empno;
	}   
    
     --%>
    <tbody>
    	<c:forEach var="prj" items="${prjList}">
    	<tr ondblclick="goDetail(${prj.prjNo})"><td>${prj.prjName}</td><td>${prj.prjGoal}</td>
    		<td>${pr.output}</td><td>${emp.sal }</td>
    		<td>${emp.deptno}</td></tr>
    	</c:forEach>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    </tbody>
	</table>    
    
</div>

</body>
</html>