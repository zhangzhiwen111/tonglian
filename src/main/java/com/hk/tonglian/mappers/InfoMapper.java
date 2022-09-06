package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/5 12:40
 */
@Mapper
public interface InfoMapper {
    List<Info> selAll();

    Info selOneById(@Param("infoId") String infoId);

    int add(@Param("unit") Unit unit);

    void edit(Unit unit);
}
