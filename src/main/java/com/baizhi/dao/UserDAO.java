package com.baizhi.dao;

import com.baizhi.entity.Admin;
import com.baizhi.entity.User;

import java.util.List;

public interface UserDAO {
    Admin loginAdmin(String admin);
    User loginUser(String user);
    void addUser(User user);
    List<User> showAllUser(Integer begin,Integer size);
    void updateUser(User user);
    void deleteUser(User user);
    Integer queryAllCount();
}
