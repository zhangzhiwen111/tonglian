package com.hk.tonglian.service;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/5 12:02
 */
@Service
public interface InfoService {
    List<Info> selAll(Unit unit);

    Info selOneById(@Param("infoId") String infoId);

    int add(Info info);

    void edit(Info info);

    List<Info> selOwnByUnitid(Unit unit);
}
