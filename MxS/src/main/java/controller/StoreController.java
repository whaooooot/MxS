package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	

	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String store(Model model) {
		return "store/store";
	}
	
	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String store2(Model model) {
		return "store/productdetail";
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String store3(Model model) {
		return "store/payment";
	}
	
	@RequestMapping(value = "/productresult", method = RequestMethod.POST)
	public String store4(Model model) {
		return "store/productresult";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String store5(Model model) {
		return "store/cart";
	}
	
	@RequestMapping(value = "/storeadmin", method = RequestMethod.GET)
	public String store6(Model model) {
		return "store/storeadmin";
	}
	
	@RequestMapping(value = "/storeupload", method = RequestMethod.GET)
	public String store7(Model model) {
		return "store/storeupload";
	}
	
	


	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
