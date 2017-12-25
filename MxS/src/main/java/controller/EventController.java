package controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.EventDTO;
import repository.EventSessionRepository;


@Controller
public class EventController {
	
	@Autowired
	private EventSessionRepository eventSessionRepository;
	
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(Model model) {
		System.out.println("사이즈");
		List<EventDTO> result = eventSessionRepository.selectEvent();

		model.addAttribute("result", result);		
		return "event/event";
	}
	
	@RequestMapping(value = "/eventupload", method = RequestMethod.GET) //이벤트 등록
	public String eventupload(Model model) {	
		model.addAttribute("eventdto", new EventDTO());
		return "event/eventupload";
	}
	
	@RequestMapping(value = "/eventuploadfinish", method = RequestMethod.POST) //이벤트 등록 완료
	public String eventuploadfinish(Model model,@ModelAttribute("eventdto")EventDTO eventdto) {	
		eventSessionRepository.insertEvent(eventdto);		
		return "event/eventuploadfinish";
	}
	
	
	
	
	@RequestMapping(value = "/eventprize", method = RequestMethod.GET)
	public String event3(Model model) {
		return "event/eventprize";
	}
	
	
	@RequestMapping(value = "/eventprizeadmin", method = RequestMethod.GET)
	public String event4(Model model) {
		return "event/eventprizeadmin";
	}
	
	
	@RequestMapping(value = "/eventend", method = RequestMethod.GET)
	public String event5(Model model) {
		return "event/eventend";
	}
	
	@RequestMapping(value = "/eventendadmin", method = RequestMethod.GET)
	public String event6(Model model) {
		return "event/eventendadmin";
	}
	
	@RequestMapping(value = "/eventdetail", method = RequestMethod.GET)
	public String event7(Model model) {
		return "event/eventdetail";
	}
	
	
	
	
	

	
	
}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
