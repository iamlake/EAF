package com.icelake.modules.sys.user.dao;

import org.apache.ibatis.annotations.Param;

import com.icelake.common.persistence.CrudDAO;
import com.icelake.common.persistence.annotation.MyBatisDAO;
import com.icelake.modules.sys.user.entity.User;

/**
 * <br>Title: UserDAO
 * <br>Description: UserDAO
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年12月6日
 */
@MyBatisDAO
public interface UserDAO extends CrudDAO<User> {
    /**
     * <br>Description: 根据登录名查询用户
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月7日
     * @param account
     * @return
     */
    public User selectByAccount(@Param("account") String account);

    /**
     * <br>Description: 登录用户名密码验证
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年12月17日
     * @param user
     * @return
     */
    public User authentication(User user);
}