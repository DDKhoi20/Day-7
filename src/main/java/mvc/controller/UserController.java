package mvc.controller;

import mvc.entity.Gender;
import mvc.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private static final String[] countries = { "Vietnam", "US", "Germany" };

    @RequestMapping(value = "/register")
    public String showRegistrationForm(Model model){
        model.addAttribute("user", new User());
        model.addAttribute("genders", Gender.values());
        model.addAttribute("countries", countries);

        return "formregistration/userForm";
    }

    @RequestMapping(value = "/result")
    public String processUser(User user, HttpSession httpSession) {
        httpSession.setAttribute("username", user.getName());
        return "formregistration/userResult";
    }
}

