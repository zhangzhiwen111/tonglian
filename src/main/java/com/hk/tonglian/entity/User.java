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
    private Integer accountType;
    private Integer accountPassSettime;
    private String accountOrder;


}