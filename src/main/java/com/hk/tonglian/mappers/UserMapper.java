package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.Mapping;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:57
 */
@Mapper
public interface UserMapper {
    public User checkuser(@Param("user") User user);
}
