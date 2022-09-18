package pms.a01_Yeji.a01_Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pms.a01_Yeji.a02_Service.UserService;
import pms.a01_Yeji.a04_VO.User;

@Controller
public class UserController { 	
/*	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService serivce; */
	
	/**
	 * 메인 페이지
	 * @return
	 */
/*	@GetMapping(value = "/")
	public String home() {
		return "home";
	}*/
	
	/**
	 * 로그인 및 회원가입 페이지
	 * @return
	 */
/*	@GetMapping(value = "/signIn")
	public String signIn() {
		return "signIn";
	}*/
	
	/**
	 * 회원가입
	 * @return
	 */
/*	@PostMapping(value = "/signUp")
	public String signUp(@RequestParam HashMap<String, String> map) {
		// TODO
		// 1. 이메일 인증 
		// 2. 아이디 중복 검사
		// 3. 비밀번호 암호화
		logger.debug(map.toString());
		return "it works";
	}*/

	/**
	 * 1. 로그인
	 * @param session
	 * @param name
	 * @return
	 */
/*	@PostMapping(value = "/login")
	public ModelAndView login(HttpSession session, String name) {
		
		ModelAndView mav = null;
		
		User user = serivce.selectUser(name);
		
		if(user != null) {
			session.setAttribute("loginUser", user);
			mav = new ModelAndView("login");    
		}
		
		return mav;
	}*/
	
	/**
	 * 2. 로그아웃
	 * @param session
	 * @return
	 */
/*	@PostMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		
		ModelAndView mav = null;
		 
		mav = new ModelAndView("login");  
		
		session.invalidate();
		
		return mav;
	}	*/
	
	/**
	 * 3. 유저 목록
	 * @param session
	 * @return
	 */
/*	@PostMapping(value = "/userList")
	public ModelAndView userList(HttpSession session) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("h:mm a | MMM d", new Locale("en", "US"));
		
		ModelAndView mav = null;
		
		ArrayList<User> userList = serivce.selectUserList();
		
		mav = new ModelAndView("users");
		
		mav.addObject("userList", userList);
		
		mav.addObject("date", sdf.format(new Date()));
		
		return mav;
	}*/
	
	/**
	 * 3. 유저 목록
	 * @param session
	 * @return
	 */
/*	@PostMapping(value = "/chatRecord")
	public ModelAndView chatRecord(HttpSession session, @RequestBody HashMap<String, String> map) {
		
		ModelAndView mav = null;
		
		// ArrayList<UserDTO> chatList = userSerivce.selectChatList();
		
		mav = new ModelAndView("message");
		
		return mav;
	}*/
	
	

	
	/**
	 * 3. 메세지 HTML 전송
	 * JSON 타입의 파라미터를 받기 위해서는 @RequestBody 어노테이션을 붙여줘야 한다.
	 * 
	 * @param session
	 * @param map
	 * @return
	 */
/*	@PostMapping(value = "/message")
	public ModelAndView message(HttpSession session, @RequestBody HashMap<String, String> map) { 
		
		SimpleDateFormat sdf = new SimpleDateFormat("h:mm a | MMM d", new Locale("en", "US"));
		
		ModelAndView mav = null;
		
		mav = new ModelAndView("message"); 
		
		User user = (User)session.getAttribute("loginUser");
		String sender = map.get("sender");

		if(!user.getUserName().equals(sender)) {
			mav.addObject("sender", sender);
		}
		
		mav.addObject("content", map.get("content"));
		mav.addObject("date", sdf.format(new Date()));
		return mav;
	}	*/
	
	
	/**
	 * 4. 채팅룸 HTML 전송
	 * JSON 타입의 파라미터를 받기 위해서는 @RequestBody 어노테이션을 붙여줘야 한다.
	 * @param session
	 * @param map
	 * @return
	 */
/*	@PostMapping(value = "/room")
	public ModelAndView room(HttpSession session, @RequestBody HashMap<String, String> map) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("h:mm a | MMM d", new Locale("en", "US"));
		
		ModelAndView mav = null;
		
		mav = new ModelAndView("room"); 
		
		// 날짜 추가         
		mav.addObject("date", sdf.format(new Date()));
		
		if(map.get("handle").equals("roomList")) {     
			map.remove("handle");
			mav.addObject("map", map);
			return mav;
		}

		// uuid 추가
		mav.addObject("uuid", map.get("uuid"));
		
		String sender = map.get("sender");
		
		mav.addObject("sender", sender);
		return mav;
	}	*/

}