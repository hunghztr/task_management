package com.example.test.service;

import com.example.test.model.User;
import com.example.test.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;
    public User getUserByUsername(String username){
        return userRepository.findByUsername(username);
    }
    public User save(User user){
        return userRepository.save(user);
    }
}
