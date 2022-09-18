package pms.a01_Haeun.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Haeun.a02_Service.CalendarService;
import pms.a01_Haeun.a04_VO.Calendar;

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
		d.addAttribute("callist", service.getCalList(prjNo));
		return "pageJsonReport";
	}
	
	// http://localhost:7080/pms/calInsert.do
	@RequestMapping("calInsert.do")
	public String calInsert(Calendar ins) {
		service.insertCalendar(ins);
		// 등록 후 초기화면으로 이동
		return "redirect:/calendar.do"; 
	}
	
	// http://localhost:7080/pms/calUpdate.do
	@RequestMapping("calUpdate.do")
	public String updateCalendar(Calendar upt) {
		System.out.println(" 캘린더 일정 수정 ");
		service.updateCalendar(upt);
		return "redirect:/calendar.do";
	}
	
	// http://localhost:7080/pms/calDelete.do
	@RequestMapping("calDelete.do")
	public String deleteCalendar(int id) {
		service.deleteCalendar(id);
		return "redirect:/calendar.do";
	}
	
	// http://localhost:7080/pms/prjSchdList.do
	@RequestMapping("prjSchdList.do")
	public String prjSchdList() {
		return "WEB-INF\\views\\a01_Haeun\\c01_projectList.jsp";
	}
	
	
}
