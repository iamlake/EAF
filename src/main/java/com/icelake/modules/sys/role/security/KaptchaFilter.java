package com.icelake.modules.sys.role.security;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

import com.google.code.kaptcha.Constants;

public class KaptchaFilter extends AccessControlFilter {
    private String kaptchaParam = "kaptcha";// 前台提交的验证码参数名

    public String getKaptchaParam() {
        return kaptchaParam;
    }

    public void setKaptchaParam(String kaptchaParam) {
        this.kaptchaParam = kaptchaParam;
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
            throws Exception {
        HttpServletRequest httpServletRequest = WebUtils.toHttp(request);
        // 验证验证码是否正确
        if (null == request.getParameter(kaptchaParam)) {
            return true;
        } else {
            String kaptchaFromWeb = (String) request.getParameter(kaptchaParam);
            String kaptchaFromSession = (String) httpServletRequest.getSession()
                    .getAttribute(Constants.KAPTCHA_SESSION_KEY);
            return kaptchaFromSession.toUpperCase().equals(kaptchaFromWeb.toUpperCase());
        }
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        // 如果验证码失败了，存储失败key属性
        request.setAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME, "Kaptcha.error");
        return true;
    }
}