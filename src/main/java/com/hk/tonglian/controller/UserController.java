package com.hk.tonglian.controller;

import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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

    @RequestMapping("toListPage")
    public ModelAndView list(){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("user");
        return modelAndView;
    }

    @RequestMapping("list")
    @ResponseBody
    public Map<String,Object> list(User user,Integer pageNumber,Integer pageSize){
        Map<String,Object> map = new HashMap<>();
        try{
            map = userService.selUserAll(user,pageNumber,pageSize);

        }catch (Exception e){
            map.put("status","1");
            e.printStackTrace();
        }


        return map;
    }


    @RequestMapping("selUserById")
    @ResponseBody
    public Map<String,Object> toedit(String accountId){
        Map<String,Object> map = new HashMap<>();
        try{
            User user = userService.selUserById(accountId);
            map.put("data",user);
            map.put("status","0");
        }catch (Exception e){
            map.put("status","1");
            e.printStackTrace();
        }
        return map;
    }

    @RequestMapping("save")
    @ResponseBody
    public Map<String,Object> save(User user){
        Map<String,Object> map = new HashMap<>();
        try{
            userService.save(user);
            map.put("status","0");

        }catch(Exception e){
            map.put("status","1");
            e.printStackTrace();
        }

        return map;
    }

    @RequestMapping("edit")
    @ResponseBody
    public Map<String,Object> checkExitUser(User user){
        Map<String,Object> map = new HashMap<>();
        try{
            userService.edit(user);
            map.put("status","0");
        }catch(Exception e){
            map.put("status","1");
            e.printStackTrace();
        }
        return map;

    }

    @RequestMapping("del")
    @ResponseBody
    public Map<String,Object> del(String accountId){
        Map<String,Object> map = new HashMap<>();
        try{
            userService.del(accountId);
            map.put("status","0");

        }catch(Exception e){
            map.put("status","1");
            e.printStackTrace();
        }

        return map;
    }

}
