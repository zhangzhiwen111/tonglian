package com.hk.tonglian.entity;

import lombok.Data;

/**
 * @description TODO
 * @Author:zzw
 * @Date:2022/8/31 15:55
 */
@Data
public class Info {
    private String infoId;
    private String infoTitle;
    private String infoContent;
    private String infoCreatorcn;
    private String infoCreatoren;
    private String infoUnitid;

    private String infoCreatetime;
    private String infoUpdatetme;
    private String infoType;
    private String infoStatus;
    private String infoToColumn;
    private String default1;
    private String default2;
    private String unitName;
    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId;
    }

    public String getInfoTitle() {
        return infoTitle;
    }

    public void setInfoTitle(String infoTitle) {
        this.infoTitle = infoTitle;
    }

    public String getInfoContent() {
        return infoContent;
    }

    public void setInfoContent(String infoContent) {
        this.infoContent = infoContent;
    }

    public String getInfoCreatorcn() {
        return infoCreatorcn;
    }

    public void setInfoCreatorcn(String infoCreatorcn) {
        this.infoCreatorcn = infoCreatorcn;
    }

    public String getInfoCreatoren() {
        return infoCreatoren;
    }

    public void setInfoCreatoren(String infoCreatoren) {
        this.infoCreatoren = infoCreatoren;
    }

    public String getInfoUnitid() {
        return infoUnitid;
    }

    public void setInfoUnitid(String infoUnitid) {
        this.infoUnitid = infoUnitid;
    }

    public String getInfoCreatetime() {
        return infoCreatetime;
    }

    public void setInfoCreatetime(String infoCreatetime) {
        this.infoCreatetime = infoCreatetime;
    }

    public String getInfoUpdatetme() {
        return infoUpdatetme;
    }

    public void setInfoUpdatetme(String infoUpdatetme) {
        this.infoUpdatetme = infoUpdatetme;
    }

    public String getInfoType() {
        return infoType;
    }

    public void setInfoType(String infoType) {
        this.infoType = infoType;
    }

    public String getInfoStatus() {
        return infoStatus;
    }

    public void setInfoStatus(String infoStatus) {
        this.infoStatus = infoStatus;
    }

    public String getInfoToColumn() {
        return infoToColumn;
    }

    public void setInfoToColumn(String infoToColumn) {
        this.infoToColumn = infoToColumn;
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

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
}
