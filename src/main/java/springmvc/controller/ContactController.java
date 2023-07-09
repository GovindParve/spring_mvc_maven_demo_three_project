package springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	UserService userService;
	
	@ModelAttribute
	public void commonDataForModel(Model model) {
		model.addAttribute("Header", "These are dynamic header content");
		model.addAttribute("Desc", "Home for Programmer");
		System.out.println("adding common data to model");
	}
	
	@RequestMapping("/contact")
	public String showForm(Model model) {
		System.out.println("Creating form");
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute("user") User user, Model model)
	{	
		System.out.println("user "+user);
		
		if(user.getUserName().isEmpty()) {
			return "redirect:/contact";
		}
		
		int createUser = this.userService.createUser(user);
		model.addAttribute("msg", "User created with id: "+createUser);
		return "success";
	}
	
	
	
	/*@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String handleForm(@RequestParam(name = "email", required = false) String userEmail,
			@RequestParam("userName") String userName,
			@RequestParam("password") String userPassword, Model model)
	{
		
		User user = new User();
		user.setEmail(userEmail);
		user.setUserName(userName);
		user.setPassword(userPassword);
		
		System.out.println("user "+user);
		
//		model.addAttribute("email", userEmail);
//		model.addAttribute("name", userName);
//		model.addAttribute("password", userPassword);
		
		model.addAttribute("user", user);
		
		return "success";
	}*/

}
