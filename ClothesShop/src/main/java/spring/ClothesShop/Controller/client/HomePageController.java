package spring.ClothesShop.Controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.validation.Valid;
import spring.ClothesShop.Domain.Product;
import spring.ClothesShop.Domain.User;
import spring.ClothesShop.Domain.dto.RegisterDTO;
import spring.ClothesShop.Service.ProductService;
import spring.ClothesShop.Service.UserService;


@Controller
public class HomePageController {
    private final ProductService productService ;
    private final UserService userService ;

    
    public HomePageController(ProductService productService , UserService userService ) {
        this.productService = productService;
        this.userService = userService ;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> listProduct = this.productService.getAllProduct() ;
        model.addAttribute("listProduct" , listProduct) ;
        return "/client/homepage/show" ;
    }

    @GetMapping("/404")
    public String getErrorPage() {
        return "/client/auth/404";
    }
    
    @GetMapping("/product/{id}")
    public String getDetailProduct(Model model ,@PathVariable long id) {
        Optional<Product> products = this.productService.getProductById(id) ;
        if(products.isPresent()) {
            Product product = products.get() ;
            model.addAttribute("product", product) ;
            List<Product> relatedBrandProduct = this.productService.findRelatedProduct(product.getBrand() , product.getId()) ;
            model.addAttribute("relatedProducts", relatedBrandProduct) ;
        }
        return "/client/product/detail" ;
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "/client/auth/login" ;
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerDTO" , new RegisterDTO()) ;
        return "/client/auth/register" ;
    }

    @PostMapping("/register")
    public String postRegisterPage(@Valid @ModelAttribute("registerDTO") RegisterDTO registerDTO , BindingResult result) {

        if ( result.hasErrors()) {
            return "/client/auth/register" ;
        }
        
        User user = this.userService.registerDTOtoUser(registerDTO) ;
        user.setRole(this.userService.getRoleByName("USER"));
        this.userService.saveUser(user) ;
        return "redirect:/login" ;
    }
}
