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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import model.*;
import repository.*;

@Controller
public class GradeController {
	@Autowired
	private GradeSessionRepository gradeSessionRepository;
	
	/* 평점 */
	@RequestMapping(value="/grade", method = {RequestMethod.GET, RequestMethod.POST})
	public String GradeSelect(GradeDTO gradedto, MovieDTO moviedto, Model model) {
		// -- 작성자 수
		Integer count = gradeSessionRepository.selectCount(gradedto);
		model.addAttribute("count", count);
		
		// -- 평점 리스트
		List<GradeDTO> result = gradeSessionRepository.selectGrade(gradedto);
		model.addAttribute("result", result);
		
		List<MovieDTO> mlist = gradeSessionRepository.selectMovie(moviedto);
		model.addAttribute("mlist", mlist);
		
		return "grade/grade";
	}
/*	@RequestMapping(value="/gradelist", method = {RequestMethod.GET, RequestMethod.POST})
	public String Select(GradeDTO grade, Model model) {
		List<GradeDTO> result = gradeSessionRepository.selectMylist(grade);
		model.addAttribute("result", result);
		
		return "grade/gradeList";
	}
*/
	// -- 상세 보기
/*	@RequestMapping(value = "/customer_detail", method = RequestMethod.GET)
	public ModelAndView movieDetailView(@RequestParam int boardNum, HttpSession session) throws Exception {

		ModelAndView model = new ModelAndView(); // 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		
		model.setViewName("customerservice/customer_detail"); // 뷰의 이름
		model.addObject("movie", customerSessionRepository.customerDetail(boardNum)); // 뷰에 전달할 데이터
		
		return model;
	   }
	*/
	
	/* 평점 작성 */
	@RequestMapping(value="/gradeWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String gradeWrite(GradeDTO gradedto, Model model) {
		model.addAttribute("gradedto", gradedto);
		
		return "grade/gradeWrite";
	}
	@RequestMapping(value="/gradeWriteComplete", method = {RequestMethod.GET, RequestMethod.POST})
	public String gradeWriteComplete(@ModelAttribute("gradedto")GradeDTO gradedto, Model model) {
		
		gradeSessionRepository.insertGradeWrite(gradedto);
		
		return "grade/gradeWriteComplete";
	}
}
