/**
 * 
 */
package net.likemycat.account.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import net.likemycat.account.model.User;
import net.likemycat.account.service.UserService;

/**
 * @author oleksandr.volkovskyi
 *
 */
@Component
public class UserValidator implements Validator {
	
	@Autowired
	private UserService userService;

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target ;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		if (user.getUsername().length() < 4 || user.getUsername().length() >32 ){
			errors.rejectValue("username", "Size.userForm.username");
		}
		if (userService.findByUsername(user.getUsername())!=null){
			errors.rejectValue("username", "Duplicate.userForm.username");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");		
		if (user.getPassword().length() < 3 || user.getPassword().length() > 32 ){
			errors.rejectValue("password", "Size.userForm.password");
		}
		
		if (!user.getPassword().equals(user.getPasswordConfirm())) {
			errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
		}
	}

}
