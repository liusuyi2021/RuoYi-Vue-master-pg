package com.ard.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import com.ard.domian.ArdCameras;
import com.ard.global.globalVariable;
import com.ard.service.IArdCamerasService;
import com.ard.service.impl.hikSdkClinetImpl;
import com.ruoyi.common.utils.poi.ExcelUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.core.page.TableDataInfo;

import java.util.List;

/**
 * 相机设备Controller
 *
 * @author ruoyi
 * @date 2023-01-31
 */
@Slf4j(topic = "hiksdk")
@RestController
@RequestMapping("/school/cameras")
public class ArdCamerasController extends BaseController {
    @Resource
    private hikSdkClinetImpl sdk;
    @Autowired
    private IArdCamerasService ardCamerasService;

    /**
     * 查询相机设备列表
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:list')")
    @GetMapping("/list")
    public TableDataInfo list(ArdCameras ardCameras) {
        startPage();
        List<ArdCameras> list = ardCamerasService.selectArdCamerasList(ardCameras);
        return getDataTable(list);
    }

    /**
     * 导出相机设备列表
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:export')")
    @Log(title = "相机设备", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ArdCameras ardCameras) {
        List<ArdCameras> list = ardCamerasService.selectArdCamerasList(ardCameras);
        ExcelUtil<ArdCameras> util = new ExcelUtil<ArdCameras>(ArdCameras.class);
        util.exportExcel(response, list, "相机设备数据");
    }

    /**
     * 获取相机设备详细信息
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return success(ardCamerasService.selectArdCamerasById(id));
    }

    /**
     * 新增相机设备
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:add')")
    @Log(title = "相机设备", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ArdCameras camera) {

        camera = sdk.login(camera);
        if(camera.getLoginId()>=0)
        {
            log.info("相机" + camera.getIp() + ":" + camera.getPort() + "登录成功：" + camera.getLoginId());
            if(!globalVariable.loginMap.containsKey(camera.getId())) {
                globalVariable.loginMap.put(camera.getId(), camera.getLoginId());
                int i = ardCamerasService.updateArdCameras(camera);
            }
        }
        return toAjax(ardCamerasService.insertArdCameras(camera));
    }

    /**
     * 修改相机设备
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:edit')")
    @Log(title = "相机设备", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ArdCameras ardCameras) {
        return toAjax(ardCamerasService.updateArdCameras(ardCameras));
    }

    /**
     * 删除相机设备
     */
    @PreAuthorize("@ss.hasPermi('school:cameras:remove')")
    @Log(title = "相机设备", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(ardCamerasService.deleteArdCamerasByIds(ids));
    }
}
