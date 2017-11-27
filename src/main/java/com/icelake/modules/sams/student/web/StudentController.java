package com.icelake.modules.sams.student.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.icelake.common.persistence.result.JSONResult;
import com.icelake.common.persistence.result.QueryResult;
import com.icelake.common.persistence.result.Result;
import com.icelake.common.web.BaseController;
import com.icelake.modules.sams.student.entity.Student;
import com.icelake.modules.sams.student.service.StudentService;

/**
 * <br>Title:StudentController
 * <br>Description:student控制台
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年10月25日
 */
@RestController
@RequestMapping("/student")
public class StudentController extends BaseController {

    @Resource(name = "studentService")
    private StudentService studentService;

    /**
     * <br>Description: 查询学生列表
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     * @param student
     * @return
     */
    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    public Result findAllStudents(Student student) {
        List<Student> list = studentService.findList(student);
        return new QueryResult<Student>(0, "", list, list.size());
    }

    /**
     * <br>Description: 新增或保存学生信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月27日
     * @param student
     * @return
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Result saveStudent(Student student) {
        JSONResult result = new JSONResult();
        studentService.save(student);
        result.setCode(0);
        result.setMsg(student.getIsNew() ? "添加成功！" : "修改成功！");
        result.getParameters().put("", "");
        return result;
    }

    /**
     * <br>Description: 删除学生信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月27日
     * @param student
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public Result deleteStudents(Student student) {
        JSONResult result = new JSONResult();
        studentService.save(student);
        result.setCode(0);
        result.setMsg(student.getIsNew() ? "添加成功！" : "修改成功！");
        result.getParameters().put("", "");
        return result;
    }

}
