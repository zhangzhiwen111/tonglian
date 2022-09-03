package com.hk.tonglian.service;

import com.hk.tonglian.mappers.UnitMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/3 18:54
 */
@Service
public class UnitServiceImpl implements UnitService{

    @Autowired
    private UnitMapper unitMapper;
    @Override
    public void selUnitAll() {
        unitMapper.selUnitAll();
    }
}
