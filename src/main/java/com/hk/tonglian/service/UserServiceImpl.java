package com.hk.tonglian.service;

import com.hk.tonglian.entity.User;
import com.hk.tonglian.mappers.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public User selUserById(String uid) {
        return userMapper.selUserById(uid);
    }

    @Override
    public User selUserByName(String accountName) {
        return userMapper.selUserByName(accountName);
    }

    @Override
    public void save(User user) {
        userMapper.save(user);
    }

    @Override
    public void edit(User user) {
        userMapper.update(user);
    }

    @Override
    public List<User> selUserAll() {
        return userMapper.selUserAll();
    }
}
