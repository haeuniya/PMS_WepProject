package pms.a01_Haeun.a03_DAO;
// pms.a01_Haeun.a03_DAO.ProjectDao

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Calendar;
import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.PrjEmp;
import pms.a01_Haeun.a04_VO.Project;

@Repository
public interface ProjectDao {
	
	// 프로젝트 검색
	public List<Project> getProjectList(Project sch);

	public Project getUptFormPrj(String prjNo);
	public void updatePrj(Project upt);
	// 프로젝트 등록
	public void insertProject(Project ins);
	// 프로젝트 인적자원리스트
	public List<PrjEmp> getPrjEmpList(String prjNo);
	
	// 인적자원 삭제, 등록
	public void deletePrjEmp(String prjNo);
	public void insertPrjEmp(PrjEmp ins);
	// 인적자원 1명 제거
	public void delEmp(PrjEmp del);
	// 없는 사원 리스트
	public List<Emp> getEmpN(String prjNo);
	
	
	// 프로젝트 캘린더
	public List<Calendar> getPrjCalendar(String prjNo);
	

	
}
