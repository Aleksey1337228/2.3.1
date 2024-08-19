package org.example.task2312.service;

import org.example.task2312.model.User;

import java.util.List;

public interface UserService {
    List<User> findAll();

    void add (User user);

    void delete (User user);

    void edit (User user);

    User getById (int id);
}
