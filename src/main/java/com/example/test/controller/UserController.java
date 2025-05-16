package com.example.test.controller;

import com.example.test.model.User;
import com.example.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @Autowired
    PasswordEncoder passwordEncoder;
    @Autowired
    UserService userService;
    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("user",new User());
        return "login";
    }
    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("user",new User());
        return "register";
    }
    @PostMapping("/register")
    public String postRegister(@ModelAttribute("user") User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole("ROLE_USER");
        userService.save(user);
        return "redirect:/login";
    }
}
