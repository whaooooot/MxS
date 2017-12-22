package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.*;
import repository.*;

@Controller
public class GradeController {
	@Autowired
	private GradeSessionRepository gradeSessionRepository;
	
	/* 평점 */
	@RequestMapping(value="/grade", method = {RequestMethod.GET, RequestMethod.POST})
	public String GradeSelect(GradeDTO gradedto, Model model) {
		/*List<GradeDTO> result = gradeSessionRepository.selectGrade(gradedto);
		model.addAttribute("result", result);*/
		
		return "grade/grade";
	}
	
/*	@RequestMapping(value="/gradelist", method = {RequestMethod.GET, RequestMethod.POST})
	public String Select(GradeDTO grade, Model model) {
		List<GradeDTO> result = gradeSessionRepository.selectMylist(grade);
		model.addAttribute("result", result);
		
		return "grade/gradeList";
	}
*/
}
