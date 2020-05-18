package net.javaguides.springboot2.springboot2webappjsp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import net.javaguides.springboot2.springboot2webappjsp.repositories.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class UserController {
    
    @Autowired
    UserRepository userRepository;

    @GetMapping("/users")
    public String home(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "users";
    }
    
}