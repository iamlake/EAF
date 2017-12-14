package com.icelake.modules.sys.user.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icelake.common.service.CrudService;
import com.icelake.modules.sys.user.dao.UserDAO;
import com.icelake.modules.sys.user.entity.User;

@Service("userService")
@Transactional(readOnly = true)
public class UserService extends CrudService<UserDAO, User> {
    /**
     * <br>Description: 通过用户名获取用户信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月7日
     * @param account
     * @return
     */
    public User getUserByAccount(String account) {
        return dao.selectByAccount(account);
    }
}
