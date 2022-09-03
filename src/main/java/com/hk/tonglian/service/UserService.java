package com.hk.tonglian.service;

import com.hk.tonglian.entity.User;
import org.springframework.stereotype.Service;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:53
 */
@Service
public interface UserService {

    public User checkuser(User user);
}
