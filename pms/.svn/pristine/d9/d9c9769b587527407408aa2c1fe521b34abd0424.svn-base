package pms.a01_Haeun.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Haeun.a02_Service.CalendarService;
import pms.a01_Haeun.a04_VO.Calendar;
import pms.a01_Haeun.a04_VO.Project;

@Controller
public class FulllCalendarController {
	@Autowired(required=false)
	private CalendarService service;	
	
	// http://106.10.18.69:3030/pms/calendar.do
	// http://localhost:7080/pms/calendar.do
	@RequestMapping("calendar.do")
	public String calendar() {
		return "WEB-INF\\views\\a01_Haeun\\b01_fullcalendar.jsp";
	}
	
	// http://localhost:7080/pms/calList.do?prjNo=P1000
	@RequestMapping("calList.do")
	public String calList(@RequestParam("prjNo") String prjNo, Model d) {
		//System.out.println(service.getRmPeriod(prjNo));
		//d.addAttribute("rmPeriod", service.getRmPeriod(prjNo));
		d.addAttribute("callist", service.getCalList(prjNo));
		return "pageJsonReport";
	}
	
	// http://localhost:7080/pms/calInsert.do
	@RequestMapping("calInsert.do")
	public String calInsert(Calendar ins) {
		System.out.println("등록####################"+ins.getContent());
		service.insertCalendar(ins);
		// 등록 후 초기화면으로 이동
		return "redirect:/prjCalendar.do?prjNo="+ins.getPrjNo();
	}
	
	// http://localhost:7080/pms/calUpdate.do
	@RequestMapping("calUpdate.do")
	public String updateCalendar(Calendar upt) {
		System.out.println(" 캘린더 일정 수정 ");
		service.updateCalendar(upt);
		return "redirect:/prjCalendar.do?prjNo="+upt.getPrjNo();
	}
	
	// http://localhost:7080/pms/calDelete.do
	@RequestMapping("calDelete.do")
	public String deleteCalendar(Calendar del) {
		service.deleteCalendar(del);
		return "redirect:/prjCalendar.do?prjNo="+del.getPrjNo();
	}
	
	// 기간
	@RequestMapping("getPeriod.do")
	public String getPeriod(Calendar period) {
		service.getRmPeriod(period);
		return "redirect:/prjCalendar.do?prjNo="+period.getPrjNo();
	}
	/*
	// 일정 관리 _ 프로젝트 리스트
	// http://localhost:7080/pms/prjSchdList.do
	@RequestMapping("prjSchdList.do")
	public String prjSchdList(Project sch, Model d) {
		System.out.println("test");
		d.addAttribute("prjList", service.getProjectList(sch));
		System.out.println("test2");
		return "WEB-INF\\views\\a01_Haeun\\d01_schdList.jsp";
	}
	*/
	
	// http://localhost:7080/pms/todoList.do
	@RequestMapping("todoList.do")
	public String todoList(@RequestParam("prjNo") String prjNo, Model d) {
		d.addAttribute("callist", service.getCalList(prjNo));
		return "WEB-INF\\views\\a01_Haeun\\d02_todoList.jsp";
	}
}
