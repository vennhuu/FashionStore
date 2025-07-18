package spring.ClothesShop.Controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import spring.ClothesShop.Domain.User;
import spring.ClothesShop.Service.UploadService;
import spring.ClothesShop.Service.UserService;


@Controller
public class UserController {
    private final UserService userService ;
    private final UploadService uploadService;
    
    public UserController(UserService userService , UploadService uploadService ) {
        this.userService = userService;
        this.uploadService = uploadService ;
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> listUsers =this.userService.getAllUsers() ;
        model.addAttribute("listUsers" , listUsers) ;
        return "/admin/user/show";
    }
    
    @GetMapping("/admin/user/create")
    public String getCreateUserPage( Model model ) {
        model.addAttribute("newUser" , new User()) ;

        return "/admin/user/create";
    }
    
    @PostMapping("/admin/user/create")
    public String postCreateUser( Model model , @Valid @ModelAttribute("newUser") User user , BindingResult result, @RequestParam("springFile") MultipartFile file) {
        
        if ( result.hasErrors()) {
            return "/admin/user/create" ;
        }
        
        String avatar = this.uploadService.upLoadFile(file , "avatar") ;
        user.setAvatar(avatar);
        user.setRole(this.userService.getRoleByName(user.getRole().getName()));
        this.userService.saveUser(user) ;
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/{id}")
    public String getDetailUser(@PathVariable long id , Model model) {
        User userDetail = this.userService.findUserById(id) ;
        model.addAttribute("userDetail" , userDetail) ;
        return "/admin/user/detail";
    }
    
    @PostMapping("/admin/user/update")
    public String postUpdateUser(@ModelAttribute("userDetail") User phuoc) {
        //TODO: process POST request
        User postUser = this.userService.findUserById(phuoc.getId()) ;
        if( postUser != null ) {
            // postUser.setAvatar(phuoc.getAvatar());
            postUser.setFullName(phuoc.getFullName());
            postUser.setDescription(phuoc.getDescription());
            postUser.setAddress(phuoc.getAddress());
            postUser.setPhone(phuoc.getPhone());
            postUser.setEmail(phuoc.getEmail());
        }
        this.userService.saveUser(postUser) ;
        return "redirect:/admin/user" ;
    }

    @PostMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable long id ) {
        System.out.println("Try to delete user id: " + id);
        this.userService.deleteUserById(id) ;
        return "redirect:/admin/user" ;
    }
}
