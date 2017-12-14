package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerServiceController {
	
	@RequestMapping(value = "/customer_service", method = RequestMethod.GET)
	public String customerservice(Model model) {
		return "customerservice/customer_service";
	}
	
	@RequestMapping(value = "/customer_qna", method = RequestMethod.GET)
	public String customerservice2(Model model) {
		return "customerservice/customer_qna";
	}
	
	@RequestMapping(value = "/customer_notice", method = RequestMethod.GET)
	public String customerservice3(Model model) {
		return "customerservice/customer_notice";
	}
	
	

	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
