package com.ruoyi.school.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.school.mapper.StudentMapper;
import com.ruoyi.school.domain.Student;
import com.ruoyi.school.service.IStudentService;

/**
 * 学生管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-16
 */
@Service
public class StudentServiceImpl implements IStudentService 
{
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 查询学生管理
     * 
     * @param id 学生管理主键
     * @return 学生管理
     */
    @Override
    public Student selectStudentById(String id)
    {
        return studentMapper.selectStudentById(id);
    }

    /**
     * 查询学生管理列表
     * 
     * @param student 学生管理
     * @return 学生管理
     */
    @Override
    @DataScope(deptAlias = "d",userAlias = "u")
    public List<Student> selectStudentList(Student student)
    {
        return studentMapper.selectStudentList(student);
    }

    /**
     * 新增学生管理
     * 
     * @param student 学生管理
     * @return 结果
     */
    @Override
    public int insertStudent(Student student)
    {
        return studentMapper.insertStudent(student);
    }

    /**
     * 修改学生管理
     * 
     * @param student 学生管理
     * @return 结果
     */
    @Override
    public int updateStudent(Student student)
    {
        return studentMapper.updateStudent(student);
    }

    /**
     * 批量删除学生管理
     * 
     * @param ids 需要删除的学生管理主键
     * @return 结果
     */
    @Override
    public int deleteStudentByIds(String[] ids)
    {
        return studentMapper.deleteStudentByIds(ids);
    }

    /**
     * 删除学生管理信息
     * 
     * @param id 学生管理主键
     * @return 结果
     */
    @Override
    public int deleteStudentById(String id)
    {
        return studentMapper.deleteStudentById(id);
    }
}
