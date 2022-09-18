<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<script src="${path}/Dashio/lib/chart-master/Chart.js"></script>

<!-- chart js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<!--script for this page-->
<script src="${path}/Dashio/lib/xchart/d3.v3.min.js"></script>
<script src="${path}/Dashio/lib/xchart/xcharts.min.js"></script>
<script src="${path}/js/chartjs.js"></script>
	<!--script for this page-->
<script src="${path}/Dashio/lib/sparkline-chart.js"></script>
<script src="${path}/Dashio/lib/zabuto_calendar.js"></script>
	<!-- js placed at the end of the document so the pages load faster -->
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
</head>

<body>


	<!-- 전체 프로젝트 진행상황 -->
	<canvas id="PrjRate" style="height: 100px;"></canvas>
	<script>
    var prjRate1 = []
    var prjno1 = []
	$.ajax({
		url:"${path}/getPrjRate.do",
		dataType:"json",
		success:function(data){
			var data = data.prjrate
			$(data).each(function(idx, p){
				prjRate1.push(Number(p.prjRate))
				prjno1.push(p.prjno)
			})
			 new Chart(document.querySelector('#PrjRate'), {
				    type: 'bar',
				    data: {
				      labels: prjno1,
				      datasets: [{
				        label: '프로젝트별 진행상황',
				        data: prjRate1,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 100
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

	<canvas id="PrjHR" style="height: 100px;"></canvas>
	<script>
    var cnt = []
	var prjno2 = []
	$.ajax({
		url:"${path}/getPrjHR.do",
		dataType:"json",
		success:function(data){
			var data = data.prjemplist
			$(data).each(function(idx, p){
				cnt.push(Number(p.cnt))
				prjno2.push(p.prjno)
			})
			 new Chart(document.querySelector('#PrjHR'), {
				    type: 'bar',
				    data: {

				      labels: prjno2,
				      datasets: [{
				        label: '프로젝트별 참여 사원 수',
				        data: cnt,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 20
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

	<canvas id="PrjFinance" style="height: 100px;"></canvas>
	<script>
    var prjfinance = []
	var prjno3 = []
	$.ajax({
		url:"${path}/getPrjFinance.do",
		dataType:"json",
		success:function(data){
			var data = data.prjfinance
			$(data).each(function(idx, p){
				prjfinance.push(Number(p.prjfinance))
				prjno3.push(p.prjno)
			})
			 new Chart(document.querySelector('#PrjFinance'), {
				    type: 'bar',
				    data: {
				      labels: prjno3,
				      datasets: [{
				        label: '프로젝트별 예산',
				        data: prjfinance,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 9999
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

	<!-- 프로젝트별 종합 품질점수 -->
	
	<canvas id="TotScore" style="height: 100px;"></canvas>
	<script>
    var tot = []
    var prjno9 = []
	$.ajax({
		url:"${path}/getTotScore.do",
		dataType:"json",
		success:function(data){
			var data = data.prjscore
			$(data).each(function(idx, p){
				tot.push(Number(p.tot))
				prjno9.push(p.prjno)
				
		
			})
			 new Chart(document.querySelector('#TotScore'), {
				    type: 'doughnut',
				    data: {
				      labels: prjno9,
				      datasets: [{
				        label: '품질점수 평균',
				        data: tot,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
						hoverOffset: 4
				
				      }]
				    },
	
				  });
		}
	})
	 

</script>

<!-- 각 프로젝트 대시보드 -->

	<!-- 프로젝트P100N 진행상황 -->
	
	<canvas id="PrjNRate" style="height: 100px;"></canvas>
	<script>
    var prjRate2 = []
    var prjno4 = []
    var prjno = "${param.prjno}"
	$.ajax({
		url:"${path}/getPrjNRate.do?prjno="+prjno,
		dataType:"json",
		success:function(data){
			var data = data.prjrate
			$(data).each(function(idx, p){
				prjRate2.push(Number(p.prjRate))
				prjno4.push(p.prjno)
			})
			 new Chart(document.querySelector('#PrjNRate'), {
				    type: 'horizontalBar',
				    data: {
				      labels: prjno4,
				      datasets: [{
				        label: '프로젝트별 진행상황',
				        data: prjRate2,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  XAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 100
				    		  }
				    	  }]
				      }
				    }
				  }); 
		}
	})
	 

</script>


	<!-- 프로젝트P100N 일정관리 품질점수 -->
	
	<canvas id="Score4" style="height: 100px;"></canvas>
	<script>
    var scores = []
    var prjno = "${param.prjno}"
	$.ajax({
		url:"${path}/get4Score.do?prjno="+prjno,
		dataType:"json",
		success:function(data){
			var data = data.prjscore
			$(data).each(function(idx, p){
				scores.push(Number(p.schdlScore),
						Number(p.hrScore),				
						Number(p.costScore),
						Number(p.commuScore),
						
				)
		
			})
			 new Chart(document.querySelector('#Score4'), {
				    type: 'doughnut',
				    data: {
				      labels: ['일정관리', '인적자원관리','비용관리', '의사소통관리'],
				      datasets: [{
				        label: '품질점수',
				        data: scores,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
						hoverOffset: 4
				
				      }]
				    },
	
				  });
		}
	})
	 

</script>


	<!-- 직책별 사원수 -->
	<canvas id="JobCnt" style="height: 100px;"></canvas>
	<script>
    var jobcnt = []
	var job = []
    var prjno = "${param.prjno}"
	$.ajax({
		url:"${path}/getJobCnt.do?prjno="+prjno,
		dataType:"json",
		success:function(data){
			var data = data.jobcnt
			$(data).each(function(idx, p){
				jobcnt.push(Number(p.jobcnt))
				job.push(p.job)
			})
			 new Chart(document.querySelector('#JobCnt'), {
				    type: 'bar',
				    data: {
				      labels: job,
				      datasets: [{
				        label: '직책별 사원 수',
				        data: jobcnt,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
				        borderColor: [
				          'rgb(255, 99, 132)',
				          'rgb(255, 159, 64)',
				          'rgb(255, 205, 86)',
				          'rgb(75, 192, 192)',
				          'rgb(54, 162, 235)',
				          'rgb(153, 102, 255)',
				          'rgb(201, 203, 207)'
				        ],
				        borderWidth: 1
				      }]
				    },
				    options: {
				      scales: {
				    	  yAxes: [{
				    		  ticks:{
				    			  beginAtZero: true,
				    			  max: 10
				    		  }
				    	  }]
				      }
				    }
				  });
		}
	})
	 

</script>

	<!-- 사원별 인건비 -->
	
	<canvas id="HRSal" style="height: 100px;"></canvas>
	<script>
    var sals = []
	var ename = []
    var prjno = "${param.prjno}"
	$.ajax({
		url:"${path}/getHRSal.do?prjno="+prjno,
		dataType:"json",
		success:function(data){
			var data = data.hrsal
			$(data).each(function(idx, p){
				sals.push(Number(p.sal))
				ename.push(p.ename)
			})
		
			
			 new Chart(document.querySelector('#HRSal'), {
				    type: 'pie',
				    data: {
				      labels: ename,
				      datasets: [{
				        label: '인건비',
				        data: sals,
				        backgroundColor: [
				          'rgba(255, 99, 132, 0.2)',
				          'rgba(255, 159, 64, 0.2)',
				          'rgba(255, 205, 86, 0.2)',
				          'rgba(75, 192, 192, 0.2)',
				          'rgba(54, 162, 235, 0.2)',
				          'rgba(153, 102, 255, 0.2)',
				          'rgba(201, 203, 207, 0.2)'
				        ],
						hoverOffset: 4
				
				      }]
				    },
	
				  });
		}
	})
	 

</script>
	 

</body>
</html>