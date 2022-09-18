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
	private MultipartFile mailReport01;
	private String mailFileName;
	
	
	
	public Outbox() {
		// TODO Auto-generated constructor stub
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

	
	public MultipartFile getMailReport01() {
		return mailReport01;
	}





	public void setMailReport01(MultipartFile mailReport01) {
		this.mailReport01 = mailReport01;
	}





	public void setMailContent(String mailContent) {
		this.mailContent = mailContent;
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
