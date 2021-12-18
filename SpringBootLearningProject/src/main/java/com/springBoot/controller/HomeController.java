package com.springBoot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
    @RequestMapping("/")
    public String myHomePage()
    {
        return "AdminLoginPage";
    }

    @RequestMapping("/signUpAdmin")
    public String signUpAdmin()
    {
        return "SignUpAdmin";
    }
}
