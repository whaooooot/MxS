package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Theater;
import repository.TheaterSessionRepository;

@Controller
public class TheaterController {

	@Autowired
	private TheaterSessionRepository theaterSessionRepository;

	// 01. 게시글 목록
	@RequestMapping("/theater_list")
	public ModelAndView list(@RequestParam(defaultValue = "movie_num") String searchOption,
			@RequestParam(defaultValue = "") String keyword, Model model) throws Exception {
		
		List<Theater> list = theaterSessionRepository.listAll(searchOption, keyword);
		// 레코드의 갯수
		int count = theaterSessionRepository.countArticle(searchOption, keyword);
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		/*
		 * mav.addObject("list", list); // 데이터를 저장 mav.addObject("count", count);
		 * mav.addObject("searchOption", searchOption); mav.addObject("keyword",
		 * keyword);
		 */
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		//map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("movie_admin/theater_list"); // 뷰를 list.jsp로 설정
		
		
//		model.addAttribute("count", count);
		
		return mav; // list.jsp로 List가 전달된다.
		
		
		
	}
	// 02_01. 게시글 작성화면
	// @RequestMapping("board/write.do")
	// value="", method="전송방식"
	@RequestMapping(value="/theater_write", method=RequestMethod.GET)
	public String write(){
		return "movie_admin/theater_write"; // write.jsp로 이동
	}

	// 02_02. 게시글 작성처리
	@RequestMapping(value = "/theater_insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute Theater tt) throws Exception {
		theaterSessionRepository.insertTheater(tt);
		return "redirect:theater_list";
	}


	// 04. 게시글 수정
	// 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
	@RequestMapping(value = "/theater_update", method = RequestMethod.POST)
	public String update(@ModelAttribute Theater tt) throws Exception {
		theaterSessionRepository.updateTheater(tt);
		return "redirect:theater_list";
	}
	
	// 05. 게시글 삭제
	@RequestMapping("/theater_delete")
	public String delete(@RequestParam Long theaterNum) throws Exception{
		theaterSessionRepository.deleteTheater(theaterNum);
		return "redirect:theater_list";
	}

}
