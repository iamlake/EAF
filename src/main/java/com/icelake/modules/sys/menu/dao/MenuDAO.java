package com.icelake.modules.sys.menu.dao;

import com.icelake.common.persistence.CrudDAO;
import com.icelake.common.persistence.annotation.MyBatisDAO;
import com.icelake.modules.sys.menu.entity.Menu;

/**
 * <br>Title: MenuDAO
 * <br>Description: MenuDAO
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年12月16日
 */
@MyBatisDAO
public interface MenuDAO extends CrudDAO<Menu> {
}