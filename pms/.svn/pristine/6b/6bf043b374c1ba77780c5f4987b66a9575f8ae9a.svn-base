package pms.a01_Haeun.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Haeun.a02_Service.ProjectService;
import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.PrjEmp;
import pms.a01_Haeun.a04_VO.Project;


@Controller
public class ProjectController {
	@Autowired(required = false)
	private ProjectService service;

	// 프로젝트리스트
	// http://106.10.18.69:3030/pms/prjList.do
	//http://localhost:7080/pms/prjList.do
	@RequestMapping("prjList.do")
	public String prjList(Project sch, Model d) {
		System.out.println("test");
		d.addAttribute("prjList", service.getProjectList(sch));
		System.out.println("test2");
		return "WEB-INF\\views\\a01_Haeun\\c01_projectList.jsp";
	}	

	
	// 프로젝트 인적자원 리스트 페이지
	// http://localhost:7080/pms/prjEmpManage.do
	@RequestMapping("prjEmpManage.do")
	public String prjEmpList(Project sch, Model d) {
		d.addAttribute("prjList", service.getProjectList(sch));
		return "WEB-INF\\views\\a01_Haeun\\prjEmpList.jsp";
	}	
	// 프로젝트 리스트 json Data
	// http://localhost:7080/pms/ajaxPrj.do
	// http://localhost:7080/pms/ajaxPrj.do?prjNo=P1000
	@RequestMapping("ajaxPrj.do")
	public String ajaxPrj(String prjNo, Model d) {
		d.addAttribute("ajaxPrj", service.getPrjEmpList(prjNo));
		return "pageJsonReport";
	}
	// 프로젝트 인적자원 수정 폼
	// http://localhost:7080/pms/UptPrjEmpForm.do?prjNo=P1000
	@RequestMapping("UptPrjEmpForm.do")
	public String UptPrjEmpForm(@RequestParam("prjNo") String prjNo, Model d) {
		d.addAttribute("uptEmpPrj", service.getUptFormPrj(prjNo));
		d.addAttribute("prjEmp", service.getPrjEmpList(prjNo));
		return "WEB-INF\\views\\a01_Haeun\\projectEmpIns.jsp";
	}
	// http://localhost:7080/pms/ajaxUptPrjEmpForm.do?prjNo=P1000
	@RequestMapping("ajaxUptPrjEmpForm.do")
	public String ajaxUptPrjEmpForm(@RequestParam("prjNo") String prjNo, Model d) {
		d.addAttribute("prjEmp", service.getPrjEmpList(prjNo));
		return "pageJsonReport";
	}
	
	
	
	
	
	// 프로젝트 인적자원 수정
	// http://localhost:7080/pms/UptPrjEmp.do
	@RequestMapping("insPrjEmp.do")
	public String insPrjEmp(PrjEmp ins, Model d) {
		service.insertPrjEmp(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Haeun\\projectEmpIns.jsp";
	}
	@RequestMapping("delEmp.do")
	public String delEmp(PrjEmp del, Model d) {
		service.delEmp(del);
		return "redirect:/prjEmpList.do";
	}
	// http://localhost:7080/pms/showEmp.do
	@RequestMapping("showEmp.do")
	public String showEmp(@RequestParam("prjNo") String prjNo, Model d) {
		d.addAttribute("empList", service.getEmpN(prjNo));
		return "pageJsonReport";
	}
	
	
	
	
	
	// 프로젝트 등록 form
	// http://106.10.18.69:5050/pms/prjInsertForm.do
	// http://localhost:7080/pms/prjInsertForm.do
	@RequestMapping("prjInsertForm.do")
	public String prjInsertForm() {
		System.out.println("등록 시도");
		return "WEB-INF\\views\\a01_Haeun\\c03_prjInsertTest.jsp";
	}
	// 프로젝트 수정 form
	// http://localhost:7080/pms/updatePrjForm.do?prjNo=P1004
	@RequestMapping("updatePrjForm.do")
	public String updatePrjForm(@RequestParam("prjNo") String prjNo, Model d) {
		d.addAttribute("uptPrj", service.getUptFormPrj(prjNo));
		return "WEB-INF\\views\\a01_Haeun\\prjUpdate.jsp";
	}
	@RequestMapping("updatePrj.do")
	public String updatePrj(Project upt, Model d) {
		service.updatePrj(upt);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Haeun\\prjUpdate.jsp";
	}
	
	
	@RequestMapping("prjInsert.do")
	public String prjInsert(Project ins, Model d) {
		System.out.println("등록:"+ins.getPrjName());
		service.insertPrj(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Haeun\\c03_prjInsertTest.jsp";
	}
	// http://localhost:7080/pms/prjCalendar.do
	// 캘린더로 이동
	@RequestMapping("prjCalendar.do")
	public String prjCalendar(@RequestParam("prjNo") String prjNo, Model d) {
		System.out.println(prjNo);
		d.addAttribute("prj", service.getPrjCalendar(prjNo));
		return "WEB-INF\\views\\a01_Haeun\\b01_fullcalendar.jsp";
	}
	// 일정 관리 _ 프로젝트 리스트
	// http://localhost:7080/pms/prjSchdList.do
	@RequestMapping("prjSchdList.do")
	public String prjSchdList(Project sch, Model d) {
		System.out.println("test");
		d.addAttribute("prjList", service.getProjectList(sch));
		System.out.println("test2");
		return "WEB-INF\\views\\a01_Haeun\\d01_schdList.jsp";
	}
		
	
	
	
}
