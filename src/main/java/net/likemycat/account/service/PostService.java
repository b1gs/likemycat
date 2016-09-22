package net.likemycat.account.service;

import java.util.List;
import java.util.Set;

import net.likemycat.account.model.Post;
import net.likemycat.account.model.User;

public interface PostService {

	void save(Post post);

	User findByUsername(long id);
	
	List<Post> findAll();
	
}
