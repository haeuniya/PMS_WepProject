package pms.a01_Yeji.a04_VO;

public class RplanStep {
	private String prjno;
	private String rplanStep;
	private int rplanCnt;
	public RplanStep() {
		// TODO Auto-generated constructor stub
	}
	public RplanStep(String prjno, String rplanStep, int rplanCnt) {
		this.prjno = prjno;
		this.rplanStep = rplanStep;
		this.rplanCnt = rplanCnt;
	}
	public String getPrjno() {
		return prjno;
	}
	public void setPrjno(String prjno) {
		this.prjno = prjno;
	}
	public String getRplanStep() {
		return rplanStep;
	}
	public void setRplanStep(String rplanStep) {
		this.rplanStep = rplanStep;
	}
	public int getRplanCnt() {
		return rplanCnt;
	}
	public void setRplanCnt(int rplanCnt) {
		this.rplanCnt = rplanCnt;
	}
	
	
}
