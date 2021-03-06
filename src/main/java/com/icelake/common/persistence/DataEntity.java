package com.icelake.common.persistence;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <br>Title: DataEntity
 * <br>Description: 数据Entity支持类
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月12日
 */
@Setter
@Getter
@ToString
public abstract class DataEntity<T> extends BaseEntity<T> {

    protected String remark;

    protected String activeFlag;

    protected String createdBy;

    protected Date creationTime;

    protected String modifiedBy;

    protected Date modificationTime;

    protected String ext1;

    protected String ext2;

    protected String ext3;

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     */
    private static final long serialVersionUID = 1L;

}
