package pms.a01_Haeun.a04_VO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

// pms.a01_Haeun.a04_VO.Emp

public class Emp {
	// 8/20 페이징 처리를 위해 추가
	private int cnt;
	//
	private String empno;
	private String id;
	private String pw;
	private String ename;
	private String eimage;
	private Date birth;
	private String birthS;
	private String job;
	private String mgr;
	private Date hiredate;
	private String hiredateS;
	private double sal;
	private String phoneNum;
	private String address;	
	private String gender;
	private String email;
	private String auth;
	private String description;
	private String eImportant;
	private String deptno;
	// 파일 처리
	private MultipartFile report;
	private String fname;
	private int level;
	
	public Emp() {
		// TODO Auto-generated constructor stub
	}
	
	// insert문을 위한 생성자
	public Emp(String empno, String id, String pw, String ename, String eimage, String birthS, String job,
			String hiredateS, double sal, String phoneNum, String address, String gender, String email,
			String auth, String description, String eImportant, String deptno) {
		this.empno = empno;
		this.id = id;
		this.pw = pw;
		this.ename = ename;
		this.eimage = eimage;
		this.birthS = birthS;
		this.job = job;
		this.hiredateS = hiredateS;
		this.sal = sal;
		this.phoneNum = phoneNum;
		this.address = address;
		this.gender = gender;
		this.email = email;
		this.auth = auth;
		this.description = description;
		this.eImportant = eImportant;
		this.deptno = deptno;
	}

	// select문을 위한 생성자
	public Emp(String empno, String id, String pw, String ename, String eimage, Date birth, String job, String mgr,
			Date hiredate, double sal, String phoneNum, String address, String gender, String email,
			String auth, String description, String eImportant, String deptno) {
		this.empno = empno;
		this.id = id;
		this.pw = pw;
		this.ename = ename;
		this.eimage = eimage;
		this.birth = birth;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.sal = sal;
		this.phoneNum = phoneNum;
		this.address = address;
		this.gender = gender;
		this.email = email;
		this.auth = auth;
		this.description = description;
		this.eImportant = eImportant;
		this.deptno = deptno;
	}
	
	/*
	INSERT INTO EMP values('E'||empno_seq.nextval, #{id}, #{pw}, #{ename}, #{gender,jdbcType=VARCHAR}, to_date(#{birthS},'YYYY-MM-DD'), 
		#{job,jdbcType=VARCHAR}, #{auth,jdbcType=VARCHAR}, #{deptno}, #{mgr}, to_date(#{hiredateS},'YYYY-MM-DD'), #{sal}, 
		#{eImportant,jdbcType=VARCHAR}, #{address,jdbcType=VARCHAR}, #{phoneNum,jdbcType=VARCHAR}, #{email,jdbcType=VARCHAR})
	 */
	
	// insertEmp를 위한 생성자
	public Emp(String id, String pw, String ename, String birthS, String job, String mgr, String hiredateS, double sal,
			String phoneNum, String address, String gender, String email, String auth, String eImportant, String deptno,
			MultipartFile report) {
		this.id = id;
		this.pw = pw;
		this.ename = ename;
		this.birthS = birthS;
		this.job = job;
		this.mgr = mgr;
		this.hiredateS = hiredateS;
		this.sal = sal;
		this.phoneNum = phoneNum;
		this.address = address;
		this.gender = gender;
		this.email = email;
		this.auth = auth;
		this.eImportant = eImportant;
		this.deptno = deptno;
	}
			
	// updateEmp를 위한 생성자
	public Emp(String empno, String id, String pw, String ename, String birthS, String phoneNum, String address,
			String gender, String email, String description) {
		this.empno = empno;
		this.id = id;
		this.pw = pw;
		this.ename = ename;
		this.birthS = birthS;
		this.phoneNum = phoneNum;
		this.address = address;
		this.gender = gender;
		this.email = email;
		this.description = description;
	}

	// updateEimage를 위한 생성자
	public Emp(String empno, String id, String fname) {
		this.empno = empno;
		this.id = id;
		this.fname = fname;
	}
	// updateEimage01를 위한 생성자
	public Emp(String id, String pw, String ename, String fname) {
		this.id = id;
		this.pw = pw;
		this.ename = ename;
		this.fname = fname;
	}

	// 이름하고 직책으로 검색
	public Emp(String ename, String job) {
		this.ename = ename;
		this.job = job;
	}


	public String getEmpno() {
		return empno;
	}

	public void setEmpno(String empno) {
		this.empno = empno;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPw() {
		return pw;
	}



	public void setPw(String pw) {
		this.pw = pw;
	}



	public String getEname() {
		return ename;
	}



	public void setEname(String ename) {
		this.ename = ename;
	}



	public String getEimage() {
		return eimage;
	}



	public void setEimage(String eimage) {
		this.eimage = eimage;
	}



	public Date getBirth() {
		return birth;
	}



	public void setBirth(Date birth) {
		this.birth = birth;
	}



	public String getJob() {
		return job;
	}



	public void setJob(String job) {
		this.job = job;
	}



	public String getMgr() {
		return mgr;
	}



	public void setMgr(String mgr) {
		this.mgr = mgr;
	}



	public Date getHiredate() {
		return hiredate;
	}



	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}



	public double getSal() {
		return sal;
	}



	public void setSal(double sal) {
		this.sal = sal;
	}



	public String getPhoneNum() {
		return phoneNum;
	}



	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getDeptno() {
		return deptno;
	}



	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAuth() {
		return auth;
	}



	public void setAuth(String auth) {
		this.auth = auth;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}

	public MultipartFile getReport() {
		return report;
	}

	public void setReport(MultipartFile report) {
		this.report = report;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getBirthS() {
		return birthS;
	}

	public void setBirthS(String birthS) {
		this.birthS = birthS;
	}

	public String getHiredateS() {
		return hiredateS;
	}

	public void setHiredateS(String hiredateS) {
		this.hiredateS = hiredateS;
	}

	public String geteImportant() {
		return eImportant;
	}

	public void seteImportant(String eImportant) {
		this.eImportant = eImportant;
	}

	// 8/20 페이징 처리를 위해 추가
	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
	
	
	
}
