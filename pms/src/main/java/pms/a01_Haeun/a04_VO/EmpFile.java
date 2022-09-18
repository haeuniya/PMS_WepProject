package pms.a01_Haeun.a04_VO;

import java.util.Date;

// pms.a01_Haeun.a04_VO.EmpFile
public class EmpFile {
	private String no;
	private String path;
	private String fname;
	private Date regdte;
	private Date uptdte;
	private String etc;
	public EmpFile() {
		// TODO Auto-generated constructor stub
	}
	
	public EmpFile(String no, String path, String fname, Date regdte, Date uptdte, String etc) {
		this.no = no;
		this.path = path;
		this.fname = fname;
		this.regdte = regdte;
		this.uptdte = uptdte;
		this.etc = etc;
	}

	public EmpFile(String path, String fname) {
		this.path = path;
		this.fname = fname;
	}
	
	public EmpFile(String no, String path, String fname) {
		this.no = no;
		this.path = path;
		this.fname = fname;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Date getRegdte() {
		return regdte;
	}
	public void setRegdte(Date regdte) {
		this.regdte = regdte;
	}
	public Date getUptdte() {
		return uptdte;
	}
	public void setUptdte(Date uptdte) {
		this.uptdte = uptdte;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
}
