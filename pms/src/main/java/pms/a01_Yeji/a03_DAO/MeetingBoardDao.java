package pms.a01_Yeji.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Yeji.a04_VO.MeetingBoard;
import pms.a01_Yeji.a04_VO.MeetingBoardFile;
import pms.a01_Yeji.a04_VO.MeetingBoardSch;


@Repository
public interface MeetingBoardDao {
	public List<MeetingBoard> totCnt(MeetingBoardSch sch); 
	public List<MeetingBoard> boardList(MeetingBoardSch sch);
	
	public void insertBoard(MeetingBoard ins);
	
	public MeetingBoard getBoardDetail(int recordNum);
	public void readCountup(int recordNum);
	
	public void updateBoard(MeetingBoard upt);
	public void deleteBoard(int recordNum);
	public void deleteBoardFile(int recordNum);
	
	
	public void insertFile(MeetingBoardFile file);
}
