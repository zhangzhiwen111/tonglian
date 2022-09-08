package com.hk.tonglian.entity;
/*
* */

import lombok.Data;

@Data
public class User{
    private String accountId;
    private String accountName;
    private String accountPass;
    private String status;
    private String nickName;
    private String accountType;
    private String accountPassSetTime;
    private String accountOrder;
    private String unitId;
    private String default1;
    private String default2;
    private String unitName;

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getAccountPass() {
        return accountPass;
    }

    public void setAccountPass(String accountPass) {
        this.accountPass = accountPass;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getAccountPassSetTime() {
        return accountPassSetTime;
    }

    public void setAccountPassSetTime(String accountPassSetTime) {
        this.accountPassSetTime = accountPassSetTime;
    }

    public String getAccountOrder() {
        return accountOrder;
    }

    public void setAccountOrder(String accountOrder) {
        this.accountOrder = accountOrder;
    }

    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId;
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