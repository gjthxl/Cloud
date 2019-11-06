package com.baizhi.test;

import com.baizhi.dao.UserDAO;
import com.baizhi.entity.User;
import com.baizhi.service.impl.UserServiceImpl;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserDAO userServiceImpl = (UserDAO) classPathXmlApplicationContext.getBean("userDAO");
        UserServiceImpl userService = new UserServiceImpl();
        List<User> users = userService.showAllUser(0, 4);
        System.out.println(users);
    }
}
