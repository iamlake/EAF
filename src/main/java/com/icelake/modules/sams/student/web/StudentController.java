package com.icelake.modules.sams.student.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
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
    @RequestMapping(value = "/student", method = RequestMethod.GET)
    public Result findStudents(Student student) {
        List<Student> list = studentService.findList(student);
        return new QueryResult<Student>(0, "", list, list.size());
    }

    /**
     * <br>Description: 查询学生信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月27日
     * @param studentId
     * @return
     */
    @RequestMapping(value = "/student/{id}", method = RequestMethod.GET)
    public Result findStudentById(@PathVariable("id") String studentId) {
        List<Student> list = new ArrayList<>();
        list.add(studentService.get(studentId));
        return new QueryResult<Student>(0, "", list, list.size());
    }

    /**
     * <br>Description: 新增学生信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月27日
     * @param student
     * @return
     */
    @RequestMapping(value = "/student", method = RequestMethod.POST)
    public Result saveStudent(Student student) {
        JSONResult result = new JSONResult();
        studentService.save(student);
        result.setCode(0);
        result.setMsg("添加成功！");
        result.getParameters().put("", "");
        return result;
    }

    /**
     * <br>Description: 修改学生信息
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月27日
     * @param student
     * @return
     */
    @RequestMapping(value = "/student", method = RequestMethod.PUT)
    public Result updateStudent(Student student) {
        JSONResult result = new JSONResult();
        studentService.save(student);
        result.setCode(0);
        result.setMsg("修改成功！");
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
    @RequestMapping(value = "/student/{id}", method = RequestMethod.DELETE)
    public Result deleteStudentById(@PathVariable("id") String studentId) {
        JSONResult result = new JSONResult();
        studentService.delete(studentId);
        result.setCode(0);
        result.setMsg("删除成功！");
        result.getParameters().put("", "");
        return result;
    }

}
