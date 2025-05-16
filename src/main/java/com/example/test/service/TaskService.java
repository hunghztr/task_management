package com.example.test.service;

import com.example.test.model.Task;
import com.example.test.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskService {
    @Autowired
    TaskRepository taskRepository;

    public Task create(Task entity){
        return taskRepository.save(entity);
    }
    public List<Task> getAll(){
        return taskRepository.findAll();
    }
    public Task getById(int id){
        return taskRepository.findById(id);
    }
}
