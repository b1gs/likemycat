/**
 * 
 */
package net.likemycat.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.likemycat.account.model.Post;
import net.likemycat.account.model.User;
import net.likemycat.account.repository.PostRepository;

/**
 * @author b1gs
 *
 */
@Service
public class PostServiceImpl implements PostService{

	@Autowired
	private PostRepository postRepository;
	
	@Override
	public void save(Post post) {
		postRepository.save(post);
	}

	@Override
	public User findByUsername(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Post> findAll() {
		return postRepository.findAll();
	}

}
