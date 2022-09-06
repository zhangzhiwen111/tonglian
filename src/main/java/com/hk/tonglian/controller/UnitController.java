package com.hk.tonglian.controller;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UnitService;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @description 单位
 * @Author:zzw
 * @Date:2022/8/31 21:33
 */
@Controller
@RequestMapping("/unit")
public class UnitController {
    @Autowired
    private UnitService unitService;

    @RequestMapping("selUnitAll")
    @ResponseBody
    public ModelAndView selUnitAll(HttpServletRequest request){
        Map<String,Object> result = new HashMap<>();
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) request.getSession().getAttribute("currentSessionUser");
        if(user!=null){
            result = unitService.selUnitAll(user);
        }
        modelAndView.addObject("unitmap",result);
        modelAndView.setViewName("main");
        return modelAndView;
    }



}
