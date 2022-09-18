package pms.a01_Jongdae.a02_Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pms.a01_Jongdae.a03_DAO.CostNScopeDao;
import pms.a01_Jongdae.a04_VO.Calendar;
import pms.a01_Jongdae.a04_VO.CostPrj;
import pms.a01_Jongdae.a04_VO.HCost;
import pms.a01_Jongdae.a04_VO.HCostSum;
import pms.a01_Jongdae.a04_VO.PMInfo;
import pms.a01_Jongdae.a04_VO.PrjHCostList;
import pms.a01_Jongdae.a04_VO.Risk;
import pms.a01_Jongdae.a04_VO.ScopeStatement;

@Service
public class CostNScopeService {
	@Autowired(required = false)
	private CostNScopeDao dao;
	
	public List<CostPrj> getPrjList(CostPrj sch) {
		return dao.getPrjList(sch);
	}
	public CostPrj getPrj(String prjno) {
		return dao.getPrj(prjno);
	}
	public void updateCostPrj(CostPrj upt) {
		dao.updateCostPrj(upt);
	}
	public CostPrj getScPrj(String prjno) {
		return dao.getScPrj(prjno);
	}
	
	public List<Calendar> getRoadMapList(String prjno) {
		return dao.getRoadMapList(prjno);
	}
	public List<Calendar> getScRMList(String prjno) {
		return dao.getScRMList(prjno);
	}
	public PMInfo getPMInfo(String prjno) {
		return dao.getPMInfo(prjno);
	}
	public ScopeStatement getScInfo(String prjno) {
		return dao.getScInfo(prjno);
	}
	public List<HCost> getHCostList(HCost hc) {
		return dao.getHCostList(hc);
	}
	public List<PrjHCostList> getPrjHCostList(String prjno) {
		return dao.getPrjHCostList(prjno);
	}
	public HCostSum getHCostSum(String prjno) {
		return dao.getHCostSum(prjno);
	}
	public void yesScopeStmt(String scpStmtNo) {
		dao.yesScopeStmt(scpStmtNo);
	}
	public void noScopeStmt(String scpStmtNo) {
		dao.noScopeStmt(scpStmtNo);
	}
	public List<Risk> getRiskList(String rplanno) {
		return dao.getRiskList(rplanno);
	}
	public void insertRisk(Risk ins) {
		dao.insertRisk(ins);
	}
	public void deleteRisk(String riskNo) {
		dao.deleteRisk(riskNo);
	}
	public Risk getRiskDetail(String riskNo) {
		return dao.getRiskDetail(riskNo);
	}
	public void updateRisk(Risk upt) {
		dao.updateRisk(upt);
	}
}
