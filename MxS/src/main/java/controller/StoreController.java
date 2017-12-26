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
import org.springframework.web.bind.support.SessionStatus;


import model.GpaylistDTO;
import model.StoreDTO;
import model.StoreoptDTO;
import repository.StoreSessionRepository;



@Controller
@SessionAttributes("cart")
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
		storeSessionRepository.insertStoreopt(storeoptdto); //등록
		return "store/storeoptionfinish";
	}
	

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET) //상품상세보기
	public String productdetail(Model model, HttpServletRequest req) {
		//System.out.println(req.getParameter("num"));				
			model.addAttribute("detail", storeSessionRepository.productdetail(Integer.parseInt(req.getParameter("num")))); //수에맞게상품불러오기
			model.addAttribute("detailopt", storeSessionRepository.productoptdetail(Integer.parseInt(req.getParameter("num")))); //수에맞게 옵션불러오기
			model.addAttribute("gpaylistdto", new GpaylistDTO());
			return "store/productdetail";
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST) //결제하기
	public String store3(Model model,@ModelAttribute("gpaylistdto")GpaylistDTO gpaylistdto) {
		storeSessionRepository.insertGpaylist(gpaylistdto);
		return "store/payment";
	}
	
	
	@RequestMapping(value = "/productresult", method = RequestMethod.POST) //상품등록완료
	public String productresult(Model model) {
		
		//System.out.println(storedto.getGoodsCon()+"jjj");		
			
		return "store/productresult";
	}	
	

	
	@RequestMapping(value = "/storeadmin", method = RequestMethod.GET) //관리자스토어
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
	public String add(@ModelAttribute StoreDTO goods, SessionStatus sessionStatus,	         
			@ModelAttribute("cart") List<StoreDTO> cart) {
	cart.add(goods);
 //정리
	return "redirect:/cart"; //"store/cart"
	}
	

	@RequestMapping(value = "/storedelete", method = RequestMethod.POST)  //상품삭제
	public String storedelete(StoreDTO storedto, Model model) {				
		Integer result =  storeSessionRepository.deleteStore(storedto.getGoodsNum());		
		model.addAttribute("result", result);
		return "store/storedelete";
	}
	
	@RequestMapping(value = "/storeoptdelete", method = RequestMethod.POST)  //상품옵션삭제
	public String storeoptdelete(StoreoptDTO storeoptdto, Model model) {				
		Integer result =  storeSessionRepository.deleteStoreopt(storeoptdto.getGoodsOptnum());
		model.addAttribute("result", result);
		return "store/storeoptdelete";
	}
	
	
	@RequestMapping(value = "/storeupdate", method = RequestMethod.GET) //상품수정
	public String storeupdate(Model model) {
		//System.out.println("11");		
		model.addAttribute("storedto", new StoreDTO());
		return "store/storeupdate";
	}
	
	@RequestMapping(value = "/storeupdatefinish", method = RequestMethod.POST)	//상품수정완료
	public String storeupdatefinish(@ModelAttribute("storedto")StoreDTO storedto, Model model) {		
		Integer result =  storeSessionRepository.updateStore(storedto);	
		model.addAttribute("result", result);
		return "store/storeupdatefinish";
	}
	
	
	@RequestMapping(value = "/storeoptupdatefinish", method = RequestMethod.POST)	//상품수정완료
	public String storeoptupdatefinish(@ModelAttribute("storeoptdto")StoreoptDTO storeoptdto, Model model) {		
		Integer result =  storeSessionRepository.updateStoreopt(storeoptdto);
		model.addAttribute("result", result);
		return "store/storeoptupdatefinish";
	}
	
	

		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
