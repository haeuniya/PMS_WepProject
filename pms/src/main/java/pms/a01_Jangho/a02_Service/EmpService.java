package pms.a01_Jangho.a02_Service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.EmpFile;
import pms.a01_Jangho.a03_DAO.EmpDao;

@Service
public class EmpService {
	@Autowired(required=false)
	private EmpDao dao;
	public int checkEmp(String id) {
		return dao.checkEmp(id);
	}
	public Emp getEmp(Emp e) {
		return dao.getEmp(e);
	}
	public Emp getEmp01(String empno) {
		return dao.getEmp01(empno);
	}

	@Value("${fileupload}")
	private String path;
	
	// PM 회원가입
	public void insertEmp(Emp ins) {
		MultipartFile mpf = ins.getReport();
		String fname = mpf.getOriginalFilename();
		
		File f = new File(path+fname);
		
		try {
			mpf.transferTo(f);
			System.out.println("파일업로드 완성");
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		dao.insertEmp(ins);
		if(!fname.equals("")) {
			dao.insertEmpFile01(new EmpFile(path, fname));
			dao.updateEimage02(new Emp(ins.getId(), ins.getPw(), ins.getEname(), fname));
		}else {
			dao.insertEmpFile01(new EmpFile(path, "default.png"));
			dao.updateEimage02(new Emp(ins.getId(), ins.getPw(), ins.getEname(), "default.png"));
		}
	}
	
	// 프로필 수정
	public void updateEmp(Emp upt) {
		MultipartFile mpf = upt.getReport();
		String fname = mpf.getOriginalFilename();
		
		File f = new File(path+fname);
		
		try {
			mpf.transferTo(f);
			System.out.println("파일업로드 완성");
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.updateEmp(upt);
		if(!fname.equals("")) {
			dao.insertEmpFile(new EmpFile(upt.getEmpno(), path, fname));
			dao.updateEimage(new Emp(upt.getEmpno(), upt.getId(), fname));
		}
	}

}