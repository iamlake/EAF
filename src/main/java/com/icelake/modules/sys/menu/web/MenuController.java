package com.icelake.modules.sys.menu.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icelake.common.persistence.constants.Global;
import com.icelake.common.persistence.result.QueryResult;
import com.icelake.common.persistence.result.Result;
import com.icelake.common.web.BaseController;
import com.icelake.modules.sys.menu.entity.Menu;
import com.icelake.modules.sys.menu.service.MenuService;

@Controller
public class MenuController extends BaseController {

    @Resource
    private MenuService menuService;

    @RequestMapping(value = "/menu", method = RequestMethod.GET)
    @ResponseBody
    public Result findMenuList(Menu menu) {
        List<Menu> list = menuService.findList(menu);
        return new QueryResult<Menu>(Global.RESULT_STAUTS_SUCCESS, "", list, list.size());
    }

    @RequestMapping(value = "/menu/{appId}", method = RequestMethod.GET)
    @ResponseBody
    public Result findMenuList(@PathVariable("appId") String appId) {
        List<Menu> list = menuService.findList(appId);
        return new QueryResult<Menu>(Global.RESULT_STAUTS_SUCCESS, "", list, list.size());
    }
}
