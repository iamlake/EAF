package com.icelake.modules.sys.user.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {
    /**
     * <br>Description: 用户登录
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @param m
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String userLogin(Model m, HttpSession session) {
        session.setAttribute("currentUser", "shenlu");
        session.setAttribute("currentClass", "35");
        return "redirect:/rest/page/index";
    }

    /**
     * <br>Description: 用户注销
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @param m
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String userLogout(HttpSession session) {
        session.removeAttribute("currentUser");
        session.removeAttribute("currentClass");
        return "redirect:/rest/page/login";
    }

    /**
     * <br>Description: 用户信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月2日
     * @param m
     * @param session
     * @return
     */
    @RequestMapping("/userinfo")
    public String userInfo(Model m, HttpSession session) {
        return "user/userInfo";
    }

    /**
     * <br>Description: 修改密码
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月1日
     * @param m
     * @param session
     * @return
     */
    @RequestMapping("/changepwd")
    public String changePwd(Model m, HttpSession session) {
        return "user/changePwd";
    }

    @RequestMapping("/allusers")
    public String allUsers(Model m, HttpSession session) {
        return "user/allUsers";
    }

    @RequestMapping("/adduser")
    public String addUser(Model m, HttpSession session) {
        return "user/addUser";
    }
}
