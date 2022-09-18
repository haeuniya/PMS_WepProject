package pms.a01_Yeji.a03_DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Yeji.a04_VO.Outbox;
import pms.a01_Yeji.a04_VO.OutboxFile;
import pms.a01_Yeji.a04_VO.OutboxSch;

@Repository
public interface MailDao {
	
	public List<Emp> mailEmpList(Emp add);
	public List<Outbox> totCnt(OutboxSch sch);
	public List<Outbox> outboxList(Outbox ob);

	public void insertOutbox(Outbox ins);
	
	public void insertFile(OutboxFile file);
	
	
	public Outbox getOutboxDetail(int mailNum);

	public void updateOutbox(Outbox upt);
	public void deleteOutbox(int mailNum);
	
}
