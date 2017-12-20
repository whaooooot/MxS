package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import model.StoreDTO;
import repository.StoreSessionRepository;

@Controller
public class StoreController {
	
	@Autowired
	private StoreSessionRepository storeSessionRepository;

	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String store(Model model) {
		//System.out.println("사이즈");
		List<StoreDTO> result = storeSessionRepository.selectStore();
		model.addAttribute("result", result);		
		return "store/store";
	}
	
	
	@RequestMapping(value = "/storeupload", method = RequestMethod.GET)
	public String storeupload(Model model) {
		//System.out.println("11");		
		model.addAttribute("storedto", new StoreDTO());
		return "store/storeupload";
	}
	
	@RequestMapping(value = "/storeuploadfinish", method = RequestMethod.POST)
	public String storeuploadfinish(Model model,@ModelAttribute("storedto")StoreDTO storedto) {
		
		//System.out.println(storedto.getGoodsCon()+"jjj");		
		storeSessionRepository.insertStore(storedto);
		return "store/storeuploadfinish";
	}
	
	
	@RequestMapping(value = "/storeoption", method = RequestMethod.GET)
	public String storeoption(Model model) {
		//System.out.println("11");		
		model.addAttribute("storedto", new StoreDTO());
		return "store/storeoption";
	}
	


	
	
	
	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String store2(Model model) {
		return "store/productdetail";
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String store3(Model model) {
		return "store/payment";
	}
	

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String store5(Model model) {
		return "store/cart";
	}
	
	@RequestMapping(value = "/storeadmin", method = RequestMethod.GET)
	public String store6(Model model) {
		return "store/storeadmin";
	}
	

	



	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
