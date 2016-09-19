/**
 * 
 */
package net.likemycat.account.controller.web;

import java.io.IOException;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.likemycat.account.model.Post;
import net.likemycat.account.model.User;
import net.likemycat.account.service.PostService;
import net.likemycat.storage.StorageFileNotFoundException;
import net.likemycat.storage.StorageService;

/**
 * @author b1gs
 *
 */
@Controller
public class FileUploadController {

	private final StorageService storageService;
	private final PostService postService;

	@Autowired
	public FileUploadController(StorageService storageService, PostService postService) {
		this.storageService = storageService;
		this.postService = postService;
	}

	@GetMapping("/add")
	public String listUploadedFiles(Model model) throws IOException {

		// model.addAttribute("files", storageService
		// .loadAll()
		// .map(path ->
		// MvcUriComponentsBuilder
		// .fromMethodName(FileUploadController.class, "serveFile",
		// path.getFileName().toString())
		// .build().toString())
		// .collect(Collectors.toList()));
		model.addAttribute("postForm", new Post());
		//model.setViewName("add");
		return "add";
	}

	// @GetMapping("/files/{filename:.+}")
	// @ResponseBody
	// public ResponseEntity<Resource> serveFile(@PathVariable String filename)
	// {
	//
	// Resource file = storageService.loadAsResource(filename);
	// return ResponseEntity
	// .ok()
	// .header(HttpHeaders.CONTENT_DISPOSITION, "attachment;
	// filename=\""+file.getFilename()+"\"")
	// .body(file);
	// }

	@PostMapping("/add")
	public String handleFileUpload(@RequestParam("filename") MultipartFile file, @ModelAttribute("postForm") ModelAttribute postForm,
			RedirectAttributes redirectAttributes) {

		storageService.store(file);
		//postService.save(postForm);
		redirectAttributes.addFlashAttribute("message",
				"You successfully uploaded " + file.getOriginalFilename() + "!");

		return "redirect:/";
	}

	@ExceptionHandler(StorageFileNotFoundException.class)
	public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}

}
