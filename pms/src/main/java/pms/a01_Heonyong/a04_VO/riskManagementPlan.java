package pms.a01_Heonyong.a04_VO;

import java.util.Date;

public class riskManagementPlan {
    private String riskno;
    private String prjno;
    private String risktypeno;
    private String riskdeg;
    private String riskcontent;
    private Date regdate;
    private String regdate_s;
    private int occurate;
    private String registrant;
    private String riskeffect;
    private String riskaplan;
    private Date actiondate;
    private String actiondate_s;
    public riskManagementPlan() {
        // TODO Auto-generated constructor stub
    }
    
    public riskManagementPlan(String prjno) {
        this.prjno = prjno;
    }

    public riskManagementPlan(String riskno, String prjno, String risktypeno, String riskdeg, String riskcontent,
            Date regdate, String regdate_s, int occurate, String registrant, String riskeffect, String riskaplan,
            Date actiondate, String actiondate_s) {
        this.riskno = riskno;
        this.prjno = prjno;
        this.risktypeno = risktypeno;
        this.riskdeg = riskdeg;
        this.riskcontent = riskcontent;
        this.regdate = regdate;
        this.regdate_s = regdate_s;
        this.occurate = occurate;
        this.registrant = registrant;
        this.riskeffect = riskeffect;
        this.riskaplan = riskaplan;
        this.actiondate = actiondate;
        this.actiondate_s = actiondate_s;
    }
    public String getRiskno() {
        return riskno;
    }
    public void setRiskno(String riskno) {
        this.riskno = riskno;
    }
    public String getPrjno() {
        return prjno;
    }
    public void setPrjno(String prjno) {
        this.prjno = prjno;
    }
    public String getRisktypeno() {
        return risktypeno;
    }
    public void setRisktypeno(String risktypeno) {
        this.risktypeno = risktypeno;
    }
    public String getRiskdeg() {
        return riskdeg;
    }
    public void setRiskdeg(String riskdeg) {
        this.riskdeg = riskdeg;
    }
    public String getRiskcontent() {
        return riskcontent;
    }
    public void setRiskcontent(String riskcontent) {
        this.riskcontent = riskcontent;
    }
    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
    public String getRegdate_s() {
        return regdate_s;
    }
    public void setRegdate_s(String regdate_s) {
        this.regdate_s = regdate_s;
    }
    public int getOccurate() {
        return occurate;
    }
    public void setOccurate(int occurate) {
        this.occurate = occurate;
    }
    public String getRegistrant() {
        return registrant;
    }
    public void setRegistrant(String registrant) {
        this.registrant = registrant;
    }
    public String getRiskeffect() {
        return riskeffect;
    }
    public void setRiskeffect(String riskeffect) {
        this.riskeffect = riskeffect;
    }
    public String getRiskaplan() {
        return riskaplan;
    }
    public void setRiskaplan(String riskaplan) {
        this.riskaplan = riskaplan;
    }
    public Date getActiondate() {
        return actiondate;
    }
    public void setActiondate(Date actiondate) {
        this.actiondate = actiondate;
    }
    public String getActiondate_s() {
        return actiondate_s;
    }
    public void setActiondate_s(String actiondate_s) {
        this.actiondate_s = actiondate_s;
    }
}
