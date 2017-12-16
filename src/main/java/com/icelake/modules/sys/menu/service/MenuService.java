package com.icelake.modules.sys.menu.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icelake.common.service.CrudService;
import com.icelake.modules.sys.menu.dao.MenuDAO;
import com.icelake.modules.sys.menu.entity.Menu;

@Service("menuService")
@Transactional(readOnly = true)
public class MenuService extends CrudService<MenuDAO, Menu> {

}
