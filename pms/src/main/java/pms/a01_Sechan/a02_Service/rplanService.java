package pms.a01_Sechan.a02_Service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import pms.a01_Sechan.a03_DAO.rplanDao;
import pms.a01_Sechan.a04_VO.Reviewplan;
import pms.a01_Sechan.a04_VO.feedback;
import pms.a01_Sechan.a04_VO.project;

@Service
public class rplanService {
	@Autowired(required=false)
	private rplanDao dao;
	

	
	public List<Reviewplan> rplanList(Reviewplan sch){
		return dao.rplanList(sch);
	}

	
	public List<project> prjList(String sch){
		return dao.prjList(sch);
	}
	
	public List<feedback> fbplanList(String riskNo){
		return dao.fbplanList(riskNo);
	}
	
	public void insertrplan(Reviewplan ins) {
		dao.insertrplan(ins);	
	}
	public void insertfbplan(feedback ins) {
		dao.insertfbplan(ins);
	}
	
	public void deleteRplan(String rplanno) {
		dao.deleteRplan(rplanno);
	}
	
	public void deleteFbplan(String feedbackNo) {
		dao.deleteFbplan(feedbackNo);
	}
	
	public Reviewplan getRplanDetail(String rplanno) {
		return dao.getRplanDetail(rplanno);
	}
	
	
	public feedback getFbplanDetail(String feedbackno) {
		return dao.getFbplanDetail(feedbackno);
	}
	
	public project getQpointDetail(String prjNo) {
		return dao.getQpointDetail(prjNo);
	}
	
	
	
	  public Reviewplan updateRplan(Reviewplan upt) {
		  dao.updateRplan(upt);
		  return dao.getRplanDetail(upt.getRplanNo());
	  }
	  
	  public feedback updateFbplan(feedback upt) {
		  dao.updateFbplan(upt);
		  return dao.getFbplanDetail(upt.getFeedbackNo());
	  }
	  
	  public project updateQpoint(project upt) {
		 dao.updateQpoint(upt);
		 return dao.getQpointDetail(upt.getPrjNo()); 
	  }
	  
	  public Reviewplan updateRplanStatus(Reviewplan upt) { 
	  dao.updateRplanStatus(upt); 
	  return dao.getRplanDetail(upt.getRplanNo());
	  }
	  
	  public Reviewplan updateRplanStatusRJ(Reviewplan upt) {
		  dao.updateRplanStatusRJ(upt);
		  return dao.getRplanDetail(upt.getRplanNo());
	  }
	  public feedback updateFbplanStatus(feedback upt) {
		  dao.updateFbplanStatus(upt);
		  return dao.getFbplanDetail(upt.getFeedbackNo());
	  }
	public feedback updateFbplanStatusRJ(feedback upt) {
		dao.updateFbplanStatusRJ(upt);
		return dao.getFbplanDetail(upt.getFeedbackNo());
	}
	
}
