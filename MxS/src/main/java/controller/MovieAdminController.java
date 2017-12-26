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
import model.Screen;
import model.Theater;
import repository.MovieAdminSessionRepository;

@Controller
public class MovieAdminController {

	@Autowired
	private MovieAdminSessionRepository movieAdminSessionRepository;

	//////////////////////////// 영화///////////////////////////////////////
	// 영화목록
	@RequestMapping("/movie_list")
	public ModelAndView movieList(@RequestParam(defaultValue = "movie_num") String searchOption,
			@RequestParam(defaultValue = "") String keyword) throws Exception {

		List<Movie> list = movieAdminSessionRepository.movieList(searchOption, keyword);
		// 레코드의 갯수
		int count = movieAdminSessionRepository.countArticle(searchOption, keyword);
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		// map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("movie_admin/movie_list"); // 뷰를 list.jsp로 설정
		map.put("count", count);

		return mav; // list.jsp로 List가 전달된다.

	}

	// 영화 상세
	@RequestMapping(value = "/movie_view", method = RequestMethod.GET)
	public ModelAndView movieView(@RequestParam Long movieNum, HttpSession session) throws Exception {

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/movie_view");
		// 뷰에 전달할 데이터
		mav.addObject("movie", movieAdminSessionRepository.movieDetail(movieNum));
		return mav;
	}

	// 영화 등록하는 폼
	@RequestMapping(value = "/movie_write", method = RequestMethod.GET)
	public String movieWrite(Model model) {
		model.addAttribute("movie", new Movie());
		return "movie_admin/movie_write";
	}

	// 관리자 기초메인
	@RequestMapping(value = "/movie_admin", method = { RequestMethod.GET, RequestMethod.POST })
	public String index(Model model) {
		model.addAttribute("movie", new Movie());
		return "movie_admin/admin_index";
	}

	// 영화 등록
	@RequestMapping(value = "/movie_insert", method = RequestMethod.POST)
	public String movieInsert(@ModelAttribute Movie movie, HttpSession session, HttpServletRequest request)
			throws Exception {
		// System.out.println(movie.getMovieTitle());
		movieAdminSessionRepository.insertMovie(movie);
		return "redirect:movie_write";
	}

	// 영화 수정
	@RequestMapping(value = "/movie_update", method = RequestMethod.POST)
	public String movieUpdate(Movie movie, Model model) {
		Integer result = movieAdminSessionRepository.updateMovie(movie);
		model.addAttribute("result", result);

		return "redirect:movie_list";
	}

	// 영화 삭제
	@RequestMapping(value = "/movie_delete", method = RequestMethod.POST)
	public String movieDelete(Movie movie, Model model) {
		Integer result = movieAdminSessionRepository.deleteMovie(movie.getMovieNum());
		model.addAttribute("result", result);
		return "redirect:movie_select";

	}

	//////////////////////////// 극장///////////////////////////////////////

	// 극장 상세
	@RequestMapping(value = "/theater_view", method = RequestMethod.GET)
	public ModelAndView theaterView(@RequestParam Long theaterNum, HttpSession session) throws Exception {
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/theater_view");
		// 뷰에 전달할 데이터
		mav.addObject("theater", movieAdminSessionRepository.theaterDetail(theaterNum));
		return mav;
	}

	// 극장 목록
	@RequestMapping("/theater_list")
	public ModelAndView listTheater(@RequestParam Long movieNum, ModelAndView mav) {
		List<Theater> list = movieAdminSessionRepository.listTheater(movieNum);
		// 뷰이름 지정
		mav.setViewName("movie_admin/theater_list");
		// 뷰에 전달할 데이터 지정
		mav.addObject("list", list);
		// List.jsp로 포워딩
		return mav;
	}

	// 극장 작성폼
	@RequestMapping(value = "/theater_write", method = RequestMethod.GET)
	public String theaterWrite(Movie movie, Model model) {
		model.addAttribute("theater", new Theater());

		// 영화정보 출력을 위함
		List<Movie> list = movieAdminSessionRepository.listMovie(movie);
		model.addAttribute("list", list);
		return "movie_admin/theater_write"; // write.jsp로 이동
	}

	// 극장 입력
	@RequestMapping(value = "/theater_insert", method = RequestMethod.POST)
	public String theaterInsert(@ModelAttribute Theater tt) throws Exception {
		movieAdminSessionRepository.insertTheater(tt);
		return "redirect:movie_list";
	}

	// 극장수정
	@RequestMapping(value = "/theater_update", method = RequestMethod.POST)
	public String theaterUpdate(Theater tt, Model model) {
		Integer result = movieAdminSessionRepository.updateTheater(tt);
		model.addAttribute("result", result);

		return "redirect:movie_list";
	}

	// 극장삭제
	@RequestMapping(value = "/theater_delete", method = RequestMethod.POST)
	public String theaterDelete(Theater tt, Model model) {
		Integer result = movieAdminSessionRepository.deleteTheater(tt.getTheaterNum());
		model.addAttribute("result", result);
		return "redirect:movie_list";

	}

}
