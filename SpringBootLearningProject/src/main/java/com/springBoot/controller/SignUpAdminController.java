package com.springBoot.controller;

import com.springBoot.model.Admin;
import com.springBoot.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpAdminController
{
    @Autowired
    AdminRepository adminRepository;

    @RequestMapping("/saveAdmin")
    public String saveAdmin(Admin admin)
    {
        Admin admin1 = new Admin();
        admin1.setFirstName(admin.getFirstName());
        admin1.setLastName(admin.getLastName());
        admin1.setEmail(admin.getEmail());
        admin1.setPassword(admin.getPassword());

        adminRepository.save(admin1);
        return "SignUpSuccessful";
    }
}
