package com.hk.tonglian.entity;

import lombok.Data;

/**
 * @description 单位
 * @Author:zzw
 * @Date:2022/8/31 15:53
 */
@Data
public class Unit {

    private String unitId;
    private String unitName;
    private String unitFname;
    private String unitFid;
    private String default1;
    private String default2;

    public Unit() {
    }

    public Unit(String unitId, String unitName) {
        this.unitId = unitId;
        this.unitName = unitName;
    }

    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getUnitFname() {
        return unitFname;
    }

    public void setUnitFname(String unitFname) {
        this.unitFname = unitFname;
    }

    public String getUnitFid() {
        return unitFid;
    }

    public void setUnitFid(String unitFid) {
        this.unitFid = unitFid;
    }

    public String getDefault1() {
        return default1;
    }

    public void setDefault1(String default1) {
        this.default1 = default1;
    }

    public String getDefault2() {
        return default2;
    }

    public void setDefault2(String default2) {
        this.default2 = default2;
    }
}
