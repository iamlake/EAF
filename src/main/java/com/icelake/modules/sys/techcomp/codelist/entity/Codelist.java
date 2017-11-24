package com.icelake.modules.sys.techcomp.codelist.entity;

import java.util.Date;

import com.icelake.common.persistence.DataEntity;
import com.icelake.common.utils.StringUtils;

/**
 * <br>Title: Codelist
 * <br>Description: 代码表
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月15日
 */
public class Codelist extends DataEntity<Codelist> {

    private String codeId;

    private String codeValue;

    private String codeValueName;

    private String codeType;

    private String codeTypeName;

    private String codeParent;

    private String codeOrder;

    private String filter;

    private String language;

    private String remark;

    public String getCodeId() {
        return codeId;
    }

    public void setCodeId(String codeId) {
        this.codeId = codeId == null ? null : codeId.trim();
    }

    public String getCodeValue() {
        return codeValue;
    }

    public void setCodeValue(String codeValue) {
        this.codeValue = codeValue == null ? null : codeValue.trim();
    }

    public String getCodeValueName() {
        return codeValueName;
    }

    public void setCodeValueName(String codeValueName) {
        this.codeValueName = codeValueName == null ? null : codeValueName.trim();
    }

    public String getCodeType() {
        return codeType;
    }

    public void setCodeType(String codeType) {
        this.codeType = codeType == null ? null : codeType.trim();
    }

    public String getCodeTypeName() {
        return codeTypeName;
    }

    public void setCodeTypeName(String codeTypeName) {
        this.codeTypeName = codeTypeName == null ? null : codeTypeName.trim();
    }

    public String getCodeParent() {
        return codeParent;
    }

    public void setCodeParent(String codeParent) {
        this.codeParent = codeParent == null ? null : codeParent.trim();
    }

    public String getCodeOrder() {
        return codeOrder;
    }

    public void setCodeOrder(String codeOrder) {
        this.codeOrder = codeOrder;
    }

    public String getFilter() {
        return filter;
    }

    public void setFilter(String filter) {
        this.filter = filter == null ? null : filter.trim();
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    @Override
    public void preInsert() {
        this.setCodeId(StringUtils.getUUID());
        this.setCreationTime(new Date());
    }

    @Override
    public void preUpdate() {
        this.setModificationTime(new Date());
    }

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月15日
     */
    private static final long serialVersionUID = 1L;

}