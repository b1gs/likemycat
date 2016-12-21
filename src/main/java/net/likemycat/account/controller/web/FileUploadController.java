/**
 * 
 */
package net.likemycat.account.controller.web;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.likemycat.account.model.Post;
//import net.likemycat.account.model.User;
import net.likemycat.account.service.PostService;
import net.likemycat.account.service.UserService;
import net.likemycat.storage.StorageFileNotFoundException;
import net.likemycat.storage.StorageService;

/**
 * @author b1gs
 *
 */
@Controller
public class FileUploadController {

	private final UserService userService;
	private final StorageService storageService;
	private final PostService postService;

	@Autowired
	public FileUploadController(StorageService storageService, PostService postService, UserService userService) {
		this.storageService = storageService;
		this.postService = postService;
		this.userService = userService;
	}

	@GetMapping("/add")
	public String listUploadedFiles(Model model) throws IOException {

		model.addAttribute("postForm", new Post());
		return "add";
	}

	@GetMapping("/s/{filename:.+}")
    @ResponseBody
    public void serveFile(@PathVariable String filename, HttpServletResponse response) {

		byte [] bytes =null;
        Resource file = storageService.loadAsResource(filename);
        
        try {
			bytes = IOUtils.toByteArray(file.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
        response.setContentType("image/jpeg");

        response.setContentLength(bytes.length);

        try {
			response.getOutputStream().write(bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

	@PostMapping("/add")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @ModelAttribute("postForm") Post postForm,
			RedirectAttributes redirectAttributes) {

		String filename = getFileExtension(file.getOriginalFilename());
		storageService.store(file, filename);
		postForm.setFilename(filename);
		net.likemycat.account.model.User user = userService.findByUsername(
				((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());
		postForm.setUser(user);
		postService.save(postForm);
		redirectAttributes.addFlashAttribute("message",
				"You successfully uploaded " + file.getOriginalFilename() + "!");

		return "redirect:/";
	}

	@ExceptionHandler(StorageFileNotFoundException.class)
	public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}

	private String getFileExtension(String file) {

		Long filename = System.currentTimeMillis();
		String extension = filename + file.substring(file.lastIndexOf("."));

		return extension;
	}

}
