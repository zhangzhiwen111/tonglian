package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/5 12:40
 */
@Mapper
public interface InfoMapper {
    List<Info> selAll(Unit unit);

    Info selOneById(String infoId);

    int add(Info info);

    void edit(Info info);

    List<Info> selOwnByUnitid(Unit unit);
}
