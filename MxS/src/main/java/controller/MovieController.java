package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MovieController {

	@RequestMapping(value = "/MovieChartPage", method = RequestMethod.GET)
	public String movie(Model model) {

		return "movie_view/MovieChartPage";
	}
	
	@RequestMapping(value = "/MovieDetail", method = RequestMethod.GET)
	public String movie2(Model model) {

		return "movie_view/MovieDetail";
	}
	
	@RequestMapping(value = "/Trailer", method = RequestMethod.GET)
	public String movie3(Model model) {

		return "movie_view/Trailer";
	}


	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
