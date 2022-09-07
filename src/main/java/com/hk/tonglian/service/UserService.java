package com.hk.tonglian.service;

import com.hk.tonglian.entity.User;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:53
 */
@Service
public interface UserService {

    User checkuser(User user);

    User selUserById(String uid);

    User selUserByName(String accountName);

    void save(User user);

    void edit(User user);

    Map<String, Object> selUserAll(User user, Integer pageNumber, Integer pageSize);
}
