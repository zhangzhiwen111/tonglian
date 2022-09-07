package com.hk.tonglian.controller;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @description 新闻
 * @Author:zzw
 * @Date:2022/9/5 12:01
 */
@Controller
@RequestMapping("/info")
public class InfoController {

    @Autowired
    private InfoService infoService;
    /*查询所有*/
    @RequestMapping("list")
    public ModelAndView selAll(Unit unit,HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        /*User user = (User) request.getSession().getAttribute("currentSessionUser");
        if(null!=user){*/
            /*判断是否有子栏目*/
            String default1 = unit.getDefault1();
            List<Info> list = new ArrayList<>();
            if("yes".equals(default1)){
                list = infoService.selAll(unit);
            }else {
                list = infoService.selOwnByUnitid(unit);
            }
            modelAndView.addObject("infolist",list);
            modelAndView.addObject("status","1");
            modelAndView.setViewName("info");
/*        }else {
            modelAndView.addObject("msg","请重新登录！");
            modelAndView.setViewName("login");
        }*/
        return modelAndView;
    }

    @RequestMapping("selOneById")
    public void selOneById(){
        Info info = new Info();
        info = infoService.selOneById("23425");
    }
    //根据单位去新增新闻
    @RequestMapping("toAdd")
    public ModelAndView toAdd(Unit unit){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("unitName",unit.getUnitName());
        modelAndView.addObject("unitFname",unit.getUnitFname());
        modelAndView.setViewName("infoadd");
        return modelAndView;
    }

    //根据新闻Id去编辑新闻
    @RequestMapping("toEdit")
    public ModelAndView toEdit(){
        ModelAndView modelAndView = new ModelAndView();
        Info info = new Info();
        info = infoService.selOneById("23425");
        modelAndView.addObject("info",info);
        modelAndView.setViewName("infoedit");
        return modelAndView;
    }

    //新增新闻
    @RequestMapping("add")
    public String  add(Unit unit){
        int result  = infoService.add(unit);
        return "";
    }

    //编辑新闻
    @RequestMapping("edit")
    public String edit(Unit unit){
        infoService.edit(unit);
        return "";
    }
}
