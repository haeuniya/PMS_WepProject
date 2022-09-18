package pms.a01_Sechan.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Sechan.a02_Service.rplanService;
import pms.a01_Sechan.a04_VO.Reviewplan;
import pms.a01_Sechan.a04_VO.feedback;
import pms.a01_Sechan.a04_VO.project;

@Controller
public class rplanController {
	@Autowired(required = false)
	private rplanService service;

//  http://localhost:7080/pms/rplanlist.do
	@RequestMapping("rplanlist.do")
	public String rplanlist(Reviewplan sch, Model d) {
		d.addAttribute("rlist", service.rplanList(sch));
		System.out.println(sch.getPrjNo());
		return "WEB-INF\\views\\a01_Sechan\\ReviewPlanView2.jsp";
	}

//	http://localhost:7080/pms/fbplanlist.do?riskNo=R1000
	@RequestMapping("fbplanlist.do")
	public String fbplanlist(String riskNo, Model d) {
		d.addAttribute("fblist", service.fbplanList(riskNo));
		return "WEB-INF\\views\\a01_Sechan\\FeedbackView.jsp";
	}

//	http://localhost:7080/pms/prjlist.do
	@RequestMapping("prjlist.do")
	public String prjlist(String sch, Model d) {
		d.addAttribute("prjlist", service.prjList(sch));
		return "WEB-INF\\views\\a01_Sechan\\qualityProjectList.jsp";
	}

	// http://localhost:7080/pms/rplanInsertForm.do
	@RequestMapping("rplanInsertForm.do")
	public String rplanInesertForm() {
		return "WEB-INF\\views\\a01_Sechan\\ReviewPlanInsert.jsp";
	}

	// http://localhost:7080/pms/fbplanInsertForm.do
	@RequestMapping("fbplanInsertForm.do")
	public String fbplanInesertForm() {
		return "WEB-INF\\views\\a01_Sechan\\Feedbackinsert.jsp";
	}

	// http://localhost:7080/pms/rplanInsert.do
	@RequestMapping("rplanInsert.do")
	public String rplanInsert(Reviewplan ins, Model d) {
		service.insertrplan(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Sechan\\ReviewPlanInsert.jsp";
	}

	// http://localhost:7080/pms/fbplanInsert.do
	@RequestMapping("fbplanInsert.do")
	public String fbplanInsert(feedback ins, Model d) {
		service.insertfbplan(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Sechan\\Feedbackinsert.jsp";
	}

// http://localhost:7080/pms/ReviewPlanDetail.do
	@RequestMapping("ReviewPlanDetail.do")
	public String ReviewPlanDetail(@RequestParam("rplanno") String rplanno, Model d) {
		d.addAttribute("rplandetail", service.getRplanDetail(rplanno));
		return "WEB-INF\\views\\a01_Sechan\\ReviewPlanDetail.jsp";
	}

	// http://localhost:7080/pms/fbPlanDetail.do
	@RequestMapping("fbPlanDetail.do")
	public String fbPlanDetail(@RequestParam("feedbackno") String feedbackno, Model d) {
		d.addAttribute("fbplandetail", service.getFbplanDetail(feedbackno));
		return "WEB-INF\\views\\a01_Sechan\\FeedbackDetail.jsp";
	}
	
	
		@RequestMapping("QpointDetail.do")
		public String QpointDetail(@RequestParam("prjNo") String prjNo, Model d) {
			System.out.println("업데이트:" + prjNo);
			d.addAttribute("QpointDetail",service.getQpointDetail(prjNo));
			return "WEB-INF\\views\\a01_Sechan\\QpointDetail.jsp";
		}
	

	@RequestMapping("deleteRplan.do")
	public String deleteRplan(@RequestParam("rplanno") String rplanno, Model d) {
		System.out.println("삭제:" + rplanno);
		service.deleteRplan(rplanno);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\a01_Sechan\\ReviewPlanDetail.jsp";
	}
	@RequestMapping("deleteFbplan.do")
	public String deleteFbplan(@RequestParam(value="feedbackNo", required=false) String feedbackNo, Model d) {
		System.out.println("삭제:"+feedbackNo);
		service.deleteFbplan(feedbackNo);
		d.addAttribute("proc","del");
		return "WEB-INF\\views\\a01_Sechan\\FeedbackDetail.jsp";
	}
	
	  @RequestMapping("updateRplan.do")
	  public String updateRplan(Reviewplan upt,Model d)
	  { 
		  System.out.println("수정####:"+upt.getRplanNo());	  
		  d.addAttribute("uptrplan",service.updateRplan(upt));
		  d.addAttribute("proc","upt"); return
		  "WEB-INF\\views\\a01_Sechan\\ReviewPlanDetail.jsp";
	   }
	  @RequestMapping("updateFbplan.do")
	  public String updateFbplan(feedback upt, Model d) {
		  System.out.println("수정###:"+upt.getFeedbackNo());
		  d.addAttribute("uptFbplan", service.updateFbplan(upt));
		  d.addAttribute("proc","upt");
		  return "WEB-INF\\views\\a01_Sechan\\FeedbackDetail.jsp";
		  
	  }
	  @RequestMapping("updateQpoint.do")
	  public String updateQpoint(project upt, Model d) {
		  System.out.println("수정###:"+upt.getPrjNo());
		  d.addAttribute("uptQpoint",service.updateQpoint(upt));
		  d.addAttribute("proc","pupt");
		  return "WEB-INF\\views\\a01_Sechan\\QpointDetail.jsp";
		  
	  }
	  
	  @RequestMapping("updateRplanStatus.do")
	  public String updateRplanStatus(Reviewplan upt, Model d) {
	  System.out.println("###########수정:"+upt.getRplanNo());
	  d.addAttribute("uptrplanstatus",service.updateRplanStatus(upt));
	  d.addAttribute("proc","upt");
	  d.addAttribute("isCommit", "Y");
	  System.out.println("수정됨~~~~~~~"); 
	  return "WEB-INF\\views\\a01_Sechan\\ReviewPlanView2.jsp";
	  }
	  @RequestMapping("updateRplanStatusRJ.do")
	  public String updateRplanStatusRJ(Reviewplan upt, Model d) {
		  System.out.println(("######수정:"+upt.getRplanNo()));
		  d.addAttribute("updateRplanStatusRJ", service.updateRplanStatusRJ(upt));
		  System.out.println("수정됨~~~~~~~"); 
		  return "WEB-INF\\views\\a01_Sechan\\ReviewPlanView2.jsp";
	  }
	  
	  @RequestMapping("updateFbplanStatus.do")
	  public String updateFbplanStatus(feedback upt, Model d) {
	  System.out.println("###########수정:"+upt.getFeedbackNo());
	  d.addAttribute("updateFbplanStatus",service.updateFbplanStatus(upt));
	  d.addAttribute("proc","upt");
	  d.addAttribute("isCommit", "Y");
	  System.out.println("수정됨~~~~~~~"); 
	  return "WEB-INF\\views\\a01_Sechan\\FeedbackView.jsp";
	  }
	  @RequestMapping("updateFbplanStatusRJ.do")
	  public String updateFbplanStatusRJ(feedback upt, Model d) {
		  System.out.println(("######수정:"+upt.getFeedbackNo()));
		  d.addAttribute("updateFbplanStatusRJ", service.updateFbplanStatusRJ(upt));
		  System.out.println("수정됨~~~~~~~"); 
		  return "WEB-INF\\views\\a01_Sechan\\FeedbackView.jsp";
	  }
	 

}
