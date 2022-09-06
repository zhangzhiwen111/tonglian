package com.hk.tonglian.service;

import com.hk.tonglian.entity.Unit;
import com.hk.tonglian.entity.User;
import com.hk.tonglian.mappers.UnitMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> selUnitAll(User user) {

        Map<String,Object> data = new HashMap<>();
        // 用户类型不是0的查询所有父  是0的查询出所在单位
        List<Unit> parentList = unitMapper.selUnitParentAll(user.getAccountType(),user.getUnitId());
        List<Map<String,Object>> dataList = new ArrayList<>();
        if (parentList!=null){
            for (Unit unit: parentList) {
                Map<String,Object> dataMap = new HashMap<>();
                List<Unit> childList = new ArrayList<>();
                if(unit.getUnitFid()!=null){//是0 的所在单位是子单位 的情况
                    //需要查询所在父单位
                    childList.add(unit);
                    unit = new Unit(unit.getUnitFid(),unit.getUnitFname());

                }else{
                    childList = unitMapper.selOwnChild(unit.getUnitId());
                }
                dataMap.put("parent",unit);
                dataMap.put("child",childList);
                dataList.add(dataMap);
            }
        }

        data.put("data",dataList);
        return data;
    }
}
