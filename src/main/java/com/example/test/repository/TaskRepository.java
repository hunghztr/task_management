package com.example.test.repository;

import com.example.test.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaskRepository extends JpaRepository<Task,Long> {
    Task save(Task task);
    List<Task> findAll();
    Task findById(int id);
}
