/**
 * 
 */
package net.likemycat.account.service;

import net.likemycat.account.model.User;

/**
 * @author oleksandr.volkovskyi
 *
 */
public interface UserService {
	void save(User user);

	User findByUsername(String username);
}
