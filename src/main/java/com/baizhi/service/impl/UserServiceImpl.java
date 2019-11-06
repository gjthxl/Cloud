package com.baizhi.service.impl;

import com.baizhi.dao.UserDAO;
import com.baizhi.entity.Admin;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional(readOnly = true,propagation = Propagation.SUPPORTS)
    public void login(String name, String pwd, String s, HttpSession session) {
        if (s.equals("admin")){
            Admin admin = userDAO.loginAdmin(name);
            if (admin==null)throw new RuntimeException("用户名不存在");
            if(!admin.getPassword().equals(pwd))throw new RuntimeException("密码错误");
            session.setAttribute("admin",admin);
        }else {
            User user = userDAO.loginUser(name);
            if (user==null)throw new RuntimeException("用户名不存在");
            if(!user.getPassword().equals(pwd))throw new RuntimeException("密码错误");
            session.setAttribute("user",user);
        }
    }

    @Override
    public void addUser(User user) {
        user.setId(UUID.randomUUID().toString());
        if(user.getStatus()==null)
            user.setStatus("激活");
        userDAO.addUser(user);
    }

    @Override
    @Transactional(readOnly = true,propagation = Propagation.SUPPORTS)
    public List<User> showAllUser(Integer begin,Integer size) {
        List<User> users = userDAO.showAllUser(begin, size);
        return users;
    }

    @Override
    public void updateUser(User user) {
        userDAO.updateUser(user);
    }

    @Override
    public void deleteUser(User user) {
        userDAO.deleteUser(user);
    }

    @Override
    @Transactional(readOnly = true,propagation = Propagation.SUPPORTS)
    public User queryUser(String name) {
        User user = userDAO.loginUser(name);
        return user;
    }

    @Override
    public Integer queryAllCount() {
        Integer integer = userDAO.queryAllCount();
        return integer;
    }
}
