package com.hk.tonglian.controller;

import com.hk.tonglian.service.UnitService;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/8/31 21:33
 */
@Controller
@RequestMapping("/unit")
public class UnitController {
    @Autowired
    private UnitService unitService;

    @RequestMapping("selUnitAll")
    public void selUnitAll(){
        unitService.selUnitAll();
    }



}
