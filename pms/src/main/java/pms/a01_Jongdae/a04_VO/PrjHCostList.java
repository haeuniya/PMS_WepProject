package pms.a01_Jongdae.a04_VO;

public class PrjHCostList {
	private String ename;
	private String gender;
	private String job;
	private double sal;
	private String prjno;
	public PrjHCostList() {
		// TODO Auto-generated constructor stub
	}
	public PrjHCostList(String prjno) {
		this.prjno = prjno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public String getPrjno() {
		return prjno;
	}
	public void setPrjno(String prjno) {
		this.prjno = prjno;
	}
	
}
