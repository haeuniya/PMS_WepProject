package pms.a01_Jangho.a03_DAO;
// pms.a01_Jangho.a03_DAO.MemberDao

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.EmpFile;

@Repository
public interface EmpDao {
	public int checkEmp(String id);
	public Emp getEmp(Emp e);	// id, pw
	public Emp getEmp01(String empno);	// empno
	
	// PM 회원가입
	public void insertEmp(Emp ins);
	
	// 프로필 수정
	public void updateEmp(Emp upt);
	
	// 프로필 이미지
	public void insertEmpFile01(EmpFile file);
	public void insertEmpFile(EmpFile file);
	
	// empno의 프로필 이미지 파일명 DB에 저장
	public void updateEimage02(Emp upt);
	public void updateEimage(Emp upt);

}
