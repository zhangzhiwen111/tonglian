package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:57
 */
@Mapper
public interface UnitMapper {
    public void selUnitAll();
}
