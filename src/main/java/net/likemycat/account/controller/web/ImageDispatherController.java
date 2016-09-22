package net.likemycat.account.controller.web;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ImageDispatherController {

	@GetMapping("/s")
	public void getImage(HttpServletResponse response){
		
	}
	
}
