package pms.a01_Haeun.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.EmpFile;

// pms.a01_Haeun.a03_DAO.HRDao
@Repository
public interface HRDao {
	
	// 직원 검색
	public List<Emp> getEmpList(Emp sch);
	// 직원 등록
	public void insertEmp(Emp ins);
	// 직원 상세 정보
	public Emp getDetail(String empno);
	// 직원 정보 수정
	public void updateEmp(Emp upt);
	// 직원 정보 삭제
	public void deleteEmp(String empno);
	// 직원 (사진)파일 업로드
	public void insertFile(EmpFile file);
}
