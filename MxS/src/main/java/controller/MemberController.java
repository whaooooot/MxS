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
	
	

	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
