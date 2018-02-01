package com.icelake.modules.sams.student.entity;

import java.util.Date;

import com.icelake.common.persistence.DataEntity;
import com.icelake.common.utils.StringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <br>Title:Student
 * <br>Description:学生实体类
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年10月25日
 */
@Setter
@Getter
@ToString
public class Student extends DataEntity<Student> {

    private String studentId;

    private String studentNo;

    private String studentName;

    private String sex;

    private String birthDate;

    private String startTime;

    private String finishTime;

    private String remark;

    @Override
    public void preInsert() {
        this.setStudentId(StringUtils.getUUID());
        this.setCreationTime(new Date());
    }

    @Override
    public void preUpdate() {
        this.setModificationTime(new Date());
    }

    /**
     * <br>Description: serialVersionUID
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     */
    private static final long serialVersionUID = 1L;
}