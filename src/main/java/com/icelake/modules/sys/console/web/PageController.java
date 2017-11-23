package com.icelake.modules.sys.console.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icelake.common.web.BaseController;

/**
 * <br>Title: PageController
 * <br>Description: 视图控制器,返回jsp视图给前端
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年10月24日
 */
@Controller
@RequestMapping("/page")
public class PageController extends BaseController {

    /**
     * <br>Description: 页面跳转
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月23日
     * @param path
     * @return
     */
    @RequestMapping(value = "/{path}")
    public String forward(@PathVariable String path) {
        return path.replace("_", "/");
    }

    /**
     * <br>Description:登录页
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @return
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * <br>Description:框架页
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @return
     */
    @RequestMapping("/index")
    public String mainframe() {
        return "index";
    }

    /**
     * <br>Description:仪表盘
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @return
     */
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    /**
     * 404页
     */
    @RequestMapping("/404")
    public String error404() {
        return "base/exception/404";
    }

    /**
     * 401页
     */
    //    @RequestMapping(params = "401")
    //    public String error401() {
    //        return "401";
    //    }

    /**
     * 500页
     */
    //    @RequestMapping(params = "500")
    //    public String error500() {
    //        return "500";
    //    }

    //===================CMS DEMO============================

    @RequestMapping("/message")
    public String message() {
        return "cms/message/message";
    }

    @RequestMapping("/messagereply")
    public String messageReply() {
        return "cms/message/messageReply";
    }

    @RequestMapping("/images")
    public String images() {
        return "cms/img/images";
    }

    @RequestMapping("/sysparam")
    public String sysParam() {
        return "cms/sysParam/systemParameter";
    }

    @RequestMapping("/news")
    public String newsList() {
        return "cms/news/newsList";
    }

    @RequestMapping("/newsadd")
    public String newsAdd() {
        return "cms/news/newsAdd";
    }

    @RequestMapping("/links")
    public String linksList() {
        return "cms/links/linksList";
    }

    @RequestMapping("/linksadd")
    public String linksAdd() {
        return "cms/links/linksAdd";
    }
}
