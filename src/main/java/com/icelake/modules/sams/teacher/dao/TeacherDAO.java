package com.icelake.modules.sams.teacher.dao;

import com.icelake.common.persistence.CrudDAO;
import com.icelake.modules.sams.teacher.entity.Teacher;

/**
 * <br>Title: TeacherDAO
 * <br>Description: TeacherDAO
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2018年1月3日
 */
public interface TeacherDAO extends CrudDAO<Teacher> {
    int deleteByPrimaryKey(String teacherId);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(String teacherId);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
}