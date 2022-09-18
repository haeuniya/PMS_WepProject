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
<script type="text/javascript">
   $(document).ready(function(){
	
     <%--
    	var prjRate = []
		var prjno = []
		const ctx1 = document.getElementById('PrjNRate').getContext('2d');
		$.ajax({
			url:"${path}/getPrjNRate.do",
			dataType:"json",
			success:function(data){
				showData(data.prjrate)
				var data = data.prjRate
				$(data).each(function(idx, p){
				prjRate.push(Number(p.prjRate))
				prjno.push(p.prjno)
			})
				}
		});
		--%>
		var prjRate = []
		var prjno = []
		const ctx2 = document.getElementById('PrjRate').getContext('2d');
		$.ajax({
			url:"${path}/getPrjRate.do",
			dataType:"json",
			success:function(data){
				showData(data.prjrate)
				var data = data.prjRate
				$(data).each(function(idx, p){
				prjRate.push(Number(p.prjRate))
				prjno.push(p.prjno)
			})
			}
		});
		var cnt = []
		const ctx3 = document.getElementById('PrjHR').getContext('2d');
		$.ajax({
			url:"${path}/getPrjHR.do",
			dataType:"json",
			success:function(data){
				showData(data.prjemplist)
				var data = data.prjemplist
				$(data).each(function(idx, p){
				cnt.push(Number(p.cnt))
				prjno.push(p.prjno)
			})
			}
		});
		<%--
		const ctx4 = document.getElementById('Important').getContext('2d');
		$.ajax({
			url:"${path}/getImportant.do",
			dataType:"json",
			success:function(data){
				showData(data.important)
				var data = data.important
				$(data).each(function(idx, p){
				prjRate.push(Number(p.prjRate))
				prjno.push(p.prjno)
			})
			}
		});
		--%>
		var tot = []
		const ctx5 = document.getElementById('TotScore').getContext('2d');
		$.ajax({
			url:"${path}/getTotScore.do",
			dataType:"json",
			success:function(data){
				showData(data.prjscore)
				var data = data.prjscore
				$(data).each(function(idx, p){
				tot.push(Number(p.tot))
				prjno.push(p.prjno)
			})
			}
		});
		<%--
		var schdlScore = []
		var prjno = []
		const ctx6 = document.getElementById('SchdlScore').getContext('2d');
		$.ajax({
			url:"${path}/getSchdlScore.do",
			dataType:"json",
			success:function(data){
				showData(data.prjscore)
				var data = data.prjscore
				$(data).each(function(idx, p){
				schdlScore.push(Number(p.schdlScore))
				prjno.push(p.prjno)
			})
			}
		});
		var hrScore = []
		var prjno = []
		const ctx7 = document.getElementById('HrScore').getContext('2d');
		$.ajax({
			url:"${path}/getHrScore.do",
			dataType:"json",
			success:function(data){
				showData(data.prjscore)
				var data = data.prjscore
				$(data).each(function(idx, p){
				hrScore.push(Number(p.hrScore))
				prjno.push(p.prjno)
			})
			}
		});
		var commuScore = []
		var prjno = []
		const ctx8 = document.getElementById('CommuScore').getContext('2d');
		$.ajax({
			url:"${path}/getCommuScore.do",
			dataType:"json",
			success:function(data){
				showData(data.prjscore)
				var data = data.prjscore
				$(data).each(function(idx, p){
				commuScore.push(Number(p.commuScore))
				prjno.push(p.prjno)
			})
			}
		});
		var prjFinance = []
		var prjno = []
		const ctx9 = document.getElementById('PrjFinance').getContext('2d');
		$.ajax({
			url:"${path}/getPrjFinance.do",
			dataType:"json",
			success:function(data){
				showData(data.prjfinance)
				var data = data.prjfinance
				$(data).each(function(idx, p){
				prjFinance.push(Number(p.prjFinance))
				prjno.push(p.prjno)
			})
			}
		});
		var sal = []
		var prjno = []
		const ctx10 = document.getElementById('HRSal').getContext('2d');
		$.ajax({
			url:"${path}/getHRSal.do",
			dataType:"json",
			success:function(data){
				showData(data.hrsal)
				var data = data.hrsal
				$(data).each(function(idx, p){
				sal.push(Number(p.sal))
				prjno.push(p.prjno)
			})
			}
		});
		  --%>
   });
 
   function showData(prjRate){
		const ctx2 = document.getElementById('PrjRate').getContext('2d');
		//var data01 = [22, 29, 13, 15, 12, 3];
		const PrjRate = new Chart(ctx2, {
		    type: 'bar',
		    data: {
		        labels: prjno,
		        datasets: [{
		            label: '프로젝트별 진행상황',
		            data: prjRate,
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
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
		console.log(PrjRate)
		console.log(PrjRate.data.labels)
		console.log(PrjRate.data.datasets)


	}
</script>
</head>

<body>

<canvas id="PrjRate" style="height: 200px;"></canvas>
<script>


</script>



<canvas id="PrjHR" style="height: 200px;"></canvas>
<script>

function showData(prjemplist){
	const ctx3 = document.getElementById('PrjHR').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const PrjHR = new Chart(ctx3, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트별 참여 사원 수',
	            data: cnt,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(PrjHR)
	console.log(PrjHR.data.labels)
	console.log(PrjHR.data.datasets)

	function showData(prjscore){
		const ctx5 = document.getElementById('TotScore').getContext('2d');
		//var data01 = [22, 29, 13, 15, 12, 3];
		const TotScore = new Chart(ctx5, {
		    type: 'bar',
		    data: {
		        labels: prjno,
		        datasets: [{
		            label: '프로젝트별 종합 품질점수',
		            data: tot,
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
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
		console.log(TotScore)
		console.log(TotScore.data.labels)
		console.log(TotScore.data.datasets)

	}
}
function showData(prjfinance){
	const ctx9 = document.getElementById('PrjFinance').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const PrjFinance = new Chart(ctx9, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트별 예산',
	            data: prjfinance,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(PrjFinance)
	console.log(PrjFinance.data.labels)
	console.log(PrjFinance.data.datasets)

}
</script>
<canvas id="TotScore" style="height: 200px;"></canvas>
<script>


</script>
<canvas id="PrjFinance" style="height: 200px;"></canvas>
<script>


</script>
<%--
<canvas id="PrjNRate" style="height: 200px;"></canvas>
<script>

function showData(prjrate){
	const ctx1 = document.getElementById('PrjNRate').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const PrjNRate = new Chart(ctx1, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트A 진행상황',
	            data: prjRate,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(PrjNRate)
	console.log(PrjNRate.data.labels)
	console.log(PrjNRate.data.datasets)

}
</script>
<canvas id="SchdlScore" style="height: 200px;"></canvas>
<script>

function showData(prjscore){
	const ctx6 = document.getElementById('SchdlScore').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const SchdlScore = new Chart(ctx6, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트별 일정관리 품질점수',
	            data: schdlScore,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(SchdlScore)
	console.log(SchdlScore.data.labels)
	console.log(SchdlScore.data.datasets)

}
</script>
<canvas id="HrScore" style="height: 200px;"></canvas>
<script>

function showData(prjscore){
	const ctx7 = document.getElementById('HrScore').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const HrScore = new Chart(ctx7, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트별 인적관리 품질점수',
	            data: hrScore,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(HrScore)
	console.log(HrScore.data.labels)
	console.log(HrScore.data.datasets)

}
</script>
<canvas id="CommuScore" style="height: 200px;"></canvas>
<script>

function showData(prjscore){
	const ctx8 = document.getElementById('CommuScore').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const CommuScore = new Chart(ctx8, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '프로젝트별 의사소통관리 품질점수',
	            data: commuScore,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(CommuScore)
	console.log(CommuScore.data.labels)
	console.log(CommuScore.data.datasets)

}
</script>
<canvas id="HRSal" style="height: 200px;"></canvas>
<script>

function showData(hrsal){
	const ctx10 = document.getElementById('HRSal').getContext('2d');
	//var data01 = [22, 29, 13, 15, 12, 3];
	const HRSal = new Chart(ctx10, {
	    type: 'bar',
	    data: {
	        labels: prjno,
	        datasets: [{
	            label: '사원별 인건비',
	            data: sal,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
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
	console.log(HRSal)
	console.log(HRSal.data.labels)
	console.log(HRSal.data.datasets)

}
</script>

--%>

</body>
</html>