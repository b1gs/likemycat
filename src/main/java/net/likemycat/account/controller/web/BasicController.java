/**
 * 
 */
package net.likemycat.account.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.likemycat.account.model.User;
import net.likemycat.account.service.SecurityService;
import net.likemycat.account.service.UserService;
import net.likemycat.account.validator.UserValidator;

/**
 * @author oleksandr.volkovskyi
 *
 */
@Controller
public class BasicController {

	
	
	//@RequestMapping("/welcome")
//	public ModelAndView welcomePage(){
//		
//		ModelAndView model = new ModelAndView();
//		model.setViewName("welcome");
//		return model;
//		
//	}
	
	//@RequestMapping({"/index","/"})
//	public ModelAndView indexPage(){
//		
//		ModelAndView model = new ModelAndView();
//		model.setViewName("index");
//		return model;
//		
//	}
	
//	@RequestMapping("/login")
//	public ModelAndView loginPage(){
//		
//		ModelAndView model = new ModelAndView();
//		model.setViewName("login");
//		return model;
//		
//	}
	
}
