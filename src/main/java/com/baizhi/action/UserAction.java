package com.baizhi.action;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserAction {
    @Autowired
    private UserService userService;

    //铁憨憨
	
	//你才是铁憨憨
    
    @RequestMapping("/registMethod")
    public String registMethod(User user){
        try {
            userService.addUser(user);
            return "redirect:/login.jsp";
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/userRegist.jsp";
        }
    }

    @RequestMapping("/addMethod")
    public String addMethod(User user){
        userService.addUser(user);
        return "forward:showAllMethod.do";
    }

    @RequestMapping("/loginMethod")
    public String loginMethod(User user, HttpSession session){
        try {
            userService.login(user.getUsername(),user.getPassword(),user.getStatus(),session);
            if(user.getStatus().equals("admin")){
                return "redirect:showAllMethod.do";
            }
            else{
                return "redirect:queryMethod.do";
            }
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/login.jsp";
        }
    }

    @RequestMapping("/queryMethod")
    public String queryMethod(User user,Model model){
        User user1 = userService.queryUser(user.getUsername());
        model.addAttribute("user",user1);
        return "userlist";
    }

    @RequestMapping("/showAllMethod")
    public String showAllMethod(Integer page,Integer size, Model model,HttpSession session){
        if(page==null){page=1;size=3;session.setAttribute("size",size);}
        else{
            if(size==null){
                size= (Integer) session.getAttribute("size");
            }else{
                session.setAttribute("size",size);
            }
        }
        System.out.println(page+"-------"+size);
        Integer integer = userService.queryAllCount();
        List<User> users = userService.showAllUser((page-1)*size, size);
        model.addAttribute("userList",users);
        int pageNum=0;
        if(integer%size==0){
            pageNum=integer/size;
        }else{
            pageNum=integer/size+1;
        }
        model.addAttribute("pageNum",pageNum);
        model.addAttribute("page",page);
        return "admin";
    }

    @RequestMapping("/deleteMethod")
    public String deleteMethod(User user){
        userService.deleteUser(user);
        return "redirect:showAllMethod.do";
    }

    @RequestMapping("/queryUserMethod")
    @ResponseBody
    public User queryUserMethod(User user){
        User user1 = userService.queryUser(user.getUsername());
        return user1;
    }

    @RequestMapping("/updateMethod")
    public String updateMethod(User user){
        userService.updateUser(user);
        return "redirect:showAllMethod.do";
    }

    @RequestMapping("/safeOutMethod")
    public String safeOutMethod(HttpSession session){
        session.invalidate();
        return "redirect:/login.jsp";
    }

}
