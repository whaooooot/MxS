package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.EventDTO;
import repository.EventSessionRepository;


@Controller
public class EventController {
	
	@Autowired
	private EventSessionRepository eventSessionRepository;
	
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)  // 이벤트 메인
	public String event(Model model) {
		List<EventDTO> result = eventSessionRepository.selectEvent(); // 이벤트출력

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
	
	
	@RequestMapping(value = "/eventupdate", method = RequestMethod.GET) //이벤트 수정
	public String eventupdate(Model model) {	
		model.addAttribute("eventdto", new EventDTO());
		return "event/eventupdate";
	}
	
	@RequestMapping(value = "/eventupdatefinish", method = RequestMethod.POST)	//이벤트 수정 완료
	public String eventupdatefinish(Model model, @ModelAttribute("eventdto")EventDTO eventdto) {		
		Integer result =  eventSessionRepository.updateEvent(eventdto);	
		model.addAttribute("result", result);
		return "event/eventupdatefinish";
	}
	
	@RequestMapping(value = "/eventdetail", method = RequestMethod.GET) //이벤트 상세보기
	public String eventdetail(Model model, HttpServletRequest req) {				
		model.addAttribute("detail", eventSessionRepository.eventdetail(Integer.parseInt(req.getParameter("num")))); //수에맞게상품불러오기
		return "event/eventdetail";
	}  

	
	@RequestMapping(value = "/eventprize", method = RequestMethod.GET)  // 당첨자 발표
	public String event3(Model model) {   
		return "event/eventprize";
	}
	
	
	@RequestMapping(value = "/eventprizeadmin", method = RequestMethod.GET)   // 당첨자 발표 관리자
	public String event4(Model model) {
		return "event/eventprizeadmin";
	}
	
	
	@RequestMapping(value = "/eventend", method = RequestMethod.GET)  // 이벤트 종료
	public String event5(Model model) {
		return "event/eventend";
	}
	
	@RequestMapping(value = "/eventendadmin", method = RequestMethod.GET)  // 이벤트 종료 관리자
	public String event6(Model model) {
		return "event/eventendadmin";
	}
	
	
	@RequestMapping(value = "/eventadmin", method = RequestMethod.GET) //이벤트 관리자 
	public String event8(Model model) {
		//System.out.println("사이즈");
		List<EventDTO> result = eventSessionRepository.selectEvent(); // 이벤트출력

		model.addAttribute("result", result);
		return "event/eventadmin";
	}
	
	
	

	
	
}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
