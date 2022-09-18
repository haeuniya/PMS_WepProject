package pms.a01_Jongdae.a04_VO;

import java.util.Date;

public class ScopeStatement {
	private String scpStmtNo;
	private Date scpStmtDate;
	private String adtnlCntntTitle;
	private String adtnlCntnt;
	private String isApproval;
	private String prjNo;
	public ScopeStatement() {
		// TODO Auto-generated constructor stub
	}
	
	public ScopeStatement(String scpStmtNo) {
		this.scpStmtNo = scpStmtNo;
	}

	public String getScpStmtNo() {
		return scpStmtNo;
	}
	public void setScpStmtNo(String scpStmtNo) {
		this.scpStmtNo = scpStmtNo;
	}
	public Date getScpStmtDate() {
		return scpStmtDate;
	}
	public void setScpStmtDate(Date scpStmtDate) {
		this.scpStmtDate = scpStmtDate;
	}
	public String getAdtnlCntntTitle() {
		return adtnlCntntTitle;
	}
	public void setAdtnlCntntTitle(String adtnlCntntTitle) {
		this.adtnlCntntTitle = adtnlCntntTitle;
	}
	public String getAdtnlCntnt() {
		return adtnlCntnt;
	}
	public void setAdtnlCntnt(String adtnlCntnt) {
		this.adtnlCntnt = adtnlCntnt;
	}
	public String getIsApproval() {
		return isApproval;
	}
	public void setIsApproval(String isApproval) {
		this.isApproval = isApproval;
	}
	public String getPrjNo() {
		return prjNo;
	}
	public void setPrjNo(String prjNo) {
		this.prjNo = prjNo;
	}
	
}
