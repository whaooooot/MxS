package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Movie;
import repository.MovieSessionRepository;

@Controller
public class MovieChartController {
	@Autowired
	private MovieSessionRepository movieSessionRepository;
	
	//영화 목록 다시
	@RequestMapping("/movie_list")
	public ModelAndView list(@RequestParam(defaultValue = "movie_num") String searchOption,
			@RequestParam(defaultValue = "") String keyword) throws Exception {
		
		List<Movie> list = movieSessionRepository.listAll(searchOption, keyword);
		// 레코드의 갯수
		int count = movieSessionRepository.countArticle(searchOption, keyword);
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		//map.put("count", count); // 레코드의 갯수 
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("movie_admin/movie_list"); // 뷰를 list.jsp로 설정
		map.put("count", count);
		
		return mav; // list.jsp로 List가 전달된다.
		
		
		
	}
	//영화 상세 
	@RequestMapping(value="/movie_view", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam Long movieNum, HttpSession session) throws Exception{

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/movie_view");
		// 뷰에 전달할 데이터
		mav.addObject("movie", movieSessionRepository.movieDetail(movieNum));
		return mav;
	}
	//영화 등록하는 폼
	@RequestMapping(value = "/movie_write", method = RequestMethod.GET)
	public String movieForm(Model model) {
		model.addAttribute("movie", new Movie());
		return "movie_admin/movie_write";
	}
	
	//관리자 기초메인
	@RequestMapping(value = "/movie_admin", method = {RequestMethod.GET,RequestMethod.POST})
	public String index(Model model) {
		model.addAttribute("movie", new Movie());
		return "movie_admin/admin_index";
	}
	//부트스트랩 메인
/*	@RequestMapping(value = "/home", method = {RequestMethod.GET,RequestMethod.POST})
	public String index2(Model model) {
		model.addAttribute("movie", new Movie());
		return "index";
	}*/

	//영화 리스트 출력
/*	@RequestMapping(value = "/movie_select", method = {RequestMethod.GET,RequestMethod.POST})
	public String movieSelect(Movie movie, Model model, HttpServletRequest request) {
		//System.out.println("movie111" + movie.getMovieNum());
		List<Movie> result = movieSessionRepository.selectMovie(movie);
		//System.out.println(result.size());
		model.addAttribute("result", result);
		
		
		return "movie_admin/movie_select";
		

	}*/

	//영화 등록
	@RequestMapping(value = "/movie_insert", method = RequestMethod.POST)
	public String movieInsert(@ModelAttribute Movie movie, HttpSession session,HttpServletRequest request) throws Exception {
		System.out.println(movie.getMovieTitle());
		movieSessionRepository.insertMovie(movie);
		
		/*Integer result =  movieSessionRepository.insertMovie(movie);		
		model.addAttribute("result", result);*/
		return "redirect:movie_form";
	}
	
	//영화 수정
	@RequestMapping(value = "/movie_update", method = RequestMethod.POST)	
	public String movieUpdate(Movie movie, Model model) {
		Integer result =  movieSessionRepository.updateMovie(movie);		
		model.addAttribute("result", result);
		
		return "redirect:movie_select";
	}
	//영화 삭제
	@RequestMapping(value = "/movie_delete", method = RequestMethod.POST)
	public String movieDelete(Movie movie, Model model) {
		
		
		Integer result =  movieSessionRepository.deleteMovie(movie.getMovieNum());		
		model.addAttribute("result", result);
		return "redirect:movie_select";
	
			
	}
	


	
	
	

}
