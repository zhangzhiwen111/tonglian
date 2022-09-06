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
    List<Info> selAll();

    Info selOneById(@Param("infoId") String infoId);

    int add(Unit unit);

    void edit(Unit unit);
}
