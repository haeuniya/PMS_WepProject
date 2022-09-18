package pms.a01_Yeji.a02_Service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Yeji.a03_DAO.MailDao;
import pms.a01_Yeji.a04_VO.Mail;
import pms.a01_Yeji.a04_VO.Outbox;
import pms.a01_Yeji.a04_VO.OutboxFile;
import pms.a01_Yeji.a04_VO.OutboxSch;



@Service
public class MailService {
	// 컨테이너에 있는 메일 발송 객체 autowiring 처리
	@Autowired(required = false)
	private JavaMailSender sender;
	@Autowired(required = false)
	private MailDao dao;
	
	public String sendMail(Mail email) {
		String msg = "메일 발송 성공"; // 메일 발송이 성공되었을 때, 처리할 메서드 선언
		// 1. 멀티미디어형 메일 데이터 전송
		MimeMessage mmsg = sender.createMimeMessage();
		// 2. 제목 설정
		try {
			mmsg.setSubject(email.getMailTitle());
			// 3. 수신자 설정
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(email.getReceiver()));
			// 4. 내용 설정
			mmsg.setText(email.getMailcontent());
			// 5. 발송 처리
			sender.send(mmsg);
		} catch (MessagingException e) {
			System.out.println("## 전송 에러 ##");
			System.out.println(e.getMessage());
			// TODO Auto-generated catch block
			// e.printStackTrace();
			msg = "메일 발송 에러:"+e.getMessage();
			System.out.println(msg);
		}catch(Exception e) {
			System.out.println("## 일반 에러 ##");
			System.out.println(e.getMessage());
			msg = "일반 에러 발생:"+e.getMessage();
		}
		
		return msg;
	}
	public List<Outbox> totCnt(OutboxSch sch) {
		return dao.totCnt(sch); 
	}
	public List<Outbox> outboxList(Outbox ob) {
		return dao.outboxList(ob); 
	}
	public List<Emp> mailEmpList(Emp add) {
		return dao.mailEmpList(add); 
	}
	
	
	// 파일 서버 정보(공통 정보)
	@Value("${mailupload}")
	private String mailFilePath;

	public void insertOutbox(Outbox ins){
		MultipartFile mpf = ins.getMailReport();
		String mailFileName = mpf.getOriginalFilename();
		File f = new File(mailFilePath+mailFileName);
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
		
		dao.insertOutbox(ins); // 선언 순서 중요!! 기본정보가 등록돼야 key(no)가 만들어지고
		dao.insertFile(new OutboxFile(mailFilePath,mailFileName)); // 위 게시물의 key를 가져와서 파일 정보에 등록
		
		// 	insert into boardfile values(board_seq.currval,
		//	#{path}, #{fname}, sysdate, sysdate, '')
	}
	
	public Outbox getOutboxDetail(int mailNum) {
		// 상세 내용을 VO로 가져오기
		return dao.getOutboxDetail(mailNum);
	}
	
	public Outbox updateOutbox(Outbox upt) {
		dao.updateOutbox(upt);
		return dao.getOutboxDetail(upt.getMailNum());
	}
	
	public void deleteOutbox(int mailNum) {
		dao.deleteOutbox(mailNum);
	}
	
}
