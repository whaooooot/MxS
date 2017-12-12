package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MovieController {

	@RequestMapping(value = "/moviebook", method = RequestMethod.GET)
	public String mxs(Model model) {

		return "movie_view/moviebook";
	}
	
	@RequestMapping(value = "/moviebookseat", method = RequestMethod.POST)
	public String mxs2(Model model) {

		return "movie_view/moviebookseat";
	}

	
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
