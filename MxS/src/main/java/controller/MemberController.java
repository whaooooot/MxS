package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String member(Model model) {
		return "member/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String member2(Model model) {
		return "member/join";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String member3(Model model) {
		return "member/mypage";
	}
	
	@RequestMapping(value = "/mycoupon", method = RequestMethod.GET)
	public String member4(Model model) {
		return "member/mycoupon";
	}
	
	@RequestMapping(value = "/mypoint", method = RequestMethod.GET)
	public String member5(Model model) {
		return "member/mypoint";
	}
	
	@RequestMapping(value = "/mypointadd", method = RequestMethod.GET)
	public String member6(Model model) {
		return "member/mypointadd";
	}
	
	@RequestMapping(value = "/myticket", method = RequestMethod.GET)
	public String member7(Model model) {
		return "member/myticket";
	}
	
	

	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
