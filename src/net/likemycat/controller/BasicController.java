/**
 * 
 */
package net.likemycat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author oleksandr.volkovskyi
 *
 */
@Controller
public class BasicController {

	
	
	@RequestMapping("/welcome")
	public ModelAndView welcomePage(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("welcome");
		return model;
		
	}
	
//	@RequestMapping({"/index","/"})
//	public ModelAndView indexPage(){
//		
//		ModelAndView model = new ModelAndView();
//		model.setViewName("index");
//		return model;
//		
//	}
	
	@RequestMapping("/login")
	public ModelAndView loginPage(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
		
	}
	
}
