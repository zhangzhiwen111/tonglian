package com.hk.tonglian.service;

import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.mappers.InfoMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/9/5 12:02
 */
@Service
public class InfoServiceImpl implements InfoService{
    @Autowired
    private InfoMapper infoMapper;
    @Override
    public List<Info> selAll(Unit unit) {
        return infoMapper.selAll(unit);
    }

    @Override
    public Info selOneById(String infoId) {
        return infoMapper.selOneById(infoId);
    }

    @Override
    public int add(Unit unit) {
        return infoMapper.add(unit);
    }

    @Override
    public void edit(Unit unit) {
         infoMapper.edit(unit);
    }

    @Override
    public List<Info> selOwnByUnitid(Unit unit) {
        return infoMapper.selOwnByUnitid(unit);
    }


}
