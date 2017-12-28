package controller;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import model.Member;
import repository.MemberSessionRepository;

@Controller
public class MemberController {
	@Autowired
	private MemberSessionRepository memberSessionRepository;
	
	@RequestMapping(value="/login", method={RequestMethod.GET, RequestMethod.POST})
	public String member(Model model) {
		model.addAttribute("member", new Member());
		//Gson gson = new Gson();
		return "member/login";
	}
	@RequestMapping(value="/loginyes", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView logincheck(Member member, Model model, HttpServletRequest request) {
		System.out.println("?");
		Member result = memberSessionRepository.logincheck(member);
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		model.addAttribute("result", result);
		if(result != null) {
			System.out.println(result.getMemberName());
			System.out.println(result.getMemberNum()+"1111111111111111111111111111");
			session.setAttribute("id", result.getMemberId());
			session.setAttribute("name", result.getMemberName());
			session.setAttribute("idnum", result.getMemberNum());
			System.out.println("yyyyyyyyy");
			mav.setViewName("redirect:index");
		}else {
			session.invalidate();
			System.out.println("nnnnnnnnnnnnn");
			mav.setViewName("redirect:login");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 전체를 날려버림
        return "index";
    }
	
	@RequestMapping(value="/accept", method = {RequestMethod.GET, RequestMethod.POST})
	public String accept(Model model) {
		return "member/accept";
	}
	
	@RequestMapping(value="/join", method = {RequestMethod.GET, RequestMethod.POST})
	public String member2(Model model) {
		model.addAttribute("member", new Member());
		return "member/join";
	}
	
	@ResponseBody
	   @RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	   public String checkId(@RequestParam HashMap<String, Object> param) {

	      
	      HashMap<String, String> hashmap = new HashMap<String, String>();
	      // your logic
	      int result = memberSessionRepository.IdCheck(String.valueOf(param.get("memberId")));
	      System.out.println(result);
	      String resultYn = "";
	      
	      if(result>0) {
	         hashmap.put("result", "아이디를 사용 할 수 없습니다.");
	         resultYn = "N";
	      }else {
	         hashmap.put("result", "아이디를 사용 할 수 있습니다.");
	         resultYn = "Y";
	      }
	      //System.out.println(hashmap);
	      return resultYn;
	   }
	
	@RequestMapping(value="success", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberInsert(Member member, Model model) {
		member.setMemberBirth(member.getMemberBirthYear()+ "/" + member.getMemberBirthMonth() + "/" + member.getMemberBirthDay());
		member.setMemberPhon(member.getMemberPhon1()+"-"+member.getMemberPhon2()+"-"+member.getMemberPhon3());
		member.setMemberAdrs("["+member.getMemberZipNew()+"]"+member.getMemberRoadAdd()+" "+member.getMemberDetailedAddress());
		Integer result = memberSessionRepository.insertMember(member);
		model.addAttribute("result",result);
		return "member/success";
	}
	
	@RequestMapping(value = "/mypage", method = {RequestMethod.GET, RequestMethod.POST})
	public String member3(Model model) {
		return "member/mypage";
	}
	
	@RequestMapping(value = "/mycoupon", method = {RequestMethod.GET, RequestMethod.POST})
	public String member4(Model model) {
		return "member/mycoupon";
	}
	
	@RequestMapping(value = "/mypoint", method = {RequestMethod.GET, RequestMethod.POST})
	public String member5(Model model) {
		return "member/mypoint";
	}
	
	@RequestMapping(value = "/mypointadd", method = {RequestMethod.GET, RequestMethod.POST})
	public String member6(Model model) {
		return "member/mypointadd";
	}
	
	@RequestMapping(value = "/myticket", method = {RequestMethod.GET, RequestMethod.POST})
	public String member7(Model model) {
		return "member/myticket";
	}
}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
