package com.icelake.modules.sys.role.security;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.web.filter.PathMatchingFilter;
import org.springframework.stereotype.Component;

/**
 * <br>Title: SysUserFilter
 * <br>Description: 自定义用户过滤器
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年12月6日
 */
@Component(value = "sysUserFilter")
public class SysUserFilter extends PathMatchingFilter {
    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue)
            throws Exception {
        //TODO see http://jinnianshilongnian.iteye.com/blog/2025656
        return true;
    }
}
