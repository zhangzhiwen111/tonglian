package com.hk.tonglian.controller;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:37
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("login")
    @ResponseBody
    public Map<String,Object> login(User user){
        Map<String,Object> result = new HashMap<>();
        User user1 = userService.checkuser(user);
        if(user1!=null){
            result.put("status","0");
            result.put("user",user1);
        }else{
            result.put("status","1");
            result.put("msg","用户名或密码错误！");
        }
        return result;
    }

    @RequestMapping("login2")
    public String login2(User user){

        return "main";
    }

}
