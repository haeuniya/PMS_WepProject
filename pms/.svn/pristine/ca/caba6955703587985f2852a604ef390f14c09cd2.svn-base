package pms.a01_Yeji.a02_Service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.naming.NamingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import pms.a01_Yeji.a03_DAO.MeetingBoardDao;
import pms.a01_Yeji.a04_VO.MeetingBoard;
import pms.a01_Yeji.a04_VO.MeetingBoardFile;
import pms.a01_Yeji.a04_VO.MeetingBoardSch;


@Service
public class MeetingBoardService {
	@Autowired(required=false)
	private MeetingBoardDao dao;
	
	public List<MeetingBoard> boardList(MeetingBoardSch sch){
		// 요청값을 넘기고, 객체(ArrayList<Board>를 받는 처리
		
		return dao.boardList(sch); 
	}
	
	// 파일 서버 정보(공통 정보)
	@Value("${upload}")
	private String mrFilePath;

	public void insertBoard(MeetingBoard ins){
		MultipartFile mpf = ins.getReport();
		String mrFileName = mpf.getOriginalFilename();
		
		File f = new File(mrFilePath+mrFileName);
		try {
			mpf.transferTo(f);
			System.out.println("파일업로드 완료");
			// IO(input/output)일어나는 경우에는 일반적으로 필수예외처리(compile예외처리)
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		dao.insertBoard(ins); // 선언 순서 중요!! 기본정보가 등록돼야 key(no)가 만들어지고
		dao.insertFile(new MeetingBoardFile(mrFilePath,mrFileName)); // 위 게시물의 key를 가져와서 파일 정보에 등록
		
		
	
		
		// 	insert into boardfile values(board_seq.currval,
		//	#{path}, #{fname}, sysdate, sysdate, '')
	}
	
	public MeetingBoard getBoardDetail(int recordNum) {
		
		// 조회 카운트업
		dao.readCountup(recordNum);
		
		// 상세 내용을 VO로 가져오기
		return dao.getBoardDetail(recordNum);
	}
	
	public MeetingBoard updateBoard(MeetingBoard upt) {
		dao.updateBoard(upt);
		return dao.getBoardDetail(upt.getRecordNum());
	}
	
	public void deleteBoard(int recordNum) {
		dao.deleteBoard(recordNum);
	}
	public void deleteBoardFile(int recordNum) {
		dao.deleteBoardFile(recordNum);
	}
}
