package com.hk.tonglian.controller;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UnitService;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @description 登录
 * @Author:zzw
 * @Date:2022/9/1 16:37
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private UnitService unitService;
    @RequestMapping("tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("login")
    @ResponseBody
    public Map<String,Object> login(User user, HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<>();

        try {
            request.getSession(true);//生成客户端session
            User user1 = userService.checkuser(user);
            if (user1!=null) {
                request.getSession().setAttribute("currentSessionUser", user1);
                result.put("status", "0");
                result.put("user", user1);
                return result;
            } else {
                result.put("status", "1");
                result.put("msg", "用户名或密码错误");
                return result;
            }

        } catch (Exception e) {
            result.put("msg",e.getMessage());
            result.put("status","1");
            e.printStackTrace();
        }

        return result;
    }



    @RequestMapping("index")
    @ResponseBody
    public ModelAndView index(HttpServletRequest request){
        ModelAndView model = new ModelAndView();
        Map<String,Object> result = new HashMap<>();
        User user = (User) request.getSession().getAttribute("currentSessionUser");
        if(user!=null){
            result = unitService.selUnitAll(user);
            model.addObject("user",user);
            model.addObject("unitmap",result);
            model.setViewName("main");
        }else{
            model.addObject("msg","请重新登录！");
            model.setViewName("login");
        }
        return model;
    }

    @RequestMapping("logout")
    public String logout(){
        return "login";
    }

}
