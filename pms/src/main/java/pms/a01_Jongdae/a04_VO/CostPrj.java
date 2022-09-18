package pms.a01_Jongdae.a04_VO;

import java.util.Date;

public class CostPrj {
	private String prjNo;
	private String prjName;
	private String prjGoal;
	private String output;
	private String outRange;
	private Date prjStartDate;
	private String prjStartDate_s;
	private Date prjEndDate;
	private String prjEndDate_s;
	private double prjFinance;
	private String prjPMNo;
	private String prjImportant;
	private double eqpmnCost;
	private double materialCost;
	private double serviceCost;
	private double indirectCost;
	private double rsrvExpns;
	private int prjRate;
	private int schdlScore;
	private int hrScore;
	private int costScore;
	private int commuScore;
	private String ename;
	public CostPrj() {
		// TODO Auto-generated constructor stub
	}
	public CostPrj(String prjNo) {
		this.prjNo = prjNo;
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
	public String getPrjStartDate_s() {
		return prjStartDate_s;
	}
	public void setPrjStartDate_s(String prjStartDate_s) {
		this.prjStartDate_s = prjStartDate_s;
	}
	public Date getPrjEndDate() {
		return prjEndDate;
	}
	public void setPrjEndDate(Date prjEndDate) {
		this.prjEndDate = prjEndDate;
	}
	public String getPrjEndDate_s() {
		return prjEndDate_s;
	}
	public void setPrjEndDate_s(String prjEndDate_s) {
		this.prjEndDate_s = prjEndDate_s;
	}
	public double getPrjFinance() {
		return prjFinance;
	}
	public void setPrjFinance(double prjFinance) {
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
	public double getEqpmnCost() {
		return eqpmnCost;
	}
	public void setEqpmnCost(double eqpmnCost) {
		this.eqpmnCost = eqpmnCost;
	}
	public double getMaterialCost() {
		return materialCost;
	}
	public void setMaterialCost(double materialCost) {
		this.materialCost = materialCost;
	}
	public double getServiceCost() {
		return serviceCost;
	}
	public void setServiceCost(double serviceCost) {
		this.serviceCost = serviceCost;
	}
	public double getIndirectCost() {
		return indirectCost;
	}
	public void setIndirectCost(double indirectCost) {
		this.indirectCost = indirectCost;
	}
	public double getRsrvExpns() {
		return rsrvExpns;
	}
	public void setRsrvExpns(double rsrvExpns) {
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
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}	
}
