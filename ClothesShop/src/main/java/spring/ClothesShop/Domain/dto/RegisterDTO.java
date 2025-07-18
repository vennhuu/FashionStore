package spring.ClothesShop.Domain.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;
import spring.ClothesShop.Service.validation.RegisterChecked;

@RegisterChecked
public class RegisterDTO {

    @Size(min = 1, message = "Họ phải có tối thiểu 1 kí tự")
    private String firstName;

    @Size(min = 1 , message = "Tên phải có ít nhất 1 kí tự")
    private String lastName;

    @Email(message = "Email không hợp lệ", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    private String email;
    private String username ;

    @Size(min = 6, message = "Mật khẩu phải có tối thiểu 6 kí tự")
    private String password ; 
    private String confirmPassword ;

    public RegisterDTO() {
    }

    public RegisterDTO(String firstName, String lastName, String email, String username, String password,
            String confirmPassword) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.username = username;
        this.password = password;
        this.confirmPassword = confirmPassword;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }
    
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    @Override
    public String toString() {
        return "RegisterDTO [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", username="
                + username + ", password=" + password + ", confirmPassword=" + confirmPassword + "]";
    } 

    
}
