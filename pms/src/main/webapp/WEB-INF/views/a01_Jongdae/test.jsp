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
<link rel="stylesheet" href="${path}/a00_Common/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_Common/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_Common/a00_com/jquery.min.js"></script>
<script src="${path}/a00_Common/a00_com/popper.min.js"></script>
<script src="${path}/a00_Common/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_Common/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:"${path}/ajaxCostPrj.do",
			dataType:"json",
			success:function(data){
				var list = data.costPrjList
				var addHTML = ""
				$(list).each(function(idx, cp){
					addHTML+="<tr><td>"+cp.prjName+"</td><td>"+cp.ename+"</td>"+
					"<td>"+cp.prjFinance+"</td><td>"+cp.prjNo+"</td>"+
					"<td>"+cp.prjFinance+"</td></tr>"
				})
				console.log(addHTML)
				$("#cpList").html(addHTML)	
			}
		})
	})
	function goDetail(prjno){
		location.href="${path}/rmList.do?prjno="+prjno;
	}
</script>
</head>

<body>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 비용 관리
				</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="mb">
							<form action="#" class="form-inline">
								<div class="form-group">
									<select name="sch" class="form-control">
										<option value="">선택해주세요</option>
										<option value="pjrName">프로젝트명</option>
									</select>
								</div>
								<div class="form-group">
									<input type="text" name="sch_text" class="form-control"
										placeholder="검색어 입력" />
								</div>
								<div class="form-group">
									<input type="button" id="vv" value="검색" class="btn btn-primary">
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-6">
						<div class="text-right mb">
						</div>
					</div>
					<div class="col-md-12">
						<div class="content-panel">
							<table class="table table-hover text-center">
							   	<col width="30%">
							   	<col width="10%">
							   	<col width="15%">
							   	<col width="15%">
							   	<col width="15%">
								<thead>
									<tr>
										<th class="text-center">프로젝트명</th>
										<th class="text-center">PM명</th>
										<th class="text-center">예산</th>
										<th class="text-center">인건비(월)</th>
										<th class="text-center">인건비 외</th>
									</tr>
								</thead>
								<tbody id="cpList">
                                </tbody>
							</table>
						</div>
					</div>
					<div class="col-md-6">
						<div class="text-right mt">
							<ul class="pagination" id="pagination">
								<li class="page-item"><a class="page-link" href="${path}/Dashio/#">이전</a></li>
								<li class="page-item active"><a class="page-link" href="${path}/Dashio/#">1</a></li>
								<li class="page-item"><a class="page-link" href="${path}/Dashio/#">2</a></li>
								<li class="page-item"><a class="page-link" href="${path}/Dashio/#">3</a></li>
								<li class="page-item"><a class="page-link" href="${path}/Dashio/#">다음</a></li>
							</ul>
						</div>
					</div>
					<!-- /col-md-12 -->
				</div>
				<!-- row -->
			</section>
		</section>

</body>

</html>
