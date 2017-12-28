package controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Movie;
import repository.MovieUserSessionRepository;

@Controller
public class MovieController {
	@Autowired
	private MovieUserSessionRepository movieUserSessionRepository;
	
/*	
 * @RequestMapping(value = "/MovieChartPage", method = RequestMethod.GET)
	public String MovieChartPage() {
		// MovieChartPage.jsp로 포워딩
		return "movie_view/MovieChartPage";
	}
	// 영화목록	
	@ResponseBody
	@RequestMapping(value = "/MovieChartPage", method = RequestMethod.POST)	
	public ModelAndView movie(
			@RequestParam(defaultValue = "movie_num") String searchOption,
			@RequestParam(defaultValue = "") String keyword, HttpServletRequest request ) 
					throws Exception {



		String str[] = request.getParameterValues("chk1");


		System.out.println( ">>> param : " + str.length );
		
	    int i = 0;
	    for( String value : str ){
	    //System.out.println( ">>> chk1's value : " + value + "\tage : " + age.get(i) );
	      i++;
	    }
	    
		List<Movie> list = movieUserSessionRepository.movieList(searchOption, keyword);

		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		// map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("movie_view/MovieChartPage"); // 뷰를 list.jsp로 설정
	
		return mav; // list.jsp로 List가 전달된다.

	}
*/
	
	@RequestMapping("/MovieChartPage")	
	public ModelAndView movie(
			@RequestParam(defaultValue = "movie_num") String searchOption,
			@RequestParam(defaultValue = "") String keyword) 
					throws Exception {

	    
		List<Movie> list = movieUserSessionRepository.movieList(searchOption, keyword);

		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		// map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("movie_view/MovieChartPage"); // 뷰를 list.jsp로 설정
	
		return mav; // list.jsp로 List가 전달된다.

	}
	
	// 영화 상세
	@RequestMapping(value = "/MovieDetail", method = RequestMethod.GET)
	public ModelAndView movieDetailView(@RequestParam Long movieNum, HttpSession session) throws Exception {

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("movie_view/MovieDetail");
		// 뷰에 전달할 데이터
		mav.addObject("movie", movieUserSessionRepository.movieDetailView(movieNum));
		return mav;
	}
	
	@RequestMapping(value = "/Trailer", method = RequestMethod.GET)
	public String movie3(Model model) {

		return "movie_view/Trailer";
	}


	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
