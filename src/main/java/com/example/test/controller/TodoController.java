package com.example.test.controller;

import com.example.test.model.Todo;
import com.example.test.service.TodoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class TodoController {
    public List<Todo> todos = new ArrayList<>(
            List.of(
                    new Todo(1L, "Viết báo cáo", false),
                    new Todo(2L, "Học Spring", true),
                    new Todo(3L, "Xem phim", false)
            )
    );
    @Autowired private TodoService todoService;
    @GetMapping("/todos")
    public String getAll(Model model) {

        model.addAttribute("todos",todos);
        return "home";
    }
    @GetMapping("/create-todo")
    public String create(Model model){
        model.addAttribute("todo",new Todo());
        return "create";
    }
    @PostMapping("create-todo")
    public String postCreate(@ModelAttribute Todo todo){
        todos.add(todo);
        return "redirect:/todos";
    }
    @GetMapping("/todos/{id}")
    public String getById(@PathVariable("id") long id,Model model){
        Todo todo = todoService.getById(id, todos);
        model.addAttribute("todo",todo);
        return "details";
    }
}
