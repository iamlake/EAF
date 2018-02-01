package com.icelake.modules.sys.techcomp.codelist.entity;

import java.util.Date;

import com.icelake.common.persistence.DataEntity;
import com.icelake.common.utils.StringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <br>Title: Codelist
 * <br>Description: 代码表
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月15日
 */
@Setter
@Getter
@ToString
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