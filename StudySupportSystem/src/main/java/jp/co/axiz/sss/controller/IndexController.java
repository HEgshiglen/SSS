package jp.co.axiz.sss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/menu")
    public String showMenu() {
        return "menu"; 
    }

    @GetMapping("/testMenu")
    public String showTestMenu() {
        return "testMenu";
    }

    @GetMapping("/userMenu")
    public String showUserMenu() {
        return "userMenu"; 
    }

    @GetMapping("/testStart")
    public String showTestStart() {
        return "testStart"; 
    }

    @GetMapping("/testEdit")
    public String showAccountEdit() {
        return "testEdit";
    }

    @GetMapping("/testSelect")
    public String showTestSelect() {
        return "testSelect";
    }
    @GetMapping("/testResult")
    public String showTestResult() {
        return "testResult";
    }
}
