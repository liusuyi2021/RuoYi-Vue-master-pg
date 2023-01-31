package com.ard.service.impl;

import java.util.List;

import com.ard.domian.ArdCameras;
import com.ard.mapper.ArdCamerasMapper;
import com.ard.service.IArdCamerasService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
 * 相机设备Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-01-31
 */
@Service
public class ArdCamerasServiceImpl implements IArdCamerasService
{
    @Resource
    private ArdCamerasMapper ardCamerasMapper;

    /**
     * 查询相机设备
     * 
     * @param id 相机设备主键
     * @return 相机设备
     */
    @Override
    public ArdCameras selectArdCamerasById(String id)
    {
        return ardCamerasMapper.selectArdCamerasById(id);
    }

    /**
     * 查询相机设备列表
     * 
     * @param ardCameras 相机设备
     * @return 相机设备
     */
    @Override
    public List<ArdCameras> selectArdCamerasList(ArdCameras ardCameras)
    {
        return ardCamerasMapper.selectArdCamerasList(ardCameras);
    }

    /**
     * 新增相机设备
     * 
     * @param ardCameras 相机设备
     * @return 结果
     */
    @Override
    public int insertArdCameras(ArdCameras ardCameras)
    {
        return ardCamerasMapper.insertArdCameras(ardCameras);
    }

    /**
     * 修改相机设备
     * 
     * @param ardCameras 相机设备
     * @return 结果
     */
    @Override
    public int updateArdCameras(ArdCameras ardCameras)
    {
        return ardCamerasMapper.updateArdCameras(ardCameras);
    }

    /**
     * 批量删除相机设备
     * 
     * @param ids 需要删除的相机设备主键
     * @return 结果
     */
    @Override
    public int deleteArdCamerasByIds(String[] ids)
    {
        return ardCamerasMapper.deleteArdCamerasByIds(ids);
    }

    /**
     * 删除相机设备信息
     * 
     * @param id 相机设备主键
     * @return 结果
     */
    @Override
    public int deleteArdCamerasById(String id)
    {
        return ardCamerasMapper.deleteArdCamerasById(id);
    }
}
