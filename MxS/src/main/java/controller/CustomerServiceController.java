package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.CustomerDTO;
import repository.CustomerSessionRepository;

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

		Integer count = customerSessionRepository.selectCount(custmoerdto);
		model.addAttribute("count", count);

		return "customerservice/customer_qna";
	}

	/* 자주 찾는 질문 리스트 */
    @SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "customerList.do", method = RequestMethod.POST)
	@ResponseBody
	public List<Map<String, Object>> customerList(HttpServletRequest HttpServletRequest, CustomerDTO custmoerdto) {
		Map<String, Object> map = new HashMap<String, Object>();
		String tab_type = HttpServletRequest.getParameter("p_tab_value"); // data: p_tab_value 을 받아옴
		custmoerdto.setTabType(tab_type); // DTO TabType에 담음

		List<Map<String, Object>> result = customerSessionRepository.selectQna(custmoerdto); // xml에서 값 찾아 넣음
		return result;
	}

	/* 공지/뉴스 */
	@RequestMapping(value = "/customer_notice", method = RequestMethod.GET)
	public String customerservice3(CustomerDTO custmoerdto, Model model) {
		List<CustomerDTO> result = customerSessionRepository.selectNotice(custmoerdto);
		model.addAttribute("notice", result);

		return "customerservice/customer_notice";
	}

	/* 이메일 문의 */
	@RequestMapping(value = "/customer_email", method = RequestMethod.GET)
	public String customerservice4(CustomerDTO customerdto, Model model) {
		/*
		 * Integer result = customerSessionRepository.selectEmail(memberdto);
		 * model.addAttribute("email", result);
		 */
		return "customerservice/customer_email";
	}

}
