package com.icelake.modules.sys.role.security;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Component;

import com.icelake.modules.sys.user.entity.User;
import com.icelake.modules.sys.user.service.UserService;

/**
 * <br>Title: SecurityRealm
 * <br>Description: 用户身份验证与授权 Realm 组件
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年12月6日
 */
@Component(value = "securityRealm")
public class SecurityRealm extends AuthorizingRealm {

    @Resource
    private UserService userService;

    /**
     * <br>Description: 权限检查
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月6日
     * @see org.apache.shiro.realm.AuthorizingRealm#doGetAuthorizationInfo(org.apache.shiro.subject.PrincipalCollection)
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        System.out.println("TODO Auto-generated method stub");
        // TODO Auto-generated method stub
        return null;
    }

    /**
     * <br>Description: 身份验证
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月6日
     * @see org.apache.shiro.realm.AuthenticatingRealm#doGetAuthenticationInfo(org.apache.shiro.authc.AuthenticationToken)
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
            throws AuthenticationException {
        User user = userService.getUserByAccount(String.valueOf(token.getPrincipal()));
        if (user == null)
            throw new UnknownAccountException();//找不到账号
        if (Boolean.TRUE.equals(user.getIsLocked()))
            throw new LockedAccountException();//账号已锁定
        ByteSource credentialsSalt = ByteSource.Util.bytes(user.getAccount());
        // 交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配  
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getAccount(), // 用户名  
                user.getPassword(), // 密码  
                //ByteSource.Util.bytes(user.getCredentialsSalt()),// salt=username+salt  
                getName() // realm name  
        );
        return authenticationInfo;
    }
}