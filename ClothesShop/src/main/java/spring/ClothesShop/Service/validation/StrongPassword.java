package spring.ClothesShop.Service.validation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy=StrongPasswordValidator.class)
@Documented
public @interface StrongPassword {
    
    String message() default "Phải có 8 kí tự , 1 chữ số , 1 in hoa , 1 kí tự đặc biệt" ;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
