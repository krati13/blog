package ankios.blog.validator;

import ankios.blog.model.User;
import ankios.blog.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component("userValidator")
public class UserValidator implements Validator {

    @Autowired
    UserService userService;


    // checks if argument class type is User.class
    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

     // validate user name and email id
    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        if (!StringUtils.isEmpty(user.getUsername())) {
            if (userService.usernameExists(user.getUsername())) {
                errors.rejectValue("username", "Registered");
            }
        }

        if (!StringUtils.isEmpty(user.getEmail())) {
            User currentUser = userService.currentUser();

            if (currentUser == null || !currentUser.getEmail().equalsIgnoreCase(user.getEmail())) {
                if (userService.emailExists(user.getEmail())) {
                    errors.rejectValue("email", "Registered");
                }
            }
        }
    }
}
