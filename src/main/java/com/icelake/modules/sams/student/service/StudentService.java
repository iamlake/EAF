package com.icelake.modules.sams.student.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icelake.common.service.CrudService;
import com.icelake.modules.sams.student.dao.StudentDAO;
import com.icelake.modules.sams.student.entity.Student;

@Service("studentService")
@Transactional(readOnly = true)
public class StudentService extends CrudService<StudentDAO, Student> {

}
