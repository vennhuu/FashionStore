package spring.ClothesShop.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import spring.ClothesShop.Domain.Product;
import spring.ClothesShop.Repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository ;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product saveProduct(Product product) {
        return this.productRepository.save(product) ;
    }

    public List<Product> getAllProduct() {
        return this.productRepository.findAll() ;
    }

    public Optional<Product> getProductById(long id) {
        return this.productRepository.findById(id) ;
    }

    public void deleteProductById(long id) {
        this.productRepository.deleteById(id);
    }

    public List<Product> findRelatedProduct(String brand , long id) {
        return this.productRepository.findByBrandAndIdNot(brand , id) ;
    }
}
