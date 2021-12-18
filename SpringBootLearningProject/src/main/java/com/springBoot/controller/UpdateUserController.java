package com.springBoot.controller;

import com.springBoot.helperClasses.FileUpload;
import com.springBoot.model.User;
import com.springBoot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpSession;

@Controller
public class UpdateUserController
{
    @Autowired
    UserRepository userRepository;

    @Autowired
    FileUpload fileUpload;

    @RequestMapping("/updateUser")
    public String updateUser(User user, @RequestParam("file") MultipartFile file, HttpSession session)
    {
        if(!file.isEmpty()){
            String fileName=file.getOriginalFilename();

            String url = ServletUriComponentsBuilder.fromCurrentContextPath().path("/images/").path(file.getOriginalFilename()).toUriString();
            user.setFileName(fileName);
            user.setUrl(url);
        }
        userRepository.save(user);
        Iterable<User> users = userRepository.findAll();
        session.setAttribute("users",users);
        return "Dashboard";
    }
}
