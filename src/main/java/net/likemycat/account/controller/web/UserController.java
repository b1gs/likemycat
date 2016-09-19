/**
 * 
 */
package net.likemycat.account.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
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
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
		
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}
		userService.save(userForm);
		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public ModelAndView welcome(Model model,String error , String logout) {

		ModelAndView modelObj = new ModelAndView();
		modelObj.setViewName("welcome");
		modelObj.addObject("valid", true);
		if (SecurityContextHolder.getContext().getAuthentication().getAuthorities().contains(new SimpleGrantedAuthority("ROLE_USER"))) {
			modelObj.addObject("user", SecurityContextHolder.getContext().getAuthentication().getName());
		}

		return modelObj;
	}

}
