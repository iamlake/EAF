package com.icelake.modules.sams.student.dao;

import com.icelake.common.persistence.CrudDAO;
import com.icelake.common.persistence.annotation.MyBatisDAO;
import com.icelake.modules.sams.student.entity.Student;

/**
 * <br>Title: StudentDAO
 * <br>Description: StudentDAO
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月12日
 */
@MyBatisDAO
public interface StudentDAO extends CrudDAO<Student> {

}
