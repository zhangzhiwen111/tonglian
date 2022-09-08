package com.hk.tonglian.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hk.tonglian.entity.Info;
import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.mappers.InfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> selAll(Unit unit, Integer pageNumber, Integer pageSize) {
        String default1 = unit.getDefault1();
        Map<String,Object> map = new HashMap<>();
        PageHelper.startPage(pageNumber,pageSize);
        List<Info> infolist = new ArrayList<>();
        if("yes".equals(default1)){
            infolist = infoMapper.selAll(unit);
        }else {
            infolist = infoMapper.selOwnByUnitid(unit);
        }

        PageInfo<Info> page = new PageInfo<Info>(infolist);
        map.put("rows",page.getList());
        map.put("total",page.getTotal());
        map.put("status","0");
        return map;
    }

    @Override
    public Info selOneById(String infoId) {
        return infoMapper.selOneById(infoId);
    }

    @Override
    public int add(Info info) {
        return infoMapper.add(info);
    }

    @Override
    public void edit(Info info) {
         infoMapper.edit(info);
    }




}
