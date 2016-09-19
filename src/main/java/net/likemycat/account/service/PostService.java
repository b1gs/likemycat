package net.likemycat.account.service;

import net.likemycat.account.model.Post;
import net.likemycat.account.model.User;

public interface PostService {

	void save(Post post);

	User findByUsername(long id);
	
}
