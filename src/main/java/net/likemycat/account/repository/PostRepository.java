package net.likemycat.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.likemycat.account.model.Post;

public interface PostRepository extends JpaRepository<Post, Long>{

}
