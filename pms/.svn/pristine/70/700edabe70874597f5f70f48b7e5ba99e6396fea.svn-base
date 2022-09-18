package pms.a01_Heonyong.a01_Controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class MultiLangController {
	// 컨테이너에 언어에 따라서 view 화면의 language가 변경 되게 설정하는 객체 호출..
	@Autowired(required=false)
	private LocaleResolver localResolver;
	
	// http://localhost:7080/pms/introduce.do
	@RequestMapping("introduce.do")
	public String multi( 
			@RequestParam(value="lang", defaultValue = "") String lang,
			HttpServletRequest request, HttpServletResponse response, Model model
			) {
		System.out.println("선택한 언어:"+lang);
		String img1;
		String img2;
		String img3;
        if (lang.equals("ko")) {
            img1 = "en";
            img2 = "zh";
            img3 = "ja";
        } else if (lang.equals("en")) {
            img1 = "ko";
            img2 = "zh";
            img3 = "ja";
        } else if (lang.equals("zh")) {
            img1 = "en";
            img2 = "ko";
            img3 = "ja";
        } else if (lang.equals("ja")) {
            img1 = "en";
            img2 = "zh";
            img3 = "ko";
        }else {
            lang = "ko";
            img1 = "en";
            img2 = "zh";
            img3 = "ja";
        }
		model.addAttribute("img",lang);
		model.addAttribute("img1",img1);
		model.addAttribute("img2",img2);
		model.addAttribute("img3",img3);
		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		
		return "WEB-INF\\views\\a01_Heonyong\\04.asapIntroduce.jsp";
	}
}
