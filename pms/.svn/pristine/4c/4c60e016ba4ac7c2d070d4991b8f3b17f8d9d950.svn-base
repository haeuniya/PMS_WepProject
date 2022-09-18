package pms.a01_Yeji.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Yeji.a02_Service.MeetingBoardService;
import pms.a01_Yeji.a04_VO.MeetingBoard;
import pms.a01_Yeji.a04_VO.MeetingBoardSch;


@Controller
public class MeetingBoardController {
	@Autowired(required=false)
	private MeetingBoardService service;
	// http://localhost:7080/pms/boardList.do

	@RequestMapping("boardList.do")
	public String boardList(MeetingBoardSch sch, Model d) {
	
		d.addAttribute("blist", service.boardList(sch));
		
		return "WEB-INF\\views\\a01_Yeji\\meetingBoard_List.jsp";
	}
	@RequestMapping("boardInsertForm.do")
	public String boardInsertForm(MeetingBoard board){
		return "WEB-INF\\views\\a01_Yeji\\meeting_write.jsp";
	}
	@RequestMapping("boardInsert.do")
	public String boardInsert(MeetingBoard ins, Model d){
		service.insertBoard(ins);                                   
		d.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\a01_Yeji\\meeting_write.jsp";
	}
	
	@RequestMapping("boardDetail.do")
	public String boardDetail(@RequestParam("recordNum") int recordNum, Model d){
		// service.deleteBoard(recordNum);
		d.addAttribute("meetingboard",service.getBoardDetail(recordNum));
		return "WEB-INF\\views\\a01_Yeji\\meeting_detail.jsp";
	}
	
	@GetMapping("updateBoardForm.do")
	public String updateBoardForm(@RequestParam("recordNum") int recordNum, Model d){
		d.addAttribute("meetingboard", service.getBoardDetail(recordNum));
		return "WEB-INF\\views\\a01_Yeji\\meeting_update.jsp";
	}
	@PostMapping("updateBoard.do")
	public String updateBoard(MeetingBoard upt, Model d) {
		System.out.println("수정:"+upt.getRecordTitle());
		d.addAttribute("meetingboard", service.updateBoard(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\a01_Yeji\\meeting_update.jsp";
	}
	
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(@RequestParam("recordNum") int recordNum, Model d) {
		System.out.println("삭제:"+recordNum);
		d.addAttribute("proc","del");
		service.deleteBoard(recordNum);
		return "WEB-INF\\views\\a01_Yeji\\meeting_detail.jsp";
	}
}
