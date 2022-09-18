package pms.a01_Sechan.a04_VO;
// pms.a01_Sechan.a04_VO.project
import java.util.Date;

public class project {
	/*
	 CREATE TABLE PROJECT(
	prjNo	VARCHAR2(50) PRIMARY key,
	prjName	VARCHAR2(50),
	prjGoal	VARCHAR2(200),
	output	VARCHAR2(200),
	outRange	VARCHAR2(200),
	prjStartDate	DATE,
	prjEndDate	DATE,
	prjFinance	NUMBER,
	prjPMNo	VARCHAR2(20),
	prjImportant VARCHAR2(20),
	eqpmnCost NUMBER,
	materialCost NUMBER,
	serviceCost NUMBER,
	indirectCost NUMBER,
	rsrvExpns NUMBER,
	prjRate NUMBER,
	schdlScore NUMBER,
	hrScore NUMBER,
	costScore NUMBER,
	commuScore NUMBER
);
	 * */
	private String prjNo;
	private String prjName;
	private String prjGoal;
	private String output;
	private String outRange;
	private Date prjStartDate;
	private Date prjEndDate;
	private int prjFinance;
	private String prjPMNo;
	private String prjImportant;
	private int eqpmnCost;
	private int materialCost;
	private int serviceCost;
	private int indirectCost;
	private int rsrvExpns;
	private int prjRate;
	private int schdlScore;
	private int hrScore;
	private int costScore;
	private int commuScore;
	private String pmname;
	public project() {
		// TODO Auto-generated constructor stub
	}
	public project(String prjNo, String prjName, String prjGoal, String output, String outRange, Date prjStartDate,
			Date prjEndDate, int prjFinance, String prjPMNo, String prjImportant, int eqpmnCost, int materialCost,
			int serviceCost, int indirectCost, int rsrvExpns, int prjRate, int schdlScore, int hrScore, int costScore,
			int commuScore) {
		this.prjNo = prjNo;
		this.prjName = prjName;
		this.prjGoal = prjGoal;
		this.output = output;
		this.outRange = outRange;
		this.prjStartDate = prjStartDate;
		this.prjEndDate = prjEndDate;
		this.prjFinance = prjFinance;
		this.prjPMNo = prjPMNo;
		this.prjImportant = prjImportant;
		this.eqpmnCost = eqpmnCost;
		this.materialCost = materialCost;
		this.serviceCost = serviceCost;
		this.indirectCost = indirectCost;
		this.rsrvExpns = rsrvExpns;
		this.prjRate = prjRate;
		this.schdlScore = schdlScore;
		this.hrScore = hrScore;
		this.costScore = costScore;
		this.commuScore = commuScore;
	}
	
	public String getPmname() {
		return pmname;
	}
	public void setPmname(String pmname) {
		this.pmname = pmname;
	}
	public String getPrjNo() {
		return prjNo;
	}
	public void setPrjNo(String prjNo) {
		this.prjNo = prjNo;
	}
	public String getPrjName() {
		return prjName;
	}
	public void setPrjName(String prjName) {
		this.prjName = prjName;
	}
	public String getPrjGoal() {
		return prjGoal;
	}
	public void setPrjGoal(String prjGoal) {
		this.prjGoal = prjGoal;
	}
	public String getOutput() {
		return output;
	}
	public void setOutput(String output) {
		this.output = output;
	}
	public String getOutRange() {
		return outRange;
	}
	public void setOutRange(String outRange) {
		this.outRange = outRange;
	}
	public Date getPrjStartDate() {
		return prjStartDate;
	}
	public void setPrjStartDate(Date prjStartDate) {
		this.prjStartDate = prjStartDate;
	}
	public Date getPrjEndDate() {
		return prjEndDate;
	}
	public void setPrjEndDate(Date prjEndDate) {
		this.prjEndDate = prjEndDate;
	}
	public int getPrjFinance() {
		return prjFinance;
	}
	public void setPrjFinance(int prjFinance) {
		this.prjFinance = prjFinance;
	}
	public String getPrjPMNo() {
		return prjPMNo;
	}
	public void setPrjPMNo(String prjPMNo) {
		this.prjPMNo = prjPMNo;
	}
	public String getPrjImportant() {
		return prjImportant;
	}
	public void setPrjImportant(String prjImportant) {
		this.prjImportant = prjImportant;
	}
	public int getEqpmnCost() {
		return eqpmnCost;
	}
	public void setEqpmnCost(int eqpmnCost) {
		this.eqpmnCost = eqpmnCost;
	}
	public int getMaterialCost() {
		return materialCost;
	}
	public void setMaterialCost(int materialCost) {
		this.materialCost = materialCost;
	}
	public int getServiceCost() {
		return serviceCost;
	}
	public void setServiceCost(int serviceCost) {
		this.serviceCost = serviceCost;
	}
	public int getIndirectCost() {
		return indirectCost;
	}
	public void setIndirectCost(int indirectCost) {
		this.indirectCost = indirectCost;
	}
	public int getRsrvExpns() {
		return rsrvExpns;
	}
	public void setRsrvExpns(int rsrvExpns) {
		this.rsrvExpns = rsrvExpns;
	}
	public int getPrjRate() {
		return prjRate;
	}
	public void setPrjRate(int prjRate) {
		this.prjRate = prjRate;
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
	

}
