package com.springBoot.controller;

import com.springBoot.model.User;
import com.springBoot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class DashboardController
{
    @Autowired
    UserRepository userRepository;

    @RequestMapping("/addUser")
    public String addUser()
    {
        return "AddUser";
    }

    @RequestMapping("/editUser")
    public String editUser(@RequestParam("id") int id, Model model)
    {
        User user = userRepository.findById(id);
        model.addAttribute("user",user);
        userRepository.delete(user);
        return "UpdateUser";
    }

    @RequestMapping("/removeUser")
    public String removeUser(@RequestParam("id") int id, Model model, HttpSession session)
    {
        User user = userRepository.findById(id);
        userRepository.delete(user);

        Iterable<User> users = userRepository.findAll();
        session.setAttribute("users",users);
        return "Dashboard";
    }

    @RequestMapping("/searchUser")
    public String searchUser(@RequestParam("searchId") String searchId, Model model, HttpSession session)
    {
        User user = userRepository.findById(Integer.parseInt(searchId));
        session.setAttribute("searchedUser",user);
        return "SearchedUser";
    }
}
