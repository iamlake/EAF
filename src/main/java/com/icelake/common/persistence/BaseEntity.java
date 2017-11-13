package com.icelake.common.persistence;

import java.io.Serializable;

/**
 * <br>Title: BaseEntity
 * <br>Description: Entity支持类
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月12日
 */
public abstract class BaseEntity<T> implements Serializable {

    /**
     * <br>Description: 新增标识
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     */
    protected boolean isNew = true;

    public boolean getIsNew() {
        return isNew;
    }

    public void setIsNew(boolean isNew) {
        this.isNew = isNew;
    }

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     */
    private static final long serialVersionUID = 1L;
}
