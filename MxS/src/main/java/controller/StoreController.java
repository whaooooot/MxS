package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.StoreDTO;
import model.StoreoptDTO;
import repository.StoreSessionRepository;



@Controller
@SessionAttributes({"cart"})
public class StoreController {
	
	@Autowired
	private StoreSessionRepository storeSessionRepository;

	@RequestMapping(value = "/store", method = RequestMethod.GET) //스토어메인
	public String store(Model model) {
		//System.out.println("사이즈");
		List<StoreDTO> result = storeSessionRepository.selectStore(); //상품출력
		model.addAttribute("result", result);		
		model.addAttribute("count", result.size());
		
		
		return "store/store";
	}
		
	@RequestMapping(value = "/storeupload", method = RequestMethod.GET) //상품등록
	public String storeupload(Model model) {
		//System.out.println("11");		
		model.addAttribute("storedto", new StoreDTO());
		return "store/storeupload";
	}
	
	@RequestMapping(value = "/storeuploadfinish", method = RequestMethod.POST) //상품등록완료
	public String storeuploadfinish(Model model,@ModelAttribute("storedto")StoreDTO storedto) {
		
		//System.out.println(storedto.getGoodsCon()+"jjj");		
		storeSessionRepository.insertStore(storedto);		
		return "store/storeuploadfinish";
	}	
	
	@RequestMapping(value = "/storeoption", method = RequestMethod.GET) //옵션등록
	public String storeoption(Model model) {
		//System.out.println("11");	
		List<StoreDTO> result1 = storeSessionRepository.selectStore(); //상품출력
		model.addAttribute("result1", result1);	
		
		model.addAttribute("storeoptdto", new StoreoptDTO()); //등록
		List<StoreoptDTO> result = storeSessionRepository.selectStoreopt(); //옵션출력
		model.addAttribute("result", result);
		return "store/storeoption";
	}
	
	@RequestMapping(value = "/storeoptionfinish", method = RequestMethod.POST) //옵션등록완료
	public String storeoptionfinish(Model model,@ModelAttribute("storeoptdto")StoreoptDTO storeoptdto) {
		
		//System.out.println(storedto.getGoodsCon()+"jjj");		
		storeSessionRepository.insertStoreopt(storeoptdto);
		return "store/storeoptionfinish";
	}
	

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET) //상품상세보기
	public String productdetail(Model model, HttpServletRequest req) {
		//System.out.println(req.getParameter("num"));				
			model.addAttribute("detail", storeSessionRepository.productdetail(Integer.parseInt(req.getParameter("num"))));
			model.addAttribute("detailopt", storeSessionRepository.productoptdetail(Integer.parseInt(req.getParameter("num"))));
			return "store/productdetail";
	}
	
	
	
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String store3(Model model) {
		return "store/payment";
	}
	

	
	
	@RequestMapping(value = "/storeadmin", method = RequestMethod.GET)
	public String store6(Model model) {
		return "store/storeadmin";
	}
	

	@RequestMapping(value="cart", method = RequestMethod.GET) //장바구니
	public String getCart(Model model) {
	if (!model.containsAttribute("cart")) {
	model.addAttribute("cart", new ArrayList<StoreDTO>());
	}
	return "store/cart";
	}
	
	@RequestMapping(value="cart", method = RequestMethod.POST) //장바구니추가
	public String add(@ModelAttribute StoreDTO goods,
	         @ModelAttribute("cart") List<StoreDTO> cart) {
	cart.add(goods);
	return "redirect:cart";
	}
	
	/*@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String store5(Model model) {
		return "store/cart";
	}
	
	
	}*/
	
	
	



	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
