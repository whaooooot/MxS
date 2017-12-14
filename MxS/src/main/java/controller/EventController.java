package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventController {
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(Model model) {
		return "event/event";
	}
	
	@RequestMapping(value = "/eventupload", method = RequestMethod.GET)
	public String event2(Model model) {
		return "event/eventupload";
	}
	
	@RequestMapping(value = "/eventprize", method = RequestMethod.GET)
	public String event3(Model model) {
		return "event/eventprize";
	}
	
	
	@RequestMapping(value = "/eventend", method = RequestMethod.GET)
	public String event4(Model model) {
		return "event/eventend";
	}
	
	
	

	

	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
