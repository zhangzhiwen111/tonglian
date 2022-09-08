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
import java.util.*;

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


    @RequestMapping("toListPage")
    public ModelAndView list(Unit unit){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.addObject("unit",unit);
        modelAndView.setViewName("info");
        return modelAndView;
    }

    /*查询所有*/
    @RequestMapping("list")
    public Map<String,Object> selAll(Unit unit,Integer pageNumber,Integer pageSize){
        Map<String,Object> map = new HashMap<>();
        try{
            map = infoService.selAll(unit,pageNumber,pageSize);
        }catch (Exception e){
            map.put("status","1");
            e.printStackTrace();
        }
        return map;
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
    public Map<String,Object>  add(Info info,HttpServletRequest request){
            Map<String,Object> map = new HashMap<>();
            try {
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
                        map.put("status","0");
                    } else {
                        map.put("status","1");
                    }
            }catch (Exception e){
                map.put("status","1");
                e.printStackTrace();
            }
            return  map;
    }

    //编辑新闻
    @RequestMapping("edit")
    public String edit(Info info){
        infoService.edit(info);
        return "";
    }
}
