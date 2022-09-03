package com.hk.tonglian.service;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.mappers.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:56
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public User checkuser(User user) {

        return userMapper.checkuser(user);
    }
}
