package com.hk.tonglian.controller;

import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/8/31 21:33
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("list")
    public ModelAndView list(Unit unit){
        ModelAndView modelAndView= new ModelAndView();
        List<User> userlist = userService.selUserAll();
        modelAndView.addObject("userlist",userlist);
        modelAndView.setViewName("useradd");
        return modelAndView;
    }

    @RequestMapping("toadd")
    public ModelAndView toadd(Unit unit){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.addObject("unit",unit);
        modelAndView.setViewName("useradd");
        return modelAndView;
    }

    @RequestMapping("toedit")
    public ModelAndView toedit(String uid){
        ModelAndView modelAndView= new ModelAndView();
        User user = userService.selUserById(uid);
        modelAndView.addObject("user",user);
        modelAndView.setViewName("useredit");
        return modelAndView;
    }

    @RequestMapping("save")
    public ModelAndView save(User user){
        ModelAndView modelAndView= new ModelAndView();
        try{
            userService.save(user);
        }catch(Exception e){
            e.printStackTrace();
        }
        modelAndView.setViewName("userlist");
        return modelAndView;
    }

    @RequestMapping("edit")
    public ModelAndView checkExitUser(User user){
        ModelAndView modelAndView= new ModelAndView();
        try{
            userService.edit(user);
        }catch(Exception e){
            e.printStackTrace();
        }
        modelAndView.setViewName("userlist");
        return modelAndView;
    }


}
