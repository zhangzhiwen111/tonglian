package com.hk.tonglian.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.mappers.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> selUserAll(User user, Integer pageNumber, Integer pageSize) {
        Map<String,Object> map = new HashMap<>();
        PageHelper.startPage(pageNumber,pageSize);
        List<User> userlist = userMapper.selUserAll(user);
        PageInfo<User> page = new PageInfo<>(userlist);
        map.put("rows",page.getList());
        map.put("total",page.getTotal());
        map.put("status","0");
        return map;
    }
}
