package pms.a01_Yeji.a01_Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Yeji.a02_Service.MailService;
import pms.a01_Yeji.a04_VO.Outbox;
import pms.a01_Yeji.a04_VO.OutboxSch;

@Controller
public class OutboxController {
	
	@Autowired(required = false)
	private MailService service;
	// http://localhost:7080/pms/outboxList.do
	@RequestMapping("outboxList.do")
	public String outboxList(Outbox ob, Model d) {

		d.addAttribute("mlist", service.outboxList(ob));
		
		return "WEB-INF\\views\\a01_Yeji\\outbox.jsp";
	}
	// mailform.do가 insertform 역할
	// outboxInsert.do -> 메일폼을 임시보관함으로 저장(등록)
	@RequestMapping("insertOutbox.do")
	public String insertOutbox(Outbox ins, Model d){
		System.out.println("####이름:"+ins.getReceiver());
		service.insertOutbox(ins); // 데이터 입력 처리                                      
		d.addAttribute("isStorage","Y");
		return "WEB-INF\\views\\a01_Yeji\\mail_compose.jsp";
	}
	@RequestMapping("outboxDetail.do")
	public String outboxDetail(@RequestParam("mailNum") int mailNum, Model d){
		// service.deleteBoard(no);
		d.addAttribute("outbox",service.getOutboxDetail(mailNum));
		
		return "WEB-INF\\views\\a01_Yeji\\mail_resend.jsp";
	}
	
	@RequestMapping("updateOutbox.do")
	public String updateOutbox(Outbox upt, Model d) {
		System.out.println("수정:"+upt.getMailTitle());
		d.addAttribute("outbox", service.updateOutbox(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\a01_Yeji\\meeting_update.jsp";
	}
	
	@RequestMapping("deleteOutbox.do")
	public String deleteOutbox(@RequestParam("mailNum") int mailNum, Model d) {
		System.out.println("삭제:"+mailNum);
		d.addAttribute("proc","del");
		service.deleteOutbox(mailNum);
		return "WEB-INF\\views\\a01_Yeji\\outbox.jsp";
	}
	
	
}
