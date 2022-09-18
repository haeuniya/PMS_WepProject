package pms.a01_Haeun.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Calendar;
// pms.a01_Haeun.a03_DAO.CalendarDao
// public List<Calendar> getCalList();
@Repository
public interface CalendarDao {
	// 조회
	public List<Calendar> getCalList(String prjNo);
	// 등록
	public void insertCalendar(Calendar ins);
	// 수정
	public void updateCalendar(Calendar upt);
	// 삭제
	public void deleteCalendar(Calendar del);
	
	// 로드맵 기간

	public void getRmPeriod(Calendar period);

}
