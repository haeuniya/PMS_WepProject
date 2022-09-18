package pms.a01_Yeji.a04_VO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Outbox {
	private int mailNum;
	private String empno;
	private String receiver; //수신자
	private String sender; // 발신자
	private String mailTitle; //제목
	private String mailContent; //내용
	private Date mailRegdte;
	private MultipartFile mailReport;
	private String mailFileName;
	
	
	
	public Outbox() {
		// TODO Auto-generated constructor stub
	}


	public Outbox(int mailNum, String receiver, String sender, String mailTitle, String mailContent, MultipartFile mailReport) {
		this.mailNum = mailNum;
		this.receiver = receiver;
		this.sender = sender;
		this.mailTitle = mailTitle;
		this.mailContent = mailContent;
		this.mailReport = mailReport;
	}


	public Outbox(int mailNum, String empno, String receiver, String sender, String mailTitle, String mailContent,
			Date mailRegdte, MultipartFile mailReport, String mailFileName) {
		this.mailNum = mailNum;
		this.empno = empno;
		this.receiver = receiver;
		this.sender = sender;
		this.mailTitle = mailTitle;
		this.mailContent = mailContent;
		this.mailRegdte = mailRegdte;
		this.mailReport = mailReport;
		this.mailFileName = mailFileName;
		
	}


	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMailTitle() {
		return mailTitle;
	}
	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}
	public String getMailContent() {
		return mailContent;
	}
	public void setMailcontent(String mailContent) {
		this.mailContent = mailContent;
	}
	public int getMailNum() {
		return mailNum;
	}
	public void setMailNum(int mailNum) {
		this.mailNum = mailNum;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public MultipartFile getMailReport() {
		return mailReport;
	}
	public void setMailreport(MultipartFile mailReport) {
		this.mailReport = mailReport;
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

	
}
