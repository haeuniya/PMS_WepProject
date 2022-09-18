package pms.a01_Yeji.a04_VO;

import java.util.Date;

public class OutboxFile {
	private int mailNum;
	private String mailFilePath;
	private String mailFileName;
	private Date mailRegdte;
	private String etc;
	public OutboxFile() {
		// TODO Auto-generated constructor stub
	}
	
	
	public OutboxFile(String mailFilePath, String mailFileName) {
		this.mailFilePath = mailFilePath;
		this.mailFileName = mailFileName;
	}


	public OutboxFile(int mailNum, String mailFilePath, String mailFileName, Date mailRegdte, String etc) {
		this.mailNum = mailNum;
		this.mailFilePath = mailFilePath;
		this.mailFileName = mailFileName;
		this.mailRegdte = mailRegdte;
		this.etc = etc;
	}


	public int getMailNum() {
		return mailNum;
	}
	public void setMailNum(int mailNum) {
		this.mailNum = mailNum;
	}
	public String getMailFilePath() {
		return mailFilePath;
	}
	public void setMailFilePath(String mailFilePath) {
		this.mailFilePath = mailFilePath;
	}
	public String getMailFileName() {
		return mailFileName;
	}
	public void setMailFileName(String mailFileName) {
		this.mailFileName = mailFileName;
	}
	public Date getMailRegdte() {
		return mailRegdte;
	}
	public void setMailRegdte(Date mailRegdte) {
		this.mailRegdte = mailRegdte;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
}
