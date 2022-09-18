package pms.a01_Sechan.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Sechan.a04_VO.QualPrj;
import pms.a01_Sechan.a04_VO.Reviewplan;
import pms.a01_Sechan.a04_VO.feedback;
import pms.a01_Sechan.a04_VO.project;
// pms.a01_Sechan.a03_DAO.rplanDao  rplanList
@Repository
public interface rplanDao {
	public List<Reviewplan> rplanList(Reviewplan sch);
	public List<feedback> fbplanList(String riskNo);
	public List<project> prjList(String sch);
	public void insertrplan(Reviewplan ins);
	public void insertfbplan(feedback ins);
	public void deleteRplan(String rplanno);
	public void deleteFbplan(String feedbackNo);
	public Reviewplan getRplanDetail(String rplanno);
	public feedback getFbplanDetail(String feedbackno);
	public project getQpointDetail(String prjNo);
	/* public List<QualPrj> getPrjList(QualPrj sch); */
	public void updateRplan(Reviewplan upt);
	public void updateFbplan(feedback upt);
	public void updateQpoint(project upt);
	public void updateRplanStatus(Reviewplan upt);
	public void updateRplanStatusRJ(Reviewplan upt);
	public void updateFbplanStatus(feedback upt);
	public void updateFbplanStatusRJ(feedback upt);
	
}
