package spring.ClothesShop.Service.validation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;


@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy=RegisterValidator.class)
@Documented
// @Constraint(validatedBy=RegisterValidator.class)
public @interface RegisterChecked {

    String message() default "Đăng kí thất bại" ;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}

