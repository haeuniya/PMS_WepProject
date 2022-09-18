package pms.a01_Yeji.a05_Util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DownLoadCtroller {

	@RequestMapping("download.do")
	public String download(@RequestParam("mrFileName") String mrFileName, Model d) {
		d.addAttribute("downloadFileName",mrFileName); // downloadFile과 viewer에 있는 model명과 같아야함
		// viewer에서 지정한 모델명으로 파일명을 지정
		// String fname =(String)model.get("downloadFileName");
		
		return "downloadViewer";
	}
}
