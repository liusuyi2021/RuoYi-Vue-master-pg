package com.ard.mapper;

import java.util.List;

import com.ard.domian.ArdCameras;

/**
 * 相机设备Mapper接口
 * 
 * @author ruoyi
 * @date 2023-01-31
 */
public interface ArdCamerasMapper 
{
    /**
     * 查询相机设备
     * 
     * @param id 相机设备主键
     * @return 相机设备
     */
    public ArdCameras selectArdCamerasById(String id);

    /**
     * 查询相机设备列表
     * 
     * @param ardCameras 相机设备
     * @return 相机设备集合
     */
    public List<ArdCameras> selectArdCamerasList(ArdCameras ardCameras);

    /**
     * 新增相机设备
     * 
     * @param ardCameras 相机设备
     * @return 结果
     */
    public int insertArdCameras(ArdCameras ardCameras);

    /**
     * 修改相机设备
     * 
     * @param ardCameras 相机设备
     * @return 结果
     */
    public int updateArdCameras(ArdCameras ardCameras);

    /**
     * 删除相机设备
     * 
     * @param id 相机设备主键
     * @return 结果
     */
    public int deleteArdCamerasById(String id);

    /**
     * 批量删除相机设备
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteArdCamerasByIds(String[] ids);
}
