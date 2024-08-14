package jp.co.axiz.sss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/menu")
    public String showMenu() {
        return "menu"; // This returns the view name for menu.jsp
    }

    @GetMapping("/testMenu")
    public String showTestMenu() {
        return "testMenu"; // Adjust according to your actual view
    }

    @GetMapping("/userMenu")
    public String showUserMenu() {
        return "userMenu"; // Adjust according to your actual view
    }

    @GetMapping("/testStart")
    public String showTestStart() {
        return "testStart"; // Adjust according to your actual view
    }

    @GetMapping("/testEdit")
    public String showAccountEdit() {
        return "testEdit"; // Adjust according to your actual view
    }
}
