package pms.a01_Yeji.a04_VO;

public class PrjScore {
	private String prjno;
	private int tot; // 종합 품질점수
	private int schdlScore;
	private int hrScore;
	private int costScore;
	private int commuScore;
	public PrjScore() {
		// TODO Auto-generated constructor stub
	}
	public PrjScore(String prjno, int tot, int schdlScore, int hrScore, int costScore, int commuScore) {
		this.prjno = prjno;
		this.tot = tot;
		this.schdlScore = schdlScore;
		this.hrScore = hrScore;
		this.costScore = costScore;
		this.commuScore = commuScore;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	

	public int getSchdlScore() {
		return schdlScore;
	}
	public void setSchdlScore(int schdlScore) {
		this.schdlScore = schdlScore;
	}
	public int getHrScore() {
		return hrScore;
	}
	public void setHrScore(int hrScore) {
		this.hrScore = hrScore;
	}
	public int getCostScore() {
		return costScore;
	}
	public void setCostScore(int costScore) {
		this.costScore = costScore;
	}
	public int getCommuScore() {
		return commuScore;
	}
	public void setCommuScore(int commuScore) {
		this.commuScore = commuScore;
	}

	public String getPrjno() {
		return prjno;
	}

	public void setPrjno(String prjno) {
		this.prjno = prjno;
	}
	
	
}
