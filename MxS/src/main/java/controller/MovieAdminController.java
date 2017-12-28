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
import model.TimeTable;
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
	public ModelAndView movieDetailView(@RequestParam Long movieNum, HttpSession session) throws Exception {

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/movie_view");
		// 뷰에 전달할 데이터
		mav.addObject("movie", movieAdminSessionRepository.movieDetailView(movieNum));
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
	public ModelAndView theaterDetailView(@RequestParam Long theaterNum, HttpSession session) throws Exception {
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/theater_view");
		// 뷰에 전달할 데이터
		mav.addObject("theater", movieAdminSessionRepository.theaterDetailView(theaterNum));
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

	////////////////////////////상영관///////////////////////////////////////	
	
	//상영관 상세 
	@RequestMapping(value="/screen_view", method=RequestMethod.GET)
	public ModelAndView screenDetailView(@RequestParam String screenName, HttpSession session) throws Exception{

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/screen_view");
		// 뷰에 전달할 데이터
		mav.addObject("screen", movieAdminSessionRepository.screenDetailView(screenName));
		return mav;
	}
	// 상영관목록
    @RequestMapping("/screen_list")
    public ModelAndView listScreen(@RequestParam Long theaterNum, Long movieNum, ModelAndView mav){
        List<Screen> list = movieAdminSessionRepository.listScreen(theaterNum, movieNum);
        
        // 뷰이름 지정
        mav.setViewName("movie_admin/screen_list");
        // 뷰에 전달할 데이터 지정
        mav.addObject("list", list);
        // replyList.jsp로 포워딩
        return mav;
    }
	//상영관 작성 폼
	@RequestMapping(value="/screen_write", method=RequestMethod.POST)
	public String screenWrite(HttpServletRequest httpServletRequest,Screen screen , Model model){
		String movieNum = httpServletRequest.getParameter("movieNum");
		String theaterNum = httpServletRequest.getParameter("theaterNum");
		
		//System.out.println(movieNum);
		
		model.addAttribute("movieNum", movieNum);
		model.addAttribute("theaterNum", theaterNum);
		
		return "movie_admin/screen_write"; // write.jsp로 이동
	}

	//상영관 입력
	@RequestMapping(value = "/screen_insert", method = RequestMethod.POST)
	public String screenInsert(@ModelAttribute Screen screen) throws Exception {
		movieAdminSessionRepository.insertScreen(screen);
		return "redirect:movie_list";
	}


	//상영관 수정
	@RequestMapping(value = "/screen_update", method = RequestMethod.POST)	
	public String screenUpdate(Screen screen, Model model) {
		Integer result =  movieAdminSessionRepository.updateScreen(screen);		
		model.addAttribute("result", result);
		
		return "redirect:movie_list";
	}
	

	
	//상영관 삭제
	@RequestMapping(value = "/screen_delete", method = RequestMethod.POST)
	public String screenDelete(Screen screen, Model model) {		
		Integer result =  movieAdminSessionRepository.deleteScreen(screen.getScreenName());		
		model.addAttribute("result", result);
		return "redirect:movie_list";
	
			
	}
	
	////////////////////////////상영시간표///////////////////////////////////////	
	
	//시간표 상세 
	@RequestMapping(value="/timetable_view", method=RequestMethod.GET)
	public ModelAndView timetableDetailView(@RequestParam String TimeStart, HttpSession session) throws Exception{

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_admin/timetable_view");
		// 뷰에 전달할 데이터
		mav.addObject("timetable", movieAdminSessionRepository.timetableDetailView(TimeStart));
		return mav;
	}
	// 시간표 목록
    @RequestMapping(value="/timetable_list", method=RequestMethod.GET)
    public String listTimetable(HttpServletRequest request, Model model,
    		@ModelAttribute TimeTable timetable){
    	System.out.println("timetable_list");
    	String movieNum = request.getParameter("movieNum");
    	String theaterNum = request.getParameter("theaterNum");
    	String screenName = request.getParameter("screenName");
    	timetable.setMovieNum(Long.parseLong(movieNum));
    	timetable.setTheaterNum(Long.parseLong(theaterNum));
    	timetable.setScreenName(screenName);
    	System.out.println(timetable.getScreenName());
    	List<Screen> list = movieAdminSessionRepository.listTimetable(timetable);
    	model.addAttribute("list", list);

    	return "movie_admin/timetable_list";
    }
	//시간표 작성 폼
	@RequestMapping(value="/timetable_write", method=RequestMethod.POST)
	public String timetableWrite(@RequestParam("movieNum") String movieNum,
			@RequestParam("theaterNum") String theaterNum,
			@RequestParam("screenName") String screenName,
			HttpServletRequest request , Model model){
		
		System.out.println(movieNum);
		System.out.println(theaterNum);
		
		
		model.addAttribute("movieNum", movieNum);
		model.addAttribute("theaterNum", theaterNum);
		model.addAttribute("screenName", screenName);
		
		System.out.println("model" + screenName);
		return "movie_admin/timetable_write"; // write.jsp로 이동
	}

	//시간표 입력
	@RequestMapping(value = "/timetable_insert", method = RequestMethod.POST)
	public String timetableInsert(@ModelAttribute TimeTable timetable) throws Exception {
		movieAdminSessionRepository.timetableInsert(timetable);
		return "redirect:movie_list";
	}


	//시간표 수정
	@RequestMapping(value = "/timetable_update", method = RequestMethod.POST)	
	public String timetableUpdate(TimeTable timetable, Model model) {
		Integer result =  movieAdminSessionRepository.timetableUpdate(timetable);		
		model.addAttribute("result", result);
		
		return "redirect:movie_list";
	}
	

	
	//시간표 삭제
	@RequestMapping(value = "/timetable_delete", method = RequestMethod.POST)
	public String timetableDelete(TimeTable timetable, Model model) {		
		Integer result =  movieAdminSessionRepository.timetableDelete(timetable.getTimeStart());		
		model.addAttribute("result", result);
		return "redirect:movie_list";
	
			
	}

	
	
	
}