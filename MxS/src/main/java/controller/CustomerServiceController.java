package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import model.*;
import repository.*;

@Controller
public class CustomerServiceController {

	@Autowired
	private CustomerSessionRepository customerSessionRepository;

	/* 고객센터 메인 */
	@RequestMapping(value = "/customer_service", method = RequestMethod.GET)
	public String customerservice(CustomerDTO custmoerdto, Model model) {
		List<CustomerDTO> result = customerSessionRepository.selectCustomer(custmoerdto);

		model.addAttribute("customer", result);

		return "customerservice/customer_service";
	}

	/* 자주 찾는 질문 */
	@RequestMapping(value = "/customer_qna", method = RequestMethod.GET)
	public String customerservice2(CustomerDTO custmoerdto, Model model) {
		List<CustomerDTO> result = customerSessionRepository.selectQna(custmoerdto);
		model.addAttribute("qna", result);
		
		Integer count = customerSessionRepository.selectCount(custmoerdto);
		model.addAttribute("count", count);

		return "customerservice/customer_qna";
	}
	/* 자주 찾는 질문 리스트 Tab */
	@ResponseBody	
	@RequestMapping(value = "/customer_qna_list", method = RequestMethod.POST)
	public String customerservice2tab(HttpServletRequest request, CustomerDTO custmoerdto, Model model) {
		// System.out.println("?");
		String tab_type = request.getParameter("p_tab_value"); // data: p_tab_value 을 받아옴
		custmoerdto.setTabType(tab_type); // DTO TabType에 담음
		
		List<CustomerDTO> result = customerSessionRepository.selectQnaList(custmoerdto); // xml에서 값 찾아 넣음
		
		Gson gson = new Gson();
		String json = gson.toJson(result);
		
		model.addAttribute("json", json);
		
		return json;
		
	}

	
	
	/* 공지/뉴스 */
	@RequestMapping(value = "/customer_notice", method = RequestMethod.GET)
	public String customerservice3(CustomerDTO custmoerdto, Model model) {
		List<CustomerDTO> result = customerSessionRepository.selectNotice(custmoerdto);
		model.addAttribute("notice", result);
		return "customerservice/customer_notice";
	}
	/* 공지/뉴스 리스트 Tab */
	@ResponseBody	
	@RequestMapping(value = "/customer_notice_list", method = RequestMethod.POST)
	public String customerservice3tab(HttpServletRequest request, CustomerDTO custmoerdto, Model model) {
		String tab_type = request.getParameter("p_tab_value");
		custmoerdto.setTabType(tab_type);
		
		List<CustomerDTO> result = customerSessionRepository.selectNoticeList(custmoerdto);
		
		Gson gson = new Gson();
		String json = gson.toJson(result);
		
		model.addAttribute("json", json);
		
		return json;
		
	}

	
	
	/* 이메일 문의 */
	@RequestMapping(value = "/customer_email", method = RequestMethod.GET)
	public String customerservice4(MemberDTO memberdto, Model model) {
		
		Map<String, Object> result = customerSessionRepository.selectEmail(memberdto);
		
		model.addAttribute("email", result);
		
		return "customerservice/customer_email";
	}
	
	@RequestMapping(value = "/customer_email", method = {RequestMethod.GET, RequestMethod.POST})
	public String customerservice5(CustomerDTO custmoerdto, Model model) {
		
		Map<String, Object> result = customerSessionRepository.selectEmail(memberdto);
		
		model.addAttribute("email", result);
		
		return "customerservice/customer_email";
	}

}
