package pms.a01_Yeji.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pms.a01_Yeji.a02_Service.MailService;
import pms.a01_Yeji.a04_VO.Mail;

@Controller
public class MailController {
	
	@Autowired(required = false)
	private MailService service;
	// http://localhost:7080/pms/mailForm.do
	@GetMapping("mailForm.do")
	public String mailForm() {
		return "WEB-INF\\views\\a01_Yeji\\mail_compose.jsp";
	}
	
	@PostMapping("mailSender.do")
	public String mailSender(Mail mail, Model d) {
		d.addAttribute("msg", service.sendMail(mail));
		return "WEB-INF\\views\\a01_Yeji\\mail_compose.jsp";
	}
	

	
}
