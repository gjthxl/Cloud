package com.baizhi.service;

import com.baizhi.entity.Admin;
        import com.baizhi.entity.User;

        import javax.servlet.http.HttpSession;
        import java.util.List;

public interface UserService {
    void login(String name, String pwd, String s, HttpSession session);
    void addUser(User user);
    List<User> showAllUser(Integer begin,Integer size);
    void updateUser(User user);
    void deleteUser(User user);
    User queryUser(String name);
    Integer queryAllCount();
}
