package com.hk.tonglian.controller;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
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



}
