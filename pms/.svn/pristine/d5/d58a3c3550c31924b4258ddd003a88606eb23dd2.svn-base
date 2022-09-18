package pms.a01_Jangho.a03_DAO;
// pms.a01_Jangho.a03_DAO.MemberDao

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Emp;

@Repository
public interface EmpDao {
	public int checkEmp(String id);
	public Emp getEmp(Emp e);	// id, pw
	public Emp getEmp01(String empno);	// empno
	
	// 회원가입
	public void insertEmp(Emp ins);
	
	// 프로필 수정
	public void updateEmp(Emp upt);
	public void updateEmpFile(String fname);
}
