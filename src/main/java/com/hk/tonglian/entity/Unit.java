package com.hk.tonglian.entity;

/**
 * @description 单位
 * @Author:zzw
 * @Date:2022/8/31 15:53
 */
public class Unit {

    private String unit_id;
    private String unit_name;
    private String unit_fname;
    private String default1;
    private String default2;

    public String getUnit_id() {
        return unit_id;
    }

    public String getUnit_name() {
        return unit_name;
    }

    public String getUnit_fname() {
        return unit_fname;
    }

    public String getDefault1() {
        return default1;
    }

    public String getDefault2() {
        return default2;
    }

    public void setUnit_id(String unit_id) {
        this.unit_id = unit_id;
    }

    public void setUnit_name(String unit_name) {
        this.unit_name = unit_name;
    }

    public void setUnit_fname(String unit_fname) {
        this.unit_fname = unit_fname;
    }

    public void setDefault1(String default1) {
        this.default1 = default1;
    }

    public void setDefault2(String default2) {
        this.default2 = default2;
    }
}
