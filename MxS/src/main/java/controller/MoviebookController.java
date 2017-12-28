package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.*;
import repository.MoviebookSessionRepository;


@Controller
public class MoviebookController {
	@Autowired
	private MoviebookSessionRepository moviebookSessionRepository;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String mxsindex(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/moviebook", method = {RequestMethod.GET, RequestMethod.POST})
	public String mxs(Model model) {
		List<Movie> reseve = moviebookSessionRepository.selectReserve();
		List<Movie> ganada = moviebookSessionRepository.selectGanada();
		model.addAttribute("reseve", reseve);
		model.addAttribute("ganada", ganada);
		return "movie_book/moviebook";
	}
	
	@RequestMapping(value = "/movieregana", method = {RequestMethod.GET, RequestMethod.POST})
	public String movieregana(Model model,HttpServletRequest request) {
		String num = request.getParameter("num");
		List<Movie> result = null;
		if(num.equals("1")) {
			result = moviebookSessionRepository.selectReserve();
			
		}else {
			result = moviebookSessionRepository.selectGanada();
		}
		
		model.addAttribute("result", result);
		return "movie_book/movieregana";
	}
	
	@RequestMapping(value = "/movietheater", method = {RequestMethod.GET, RequestMethod.POST})
	public String movietheater(Model model,HttpServletRequest request, Theater theater) {
		System.out.println(theater.getTheaterAdd1());
		System.out.println(theater.getTheaterAdd2());
		List<Theater> result = moviebookSessionRepository.selectTheater(theater);
		model.addAttribute("result", result);
		System.out.println(result);
		return "movie_book/movietheater";
	}
	
	@RequestMapping(value = "/movietheaterDate", method = {RequestMethod.GET, RequestMethod.POST})
	public String movietheaterDate(Model model, Screen screen) {
		List<TimeTable> result = moviebookSessionRepository.theaterDate(screen);
		model.addAttribute("result", result);
		return "movie_book/movietheaterDate";
	}
	
	@RequestMapping(value = "/moviebookseat", method = {RequestMethod.GET, RequestMethod.POST})
	public String mxs2(Model model,Theater theater, TimeTable timeTable, HttpServletRequest request) {
		String aaaa[] = request.getParameter("timeeTable1").split("/");
		timeTable.setTimeStart(aaaa[1]);
		timeTable.setScreenName(aaaa[0]);
		List<TimeTable> result = moviebookSessionRepository.getTime(timeTable);
		Screen result1 = moviebookSessionRepository.getScreen(timeTable);
		model.addAttribute("result", result);
		model.addAttribute("result1", result1);
		//System.out.println(timeTable.getMovieNum());
		System.out.println(result1);
		
		return "movie_book/moviebookseat";
	}
	@ResponseBody
	@RequestMapping(value = "/moviefooter", method = {RequestMethod.GET, RequestMethod.POST})
	public String moviefooter(Model model, TimeTable timeTable, HttpServletRequest request) {
/*		String aaaa[] = request.getParameter("timeeTable1").split("/");
		timeTable.setTimeStart(aaaa[1]);
		timeTable.setScreenName(aaaa[0]);
		System.out.println(timeTable.getMovieNum());
		List<TimeTable> result = moviebookSessionRepository.moviefooter1(timeTable);
		List<Screen> result1 = moviebookSessionRepository.moviefooter2(timeTable);
		model.addAttribute("result", result);
		model.addAttribute("result1", result1);
		//System.out.println(timeTable.getMovieNum());
		System.out.println(result1);
		*/
		return "movie_book/moviebookseat";
	}
	
	@RequestMapping(value = "/moviebookpay", method = RequestMethod.POST)
	public String mxs3(Model model) {
		
		return "movie_book/moviebookpay";
	}
	
	//예매결과
	@RequestMapping(value = "/moviebookresult", method = RequestMethod.POST)
	public String moviebookresult(BookList booklist, Model model) {

		List<BookList> result = moviebookSessionRepository.selectBooklist(booklist);
		model.addAttribute("result",result);
		
		return "movie_book/moviebookresult";
		
	}
	

	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) {

		return "test";
	}
}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
