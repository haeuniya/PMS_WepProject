package pms.a01_Yeji.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Yeji.a04_VO.HRSal;
import pms.a01_Yeji.a04_VO.JobCnt;
import pms.a01_Yeji.a04_VO.PrjEmpList;
import pms.a01_Yeji.a04_VO.PrjFinance;
import pms.a01_Yeji.a04_VO.PrjRate;
import pms.a01_Yeji.a04_VO.PrjScore;
import pms.a01_Yeji.a04_VO.RiskDeg;
import pms.a01_Yeji.a04_VO.RplanStep;
import pms.a01_Yeji.a04_VO.TeamMember;

@Repository
public interface DashboardDao {
	// 프로젝트n(P100n) 진행상황
	public List<PrjRate> getPrjNRate(String prjno);
	// 전체 프로젝트 진행상황
	public List<PrjRate> getPrjRate();
	// 프로젝트별 참여인원수
	public List<PrjEmpList> getPrjHR();
	// 직책별 사원 수
	public List<JobCnt> getJobCnt(String prjno);
	// 프로젝트별 종합 품질점수
	public List<PrjScore> getTotScore();
	// 일정관리 품질점수
	public List<PrjScore> getSchdlScore(String prjno);
	// 인적자원 품질점수
	public List<PrjScore> getHrScore(String prjno);
	// 비용관리 품질점수
	public List<PrjScore> getCostScore(String prjno);
	// 비용관리 품질점수
	public List<PrjScore> get4Score(String prjno);
	// 인적자원 품질점수
	public List<PrjScore> getCommuScore(String prjno);
	// 비용관리 프로젝트별 예산
	public List<PrjFinance> getPrjFinance();
	// 비용관리 사원별 인건비
	public List<HRSal> getHRSal(String prjno);
	// 팀 멤버 리스트
	public List<TeamMember> getTeamMember(String prjno);
	// 시정조치 단계
	public List<RplanStep> getRplanStep(String prjno);
	// 전체 프로젝트 위험정도 수
	public List<RiskDeg> getRiskDeg();
}
