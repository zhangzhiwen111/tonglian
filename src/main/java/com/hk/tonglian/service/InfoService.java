package com.hk.tonglian.service;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/5 12:02
 */
@Service
public interface InfoService {

    Map<String, Object> selAll(Unit unit, Integer pageNumber, Integer pageSize);

    Info selOneById(@Param("infoId") String infoId);

    int add(Info info);

    void edit(Info info);
}
