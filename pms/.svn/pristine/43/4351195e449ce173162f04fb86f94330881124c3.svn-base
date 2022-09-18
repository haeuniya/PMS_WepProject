package pms.a01_Haeun.a02_Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pms.a01_Haeun.a03_DAO.CalendarDao;
import pms.a01_Haeun.a04_VO.Calendar;

@Service
public class CalendarService {
	@Autowired(required=false)
	private CalendarDao dao;
	// 캘린더 일정 조회
	public List<Calendar> getCalList(String prjNo){
		return dao.getCalList(prjNo);
	}
	// 캘린더 일정 등록
	public void insertCalendar(Calendar ins) {
		dao.insertCalendar(ins);
	}
	// 캘린더 일정 수정
	public void updateCalendar(Calendar upt) {
		dao.updateCalendar(upt);
	}
	// 캘린더 일정 삭제
	public void deleteCalendar(int id) {
		dao.deleteCalendar(id);
	}
	
}
