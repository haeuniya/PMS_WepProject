package pms.a01_Sechan.a04_VO;

import java.util.Date;
// pms.a01_Sechan.a04_VO.feedback
public class feedback {
	/*
	 feedbackno varchar2(50) PRIMARY KEY,
	feedbackname varchar2(50),
	fbplanname varchar2(50),
	fbstartdate DATE,
	fbenddate DATE,
	fbstep varchar2(50),
	feedbackitem varchar2(200),
	fbstatus varchar2(50),
	fbnote varchar2(200)
	 * */
	private String feedbackNo;
	private String feedbackName;
	private String rplanName;
	private Date fbStartDate;
	private Date fbEndDate;
	private String fbStep;
	private String feedbackItem;
	private String fbNote;
	private String fbStatus;
	private String riskNo;
	private String pmname;
	public feedback() {
		// TODO Auto-generated constructor stub
	}
	public String getFeedbackNo() {
		return feedbackNo;
	}
	public void setFeedbackNo(String feedbackNo) {
		this.feedbackNo = feedbackNo;
	}
	public String getFeedbackName() {
		return feedbackName;
	}
	public void setFeedbackName(String feedbackName) {
		this.feedbackName = feedbackName;
	}
	public Date getFbStartDate() {
		return fbStartDate;
	}
	public void setFbStartDate(Date fbStartDate) {
		this.fbStartDate = fbStartDate;
	}
	public Date getFbEndDate() {
		return fbEndDate;
	}
	public void setFbEndDate(Date fbEndDate) {
		this.fbEndDate = fbEndDate;
	}
	public String getFbStep() {
		return fbStep;
	}
	public void setFbStep(String fbStep) {
		this.fbStep = fbStep;
	}
	public String getFeedbackItem() {
		return feedbackItem;
	}
	public void setFeedbackItem(String feedbackItem) {
		this.feedbackItem = feedbackItem;
	}
	public String getFbNote() {
		return fbNote;
	}
	public void setFbNote(String fbNote) {
		this.fbNote = fbNote;
	}
	public String getFbStatus() {
		return fbStatus;
	}
	public void setFbStatus(String fbStatus) {
		this.fbStatus = fbStatus;
	}
	public String getRiskNo() {
		return riskNo;
	}
	public void setRiskNo(String riskNo) {
		this.riskNo = riskNo;
	}
	public String getRplanName() {
		return rplanName;
	}
	public void setRplanName(String rplanName) {
		this.rplanName = rplanName;
	}
	public String getPmname() {
		return pmname;
	}
	public void setPmname(String pmname) {
		this.pmname = pmname;
	}
	
	
	
	
	
}

