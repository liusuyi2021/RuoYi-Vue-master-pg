package com.ruoyi.school.service.impl;

import java.util.List;

import com.ruoyi.school.domain.Teacher;
import com.ruoyi.school.mapper.TeacherMapper;
import com.ruoyi.school.service.ITeacherService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 教师Service业务层处理
 * 
 * @author liusuyi
 * @date 2023-01-29
 */
@Service
public class TeacherServiceImpl implements ITeacherService
{
    @Resource
    private TeacherMapper teacherMapper;

    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    @Override
    public Teacher selectTeacherById(String id)
    {
        return teacherMapper.selectTeacherById(id);
    }

    /**
     * 查询教师列表
     * 
     * @param teacher 教师
     * @return 教师
     */
    @Override
    public List<Teacher> selectTeacherList(Teacher teacher)
    {
        return teacherMapper.selectTeacherList(teacher);
    }

    /**
     * 新增教师
     * 
     * @param teacher 教师
     * @return 结果
     */
    @Override
    public int insertTeacher(Teacher teacher)
    {
        return teacherMapper.insertTeacher(teacher);
    }

    /**
     * 修改教师
     * 
     * @param teacher 教师
     * @return 结果
     */
    @Override
    public int updateTeacher(Teacher teacher)
    {
        return teacherMapper.updateTeacher(teacher);
    }

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的教师主键
     * @return 结果
     */
    @Override
    public int deleteTeacherByIds(String[] ids)
    {
        return teacherMapper.deleteTeacherByIds(ids);
    }

    /**
     * 删除教师信息
     * 
     * @param id 教师主键
     * @return 结果
     */
    @Override
    public int deleteTeacherById(String id)
    {
        return teacherMapper.deleteTeacherById(id);
    }
}
