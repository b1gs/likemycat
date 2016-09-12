/**
 * 
 */
package net.likemycat.account.service;

/**
 * @author oleksandr.volkovskyi
 *
 */
public interface SecurityService {
	String findLoggedInUsername();

    void autologin(String username, String password);
}
