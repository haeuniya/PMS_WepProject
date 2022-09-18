package pms.a01_Yeji.a04_VO;

public class JobCnt {
	private int jobcnt;
	private String prjno;
	private String job;
	public JobCnt() {
		// TODO Auto-generated constructor stub
	}
	public JobCnt(int jobcnt, String prjno, String job) {
		this.jobcnt = jobcnt;
		this.prjno = prjno;
		this.job = job;
	}
	
	public int getJobcnt() {
		return jobcnt;
	}
	public void setJobcnt(int jobcnt) {
		this.jobcnt = jobcnt;
	}
	public String getPrjno() {
		return prjno;
	}
	public void setPrjno(String prjno) {
		this.prjno = prjno;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	
}
