/**
 * 
 */
package net.likemycat.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.likemycat.account.model.User;

/**
 * @author oleksandr.volkovskyi
 *
 */
public interface UserRepository extends JpaRepository<User, Long>{
	
	User findByUsername(String username);

}
