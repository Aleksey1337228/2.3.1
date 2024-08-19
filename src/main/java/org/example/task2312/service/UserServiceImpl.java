package org.example.task2312.service;

import org.example.task2312.dao.UserDao;
import org.example.task2312.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao){
        this.userDao = userDao;
    }

    @Transactional
    @Override
    public List<User> findAll() {
        return userDao.allUsers();
    }

    @Transactional
    @Override
    public void add(User user) {
        userDao.add(user);
    }

    @Transactional
    @Override
    public void delete(User user) {
        userDao.delete(user);
    }


    @Transactional
    @Override
    public void edit(User user){
        userDao.edit(user);
    }

    @Transactional
    @Override
    public User getById(int id){
        return userDao.getById(id);
    }
}
