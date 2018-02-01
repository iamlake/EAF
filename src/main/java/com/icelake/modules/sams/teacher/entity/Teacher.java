package com.icelake.modules.sams.teacher.entity;

import java.util.Date;

import com.icelake.common.persistence.DataEntity;
import com.icelake.common.utils.StringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <br>Title: Teacher
 * <br>Description: 教师
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2018年1月3日
 */
@Setter
@Getter
@ToString
public class Teacher extends DataEntity<Teacher> {

    private String teacherId;

    private String teacherNo;

    private String teacherName;

    private String sex;

    private String birthDate;

    @Override
    public void preInsert() {
        this.setTeacherId(StringUtils.getUUID());
        this.setCreationTime(new Date());
    }

    @Override
    public void preUpdate() {
        this.setModificationTime(new Date());
    }

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2018年1月3日
     */
    private static final long serialVersionUID = 1L;
}