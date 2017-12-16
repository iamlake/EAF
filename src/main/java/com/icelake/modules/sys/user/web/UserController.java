package com.icelake.modules.sys.user.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Constants;
import com.icelake.common.persistence.constants.Global;
import com.icelake.common.persistence.result.JSONResult;
import com.icelake.common.persistence.result.Result;
import com.icelake.common.web.BaseController;
import com.icelake.modules.sys.user.entity.User;
import com.icelake.modules.sys.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Resource
    private UserService userService;

    /**
     * <br>Description: 用户登录
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @param user
     * @param kaptcha
     * @param rememberMe
     * @return
     */
    @RequestMapping(value = "/login", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public Result userLogin(User user, String kaptcha, boolean rememberMe) {
        JSONResult result = new JSONResult();
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            result.setCode(Global.RESULT_STAUTS_SUCCESS);
        } else if (user.getAccount() == null || user.getPassword() == null) {
            result.setCode(Global.RESULT_STAUTS_FAILED);
        } else if (!kaptcha.equals(request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY))) {
            result.setCode(Global.RESULT_STAUTS_FAILED);
            result.setMsg("验证码不正确！");
        } else {
            UsernamePasswordToken token = new UsernamePasswordToken(user.getAccount(), user.getPassword());
            token.setRememberMe(rememberMe);
            try {
                currentUser.login(token);
                result.setCode(Global.RESULT_STAUTS_SUCCESS);
                result.setMsg("登录成功！");
            } catch (IncorrectCredentialsException e) {
                result.setCode(Global.RESULT_STAUTS_FAILED);
                result.setMsg("用户名或密码不正确！");
            } catch (LockedAccountException e) {
                result.setCode(Global.RESULT_STAUTS_FAILED);
                result.setMsg("账户已被冻结！");
            } catch (AuthenticationException e) {
                result.setCode(Global.RESULT_STAUTS_FAILED);
                result.setMsg("登录失败！");
            }
        }
        return result;
    }

    /**
     * <br>Description: 用户注销
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年10月24日
     * @param m
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
    public String userLogout() {
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.logout();
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
    public String userInfo() {
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
