package com.icelake.modules.sys.menu.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icelake.common.service.CrudService;
import com.icelake.modules.sys.menu.dao.MenuDAO;
import com.icelake.modules.sys.menu.entity.Menu;

@Service("menuService")
@Transactional(readOnly = true)
public class MenuService extends CrudService<MenuDAO, Menu> {
    /**
     * <br>Description: 查询应用下所有菜单
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2018年1月9日
     * @param appId
     * @return
     */
    public List<Menu> findList(String appId) {
        Menu m = new Menu();
        m.setAppId(appId);
        return dao.selectByCustomConditions(m);
    }
}
