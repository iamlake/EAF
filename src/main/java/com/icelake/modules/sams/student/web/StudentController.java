package com.icelake.modules.sams.student.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icelake.common.web.BaseController;
import com.icelake.modules.sams.student.entity.Student;
import com.icelake.modules.sams.student.service.StudentService;

/**
 * <br>Title:StudentController
 * <br>Description:student控制台
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年10月25日
 */
@Controller
@RequestMapping("/student")
public class StudentController extends BaseController {

    @Resource(name = "studentService")
    private StudentService studentService;

    @RequestMapping("/studentlist")
    public String forwardStudentList() {
        return "sams/student/studentList";
    }

    @RequestMapping("/studentedit")
    public String forwardStudentEdit() {
        return "sams/student/studentEdit";
    }

    /**
     * <br>Description: 查询学生列表
     * <br>Author:李一鸣(liyiming.neu@neusoft.com)
     * <br>Date:2017年11月12日
     * @param student
     * @return
     */
    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> findAll(Student student) {
        Map<String, Object> resultMap = new HashMap<>();
        List<Student> list = studentService.findList(student);
        resultMap.put("code", 0);
        resultMap.put("msg", "");
        resultMap.put("count", list.size());
        resultMap.put("data", list);
        return resultMap;
    }
}
