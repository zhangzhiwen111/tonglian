package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.Mapping;

import java.util.List;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:57
 */
@Mapper
public interface UserMapper {
    User checkuser(@Param("user") User user);

    User selUserById(@Param("accountId") String accounId);

    User selUserByName(@Param("accountName") String accountName);

    void save(User user);

    void update(User user);

    List<User> selUserAll(User user);

    Integer countUser();

    void del(String accountId);
}
