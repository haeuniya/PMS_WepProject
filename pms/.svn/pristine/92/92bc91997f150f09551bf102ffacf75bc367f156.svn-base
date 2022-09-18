package pms.a01_Yeji.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Yeji.a02_Service.DashboardService;



@Controller
public class DashboardController {
	@Autowired(required = false)
	private DashboardService service;
	
	// 프로젝트 대시보드
	//http://localhost:7080/pms/indexprj1.do
	@RequestMapping("indexprj1.do")
	public String indexprj1(Model d) {
		
		return "WEB-INF\\views\\a01_Yeji\\indexPrj1.jsp";
	}
	// 전체 대시보드
	//http://localhost:7080/pms/indexprjWhole.do
	@RequestMapping("indexprjWhole.do")
	public String indexprjWhole(Model d) {
		
		return "WEB-INF\\views\\a01_Yeji\\indexPrjWhole.jsp";
	}

// 차트만 띄워보는 페이지
	//http://localhost:7080/pms/chart.do
	@RequestMapping("chart.do")
	public String chart(Model d) {
		
		return "WEB-INF\\views\\a01_Yeji\\chart.jsp";
	}
	//http://localhost:7080/pms/chart2.do
	@RequestMapping("chart2.do")
	public String chart2(Model d) {
		
		return "WEB-INF\\views\\a01_Yeji\\chart2.jsp";
	}
	//http://localhost:7080/pms/getPrjNRate.do?prjno=P1000
	// 프로젝트n(P100n) 진행상황
	@RequestMapping("getPrjNRate.do")
	public String getPrjNRate(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjrate",service.getPrjNRate(prjno));
		return "pageJsonReport";
	}
	
	// 전체 프로젝트 진행상황
	@RequestMapping("getPrjRate.do")
	public String getPrjRate(Model d){                 
		d.addAttribute("prjrate",service.getPrjRate());
		return "pageJsonReport";
	}
	
	// 프로젝트별 참여인원수
	@RequestMapping("getPrjHR.do")
	public String getPrjHR(Model d){                 
		d.addAttribute("prjemplist",service.getPrjHR());
		return "pageJsonReport";
	}
	
	// 직책별 사원수
	@RequestMapping("getJobCnt.do")
	public String getJobCnt(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("jobcnt",service.getJobCnt(prjno));
		return "pageJsonReport";
	}
	
	// 프로젝트별 종합 품질점수
	@RequestMapping("getTotScore.do")
	public String getTotScore(Model d){                 
		d.addAttribute("prjscore",service.getTotScore());
		return "pageJsonReport";
	}
	
	// 일정관리 품질점수
	@RequestMapping("getSchdlScore.do")
	public String getSchdlScore(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjscore",service.getSchdlScore(prjno));
		return "pageJsonReport";
	}
	
	// 인적자원 품질점수
	@RequestMapping("getHrScore.do")
	public String getHrScore(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjscore",service.getHrScore(prjno));
		return "pageJsonReport";
	}
	// 비용관리 품질점수
	@RequestMapping("getCostScore.do")
	public String getCostScore(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjscore",service.getCostScore(prjno));
		return "pageJsonReport";
	}
	
	// 의사소통 품질점수
	@RequestMapping("getCommuScore.do")
	public String getCommuScore(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjscore",service.getCommuScore(prjno));
		return "pageJsonReport";
	}
	// 4개 품질점수
	@RequestMapping("get4Score.do")
	public String get4Score(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("prjscore",service.get4Score(prjno));
		return "pageJsonReport";
	}
	
	// 비용관리 프로젝트별 예산
	@RequestMapping("getPrjFinance.do")
	public String getPrjFinance(Model d){                 
		d.addAttribute("prjfinance",service.getPrjFinance());
		return "pageJsonReport";
	}
	
	// 비용관리 사원별 인건비
	@RequestMapping("getHRSal.do")
	public String getHRSal(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("hrsal",service.getHRSal(prjno));
		return "pageJsonReport";
	}
	// 팀 멤버 리스트
	@RequestMapping("getTeamMember.do")
	public String getTeamMember(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("teammember",service.getTeamMember(prjno));
		return "pageJsonReport";
	}
	// 시정조치 단계
	@RequestMapping("getRplanStep.do")
	public String getRplanStep(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("rplanstep",service.getRplanStep(prjno));
		return "pageJsonReport";
	}
	// 전체 프로젝트 위험정도 수
	@RequestMapping("getRiskDeg.do")
	public String getRiskDeg(Model d){                 
		d.addAttribute("riskdeg",service.getRiskDeg());
		return "pageJsonReport";
	}
	/*
	@RequestMapping("tot1.do")
	public String tot1(@RequestParam("prjno") String prjno ,Model d){                 
		d.addAttribute("hrsal",service.getHRSal(prjno));
		d.addAttribute("prjscore",service.getCommuScore(prjno));
		d.addAttribute("prjscore",service.getCostScore(prjno));
		d.addAttribute("prjscore",service.getHrScore(prjno));
		d.addAttribute("prjscore",service.getSchdlScore(prjno));
		d.addAttribute("important",service.getImportant(prjno));
		return "pageJsonReport";
	}
	@RequestMapping("tot2.do")
	public String tot2(Model d){                 
		d.addAttribute("prjscore",service.getTotScore());
		d.addAttribute("prjemplist",service.getPrjHR());
		d.addAttribute("prjfinance",service.getPrjFinance());
		d.addAttribute("prjrate",service.getPrjRate());
		return "pageJsonReport";
	}
	*/
	
}
