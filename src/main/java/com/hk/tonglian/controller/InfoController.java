package com.hk.tonglian.controller;

import com.hk.tonglian.UtilTool;
import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
            String unitId = unit.getUnitId();
            List<Info> list = new ArrayList<>();
            if("yes".equals(default1)){
                list = infoService.selAll(unit);
            }else {
                list = infoService.selOwnByUnitid(unit);
            }
            modelAndView.addObject("infolist",list);
            modelAndView.addObject("unitId",unitId);

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
    @ResponseBody
    public String  add(Info info,HttpServletRequest request){
            User user = (User) request.getSession().getAttribute("currentSessionUser");
            if (user != null) {
                info.setInfoCreatorcn(user.getNickName());
                info.setInfoCreatoren(user.getAccountName());
            }
            info.setInfoCreatetime(UtilTool.getNowLong());
            info.setInfoUpdatetme(UtilTool.getNowLong());
            //状态未提交
            info.setInfoStatus("0");
            info.setInfoId(UUID.randomUUID().toString().replace("-", ""));
            int result = infoService.add(info);
            if (result == 1) {
                return "success";
            } else {
                return "false";
            }
    }

    //编辑新闻
    @RequestMapping("edit")
    public String edit(Info info){
        infoService.edit(info);
        return "";
    }
}
