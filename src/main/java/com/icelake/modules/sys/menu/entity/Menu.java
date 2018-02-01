package com.icelake.modules.sys.menu.entity;

import java.util.Date;

import com.icelake.common.persistence.DataEntity;
import com.icelake.common.utils.StringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <br>Title: Menu
 * <br>Description: 菜单
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年12月16日
 */
@Setter
@Getter
@ToString
public class Menu extends DataEntity<Menu> {

    private String menuId;

    private String title;

    private String target;

    private String href;

    private String icon;

    private String spread;

    private String menuOrder;

    private String showDefault;

    private String parentMenuId;

    private String appId;

    @Override
    public void preInsert() {
        this.setMenuId(StringUtils.getUUID());
        this.setCreationTime(new Date());
    }

    @Override
    public void preUpdate() {
        this.setModificationTime(new Date());
    }

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月16日
     */
    private static final long serialVersionUID = 1L;
}