package jp.co.axiz.sss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jp.co.axiz.sss.service.UserService;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String loginPage() {
        return "login"; // This returns the view name for login.jsp
    }

    @PostMapping("/login")
    public ModelAndView login(@RequestParam String id, @RequestParam String password) {
        ModelAndView mav = new ModelAndView();
        if (userService.validateUser(id, password)) {
            mav.setViewName("redirect:/menu"); // Redirect to menu screen upon successful login
        } else {
            mav.addObject("error", "Invalid ID or Password");
            mav.setViewName("login"); // Stay on login page if credentials are invalid
        }
        return mav;
    }
}
