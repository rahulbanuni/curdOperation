package com.springBoot.controller;

import com.springBoot.model.Admin;
import com.springBoot.model.AdminCredentials;
import com.springBoot.model.User;
import com.springBoot.repository.AdminRepository;
import com.springBoot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ValidateAdminController
{
    @Autowired
    UserRepository userRepository;

    @Autowired
    AdminRepository adminRepository;

    @RequestMapping("/validateAdmin")
    public String validateAdmin(AdminCredentials adminCredentials, HttpSession session)
    {
        Iterable<User> users = userRepository.findAll();

        Admin admin = adminRepository.findByEmail(adminCredentials.getEmail());
        String navigation = "AdminValidationFailed";

        if(admin != null) {
            if (admin.getPassword().equals(adminCredentials.getPassword())) {
                session.setAttribute("users",users);
                navigation = "Dashboard";
            }
        }
        return navigation;
    }
}
