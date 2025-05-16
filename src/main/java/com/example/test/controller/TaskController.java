package com.example.test.controller;

import com.example.test.model.Task;
import com.example.test.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TaskController {
    @Autowired
    TaskService taskService;
    @GetMapping("/admin")
    public String home(Model model) {
        model.addAttribute("tasks",taskService.getAll());
        return "home-task";
    }
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("tasks",taskService.getAll());
        return "home-user";
    }
    @GetMapping("/admin/task-create")
    public String create(Model model) {
        model.addAttribute("task",new Task());
        return "create-task";
    }
    @PostMapping("/admin/task-create")
    public String postCreate(@ModelAttribute("task") Task entity) {
        Task task = taskService.create(entity);
        return "redirect:/admin";
    }
    @GetMapping("admin/task-update/{id}")
    public String update(@PathVariable("id") int id, Model model) {
        Task task = taskService.getById(id);
        model.addAttribute("task",task);
        return "update-task";
    }
    @PostMapping("/admin/task-update")
    public String postUpdate(@ModelAttribute("task") Task entity) {
     Task task = taskService.create(entity);
     return "redirect:/admin";
    }
}
