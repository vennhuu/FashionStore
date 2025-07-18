package spring.ClothesShop.Service.validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import spring.ClothesShop.Domain.dto.RegisterDTO;
import spring.ClothesShop.Service.UserService;

public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO>{

    public final UserService userService ;
    
    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, ConstraintValidatorContext context) {
        // TODO Auto-generated method stub

        boolean valid = true ;

        // check mk và xác nhạn mk
        if ( !user.getPassword().equals(user.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Mật khẩu nhập không chính xác")
                .addPropertyNode("confirmPassword")
                .addConstraintViolation()
                .disableDefaultConstraintViolation();
            valid = false ;
        }

        // check email tồn tại hay chưa
        if (this.userService.checkExistEmail(user.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email đã tồn tại")
                .addPropertyNode("email")
                .addConstraintViolation()
                .disableDefaultConstraintViolation();
            valid = false;
        }
        return valid ;
    }
    
}
