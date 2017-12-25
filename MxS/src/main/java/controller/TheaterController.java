package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Theater;
import model.Movie;
import repository.TheaterSessionRepository;

@Controller
public class TheaterController {

	@Autowired
	private TheaterSessionRepository theaterSessionRepository;
	
	//극장 상세 
	@RequestMapping(value="/theater_view", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam Long theaterNum, HttpSession session) throws Exception{

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/theater_view");
		// 뷰에 전달할 데이터
		mav.addObject("theater", theaterSessionRepository.theaterDetail(theaterNum));
		return mav;
	}
	// 01. 게시글 목록
    

    @RequestMapping("/theater_list")
    public ModelAndView listTheater(@RequestParam Long movieNum, ModelAndView mav){
        List<Theater> list = theaterSessionRepository.listTheater(movieNum);
        // 뷰이름 지정
        mav.setViewName("movie_admin/theater_list");
        // 뷰에 전달할 데이터 지정
        mav.addObject("list", list);
        // replyList.jsp로 포워딩
        return mav;
    }
	
	// 02_01. 게시글 작성화면
	// @RequestMapping("board/write.do")
	// value="", method="전송방식"
	@RequestMapping(value="/theater_write", method=RequestMethod.GET)
	public String write(Movie movie , Model model){
		model.addAttribute("theater", new Theater());
		
		//영화정보 출력을 위함
		List<Movie> list = theaterSessionRepository.listMovie(movie);
		model.addAttribute("list", list);
/*		 ModelAndView mav = new ModelAndView();
		 mav.setViewName("movie_admin/theater_write");
		 mav.addObject("list", list);*/
		return "movie_admin/theater_write"; // write.jsp로 이동
	}

	// 02_02. 게시글 작성처리
	@RequestMapping(value = "/theater_insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute Theater tt) throws Exception {
		theaterSessionRepository.insertTheater(tt);
		return "redirect:movie_list";
	}


	// 04. 게시글 수정
	// 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
/*	@RequestMapping(value = "/theater_update", method = RequestMethod.POST)
	public String update(@ModelAttribute Theater tt) throws Exception {
		theaterSessionRepository.updateTheater(tt);
		return "redirect:movie_list";
	}*/
	
	@RequestMapping(value = "/theater_update", method = RequestMethod.POST)	
	public String theaterUpdate(Theater tt, Model model) {
		Integer result =  theaterSessionRepository.updateTheater(tt);		
		model.addAttribute("result", result);
		
		return "redirect:movie_list";
	}
	
	// 05. 게시글 삭제
/*	@RequestMapping("/theater_delete")
	public String delete(@RequestParam Long theaterNum) throws Exception{
		theaterSessionRepository.deleteTheater(theaterNum);
		return "redirect:movie_list";
	}*/
	
	
	@RequestMapping(value = "/theater_delete", method = RequestMethod.POST)
	public String theaterDelete(Theater tt, Model model) {		
		Integer result =  theaterSessionRepository.deleteTheater(tt.getTheaterNum());		
		model.addAttribute("result", result);
		return "redirect:movie_list";
	
			
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
