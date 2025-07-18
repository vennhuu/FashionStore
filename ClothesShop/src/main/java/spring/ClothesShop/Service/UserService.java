package spring.ClothesShop.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import spring.ClothesShop.Domain.Role;
import spring.ClothesShop.Domain.User;
import spring.ClothesShop.Domain.dto.RegisterDTO;
import spring.ClothesShop.Repository.RoleRepository;
import spring.ClothesShop.Repository.UserRepository;

@Service
public class UserService {
    
    private final UserRepository userRepository ;
    private final RoleRepository roleRepository ;


    public UserService(UserRepository userRepository , RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository ;
    } 

    public User saveUser ( User user ) {
        return this.userRepository.save(user) ;
    }

    public List<User> getAllUsers () {
        return this.userRepository.findAll() ;
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name) ;
    }

    public User findUserById(long id) {
        return this.userRepository.getUserById(id) ;
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    public User registerDTOtoUser(RegisterDTO registerDTO) {
        User user = new User() ;
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        user.setUsername(registerDTO.getUsername());
        return user ;
    }

    public boolean checkExistEmail ( String email ) {
        return this.userRepository.existsByEmail(email) ;
    }
}
