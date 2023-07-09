package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {
	
	@RequestMapping(path="/home", method=RequestMethod.GET)
	public String home(Model model) {
		System.out.println("This is home URL");
		model.addAttribute("name", "Govind Parve");
		model.addAttribute("id", 1001);
		
		List<String> friends = new ArrayList<String>();
		friends.add("Mahesh");
		friends.add("Vijay");
		friends.add("Sameer");
		friends.add("Ganesh");
		friends.add("Krushna");
		model.addAttribute("f", friends);
		
		return "home";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("This is about controller");
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("This is help controller");
		//created model and view object
		ModelAndView modelAndView = new ModelAndView();
		
		//setting the data
		modelAndView.addObject("name", "Vijay");
		modelAndView.addObject("rollnumber", 123414);
		LocalDateTime now = LocalDateTime.now();
		modelAndView.addObject("time", now);
		
		List<Integer> list = new ArrayList<Integer>();
		list.add(89);
		list.add(85);
		list.add(88);
		modelAndView.addObject("marks", list);
		
		//setting the view name
		modelAndView.setViewName("help");
		return modelAndView;
	}

}
