package com.hk.tonglian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 9:27
 */
@Controller
@RequestMapping("/index")
public class IndexController {
    @RequestMapping(value = "/zhou")
    public ModelAndView toindex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("zhuo","zhouword1");
        modelAndView.setViewName("zhou");
        return modelAndView;
    }

    @RequestMapping(value = "/zhou1")
    public String toindex1(Model model){
        model.addAttribute("zhuo","zhuoworld1");
        return "index";
    }

}
