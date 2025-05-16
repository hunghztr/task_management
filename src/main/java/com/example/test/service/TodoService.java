package com.example.test.service;

import com.example.test.model.Todo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoService {
    public Todo getById(long id, List<Todo> todos){
        for( var i : todos){
            if(i.getId() == id){
                return i;
            }
        }
        return null;
    }
}
