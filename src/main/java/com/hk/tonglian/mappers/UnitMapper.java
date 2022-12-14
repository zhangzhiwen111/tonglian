package com.hk.tonglian.mappers;

import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/1 16:57
 */
@Mapper
public interface UnitMapper {

    List<Unit> selUnitParentAll(@Param("accountType") String accountType,@Param("unitId") String unitId);

    List<Unit> selOwnChild(String unitId);
}
