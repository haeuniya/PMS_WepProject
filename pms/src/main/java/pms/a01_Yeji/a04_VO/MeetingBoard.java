package pms.a01_Yeji.a04_VO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MeetingBoard {
	private int cnt;
	private int recordNum;
	private int refno;
	private String recordTitle;
	private String recordContent;
	private String writer;
	private String writerNo;
	private int recordViewCnt;
	private Date recordRegdte;
	private Date recordUptdte;
	private MultipartFile report;
	private String mrFileName;
	private int level;
	
	public MeetingBoard() {
		// TODO Auto-generated constructor stub
	}
	

	public MeetingBoard(int recordNum, int refno, String recordTitle, String recordContent, String writer, String writerNo,
			int recordViewCnt, Date recordRegdte, Date recordUptdte) {
		this.recordNum = recordNum;
		this.refno = refno;
		this.recordTitle = recordTitle;
		this.recordContent = recordContent;
		this.writer = writer;
		this.writerNo = writerNo;
		this.recordViewCnt = recordViewCnt;
		this.recordRegdte = recordRegdte;
		this.recordUptdte = recordUptdte;
	}

	public MeetingBoard(int cnt, int recordNum, int refno, String recordTitle, String recordContent, String writer, String writerNo,
			int recordViewCnt, Date recordRegdte, Date recordUptdte, MultipartFile report, String mrFileName,
			int level) {
		this.cnt = cnt;
		this.recordNum = recordNum;
		this.refno = refno;
		this.recordTitle = recordTitle;
		this.recordContent = recordContent;
		this.writer = writer;
		this.writerNo = writerNo;
		this.recordViewCnt = recordViewCnt;
		this.recordRegdte = recordRegdte;
		this.recordUptdte = recordUptdte;
		this.report = report;
		this.mrFileName = mrFileName;
		this.level = level;
		
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getRecordNum() {
		return recordNum;
	}
	public void setRecordNum(int recordNum) {
		this.recordNum = recordNum;
	}
	
	public int getRefno() {
		return refno;
	}

	public void setRefno(int refno) {
		this.refno = refno;
	}

	public String getRecordTitle() {
		return recordTitle;
	}
	public void setRecordTitle(String recordTitle) {
		this.recordTitle = recordTitle;
	}
	public String getRecordContent() {
		return recordContent;
	}
	public void setRecordContent(String recordContent) {
		this.recordContent = recordContent;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getRecordViewCnt() {
		return recordViewCnt;
	}
	public void setRecordViewCnt(int recordViewCnt) {
		this.recordViewCnt = recordViewCnt;
	}
	public Date getRecordRegdte() {
		return recordRegdte;
	}
	public void setRecordRegdte(Date recordRegdte) {
		this.recordRegdte = recordRegdte;
	}
	public Date getRecordUptdte() {
		return recordUptdte;
	}
	public void setRecordUptdte(Date recordUptdte) {
		this.recordUptdte = recordUptdte;
	}
	public MultipartFile getReport() {
		return report;
	}
	public void setReport(MultipartFile report) {
		this.report = report;
	}
	public String getMrFileName() {
		return mrFileName;
	}
	public void setMrFileName(String mrFileName) {
		this.mrFileName = mrFileName;
	}

	public String getWriterNo() {
		return writerNo;
	}
	public void setWriterNo(String writerNo) {
		this.writerNo = writerNo;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}
	
	



}
