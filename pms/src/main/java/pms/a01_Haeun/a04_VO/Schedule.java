package pms.a01_Haeun.a04_VO;

import java.util.Date;

public class Schedule {
	private String empno;
	private String id;
	private String pjrNo;
	private String sname;
	private Date schdlStartDate;
	private Date schdlEndDate;
	private int achvmRate;
	public Schedule() {
		// TODO Auto-generated constructor stub
	}
	public Schedule(String empno, String id, String pjrNo, String sname, Date schdlStartDate, Date schdlEndDate,
			int achvmRate) {
		this.empno = empno;
		this.id = id;
		this.pjrNo = pjrNo;
		this.sname = sname;
		this.schdlStartDate = schdlStartDate;
		this.schdlEndDate = schdlEndDate;
		this.achvmRate = achvmRate;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPjrNo() {
		return pjrNo;
	}
	public void setPjrNo(String pjrNo) {
		this.pjrNo = pjrNo;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Date getSchdlStartDate() {
		return schdlStartDate;
	}
	public void setSchdlStartDate(Date schdlStartDate) {
		this.schdlStartDate = schdlStartDate;
	}
	public Date getSchdlEndDate() {
		return schdlEndDate;
	}
	public void setSchdlEndDate(Date schdlEndDate) {
		this.schdlEndDate = schdlEndDate;
	}
	public int getAchvmRate() {
		return achvmRate;
	}
	public void setAchvmRate(int achvmRate) {
		this.achvmRate = achvmRate;
	}
	
	
}
