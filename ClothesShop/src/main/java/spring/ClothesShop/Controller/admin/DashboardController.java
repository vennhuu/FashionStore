package spring.ClothesShop.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class DashboardController {
    
    @GetMapping("/dashboard")
    public String getDashBoardPage() {
        return "/admin/dashboard/show";
    }
    
}
