package spring.ClothesShop.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import spring.ClothesShop.Domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName( String name ) ;
}
