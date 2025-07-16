package spring.ClothesShop.Controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import spring.ClothesShop.Domain.Product;
import spring.ClothesShop.Service.ProductService;
import spring.ClothesShop.Service.UploadService;



@Controller
public class ProductController {
    private final ProductService productService ;
    private final UploadService uploadService ;
    
    public ProductController(ProductService productService , UploadService uploadService ) {
        this.productService = productService;
        this.uploadService = uploadService ;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model) {
        List<Product> listProduct =  this.productService.getAllProduct() ;
        model.addAttribute("products" , listProduct) ;
        return "/admin/product/show" ;
    }

    @GetMapping("/admin/product/create")
    public String getCreateProduct(Model model) {
        Product newProduct = new Product() ;
        model.addAttribute("newProduct" , newProduct) ;
        return "/admin/product/create" ;
    }

    @PostMapping("/admin/product/create") 
    public String postCreateProduct(@ModelAttribute("newProduct") Product product , @RequestParam("productFile") MultipartFile file) {
        String image = this.uploadService.upLoadFile(file, "products") ;
        product.setAvatar(image);
        this.productService.saveProduct(product) ;
        return "redirect:/admin/product" ;
    }

    @GetMapping("/admin/product/{id}")
    public String getDetailProduct(@PathVariable long id , Model model) {
        Optional<Product> pro = this.productService.getProductById(id) ;
        if ( pro.isPresent() ) {
            model.addAttribute("detailProduct" , pro.get()) ;
        }
        else {
            return "/client/auth/404" ;
        }
        return "/admin/product/detail";
    }

    @PostMapping("/admin/product/update")
    public String postProduct(@ModelAttribute("detailProduct") Product product ) {
        Optional<Product> uProduct = this.productService.getProductById(product.getId()) ;
        if ( uProduct.isPresent()) {
            Product upProduct = uProduct.get() ;
            upProduct.setName(product.getName()) ;
            upProduct.setPrice(product.getPrice());
            upProduct.setSize(product.getSize()) ;
            upProduct.setQuantity(product.getQuantity()); 
            upProduct.setBrand(product.getBrand()) ;
            upProduct.setShortDes(product.getShortDes()) ;
            upProduct.setDetailDes(product.getDetailDes()) ;
            upProduct.setColor(product.getColor()) ;
            // upProduct.setAvatar(product.getAvatar()) ;
            this.productService.saveProduct(upProduct) ;
        }
        return "redirect:/admin/product";
    }

    @PostMapping("/admin/product/delete/{id}")
    public String postMethodName(@PathVariable long id) {
        //TODO: process POST request
        this.productService.deleteProductById(id);
        return "redirect:/admin/product";
    }
    
}
