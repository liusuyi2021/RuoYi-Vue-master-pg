package com.ard.controller;

import com.ard.domian.ArdCameras;
import com.ard.domian.PTZ;
import com.ard.global.globalVariable;
import com.ard.service.IArdCamerasService;
import com.ard.service.impl.hikSdkClinetImpl;
import com.ard.util.CommonResult;
import com.ruoyi.common.annotation.Anonymous;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: sdkController
 * @Description:
 * @Author: Administrator
 * @Date: 2023年01月17日 12:04
 * @Version: 1.0
 **/
@Api("海康sdk")
@Controller
@Slf4j(topic = "hiksdk")
@RequestMapping("/hik")
@Anonymous
public class sdkController {

    @Resource
    IArdCamerasService ardCamerasService;
    @Resource
    private hikSdkClinetImpl sdk;

    @PostConstruct
    private void initHCNetSDK() {
        //初始化加载sdk库文件
        sdk.initHCNetSDK();
        //登录所有相机
        List<ArdCameras> ardCameras = ardCamerasService.selectArdCamerasList(new ArdCameras());
        for(ArdCameras camera :ardCameras) {
            if(!globalVariable.loginMap.containsKey(camera.getId())) {
                camera = sdk.login(camera);
                if(camera.getLoginId()>=0) {
                    log.info("相机" + camera.getIp() + ":" + camera.getPort() + "登录成功：" + camera.getLoginId());
                    globalVariable.loginMap.put(camera.getId(), camera.getLoginId());
                    int i = ardCamerasService.updateArdCameras(camera);
                }
                else
                {
                    log.info("相机" + camera.getIp() + ":" + camera.getPort() + "登录失败：" + camera.getLoginId());
                }
            }
            else
            {
                Integer userid=globalVariable.loginMap.get(camera.getId());
                log.info("当前相机:"+camera.getId()+"已登录,ID:"+userid);
            }

        }
    }

    @RequestMapping("/index")
    String index() {
        return "test";
    }
    @ApiOperation("相机登录")
    @GetMapping("/login")
    private @ResponseBody
    CommonResult<String> loginIndex() {

//        List<ArdCameras> ardCameras = ardCamerasService.selectArdCamerasList(new ArdCameras());
//        for(ArdCameras cameras :ardCameras) {
//
//            if(!loginMap.containsKey(cameras.getId())) {
//                Integer userid = sdk.login(cameras);
//                log.info("相机"+cameras.getIp()+":"+cameras.getPort()+"登录成功：" + userid);
//                loginMap.put(cameras.getId(), userid);
//            }
//            else
//            {
//                Integer userid=loginMap.get(cameras.getId());
//                log.info("当前相机:"+cameras.getId()+"已登录,ID:"+userid);
//            }
//        }
       return CommonResult.success("");
    }
    Integer UserId=0;
    @GetMapping("/up")
    private @ResponseBody
    CommonResult<String> up(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlUp(UserId, channelNum, speed, enable);
        return CommonResult.success("up");
    }
    @GetMapping("/down")
    private @ResponseBody
    CommonResult<String> down(Integer channelNum, Integer speed,boolean enable) {
        sdk.controlDown(UserId, channelNum, speed, enable);
        return CommonResult.success("down");
    }

    @GetMapping("/left")
    private @ResponseBody
    CommonResult<String> left(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlLeft(UserId, channelNum, speed, enable);
        return CommonResult.success("left");
    }

    @GetMapping("/right")
    private @ResponseBody
    CommonResult<String> right(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlRight(UserId, channelNum, speed, enable);
        return CommonResult.success("right");
    }

    @GetMapping("/ZoomIn")
    private @ResponseBody
    CommonResult<String> controlZoomIn(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlZoomIn(UserId, channelNum, speed, enable);
        return CommonResult.success("ZoomIn");
    }

    @GetMapping("/ZoomOut")
    private @ResponseBody
    CommonResult<String> controlZoomOut(Integer channelNum, Integer speed,boolean enable) {
        sdk.controlZoomOut(UserId, channelNum, speed, enable);
        return CommonResult.success("ZoomOut");
    }

    @GetMapping("/FocusNear")
    private @ResponseBody
    CommonResult<String> controlFocusNear(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlFocusNear(UserId, channelNum, speed, enable);
        return CommonResult.success("FocusNear");
    }

    @GetMapping("/FocusFar")
    private @ResponseBody
    CommonResult<String> controlFocusFar(Integer channelNum, Integer speed,boolean enable)  {
        sdk.controlFocusFar(UserId, channelNum, speed, enable);
        return CommonResult.success("FocusFar");
    }

    @GetMapping("/gotoPreset")
    private @ResponseBody
    CommonResult<String> gotoPreset(Integer channelNum, Integer presetIndex) {
        boolean b = sdk.gotoPreset(UserId, channelNum, presetIndex);
        if (b) {
            return CommonResult.success("转到预置点" + presetIndex + "成功！");
        } else {
            return CommonResult.success("转到预置点" + presetIndex + "失败！");
        }
    }

    @GetMapping("/setPreset")
    private @ResponseBody
    CommonResult<String> setPreset(Integer channelNum, Integer presetIndex) {
        boolean b = sdk.setPreset(UserId, channelNum, presetIndex);
        if (b) {
            return CommonResult.success("设置预置点" + presetIndex + "成功！");
        } else {
            return CommonResult.success("设置预置点" + presetIndex + "失败！");
        }
    }

    @GetMapping("/getPTZ")
    private @ResponseBody
    CommonResult<PTZ> GetPTZ(Integer channelNum) {
        PTZ ptz = sdk.getPtz(UserId, channelNum);
        Map<String, String> map = new HashMap<>();
        map.put("p", ptz.getWPanPos());
        map.put("t", ptz.getWTiltPos());
        map.put("z", ptz.getWZoomPos());
        return CommonResult.success(ptz);
    }

    @GetMapping("/setPTZ")
    private @ResponseBody
    CommonResult<PTZ> SetPTZ(Integer channelNum, String p, String t, String z) {
        PTZ ptz = new PTZ();
        ptz.setWPanPos(p);
        ptz.setWTiltPos(t);
        ptz.setWZoomPos(z);
        boolean b = sdk.setPtz(UserId, channelNum, ptz);
        if (b) {
            return CommonResult.success(ptz);
        } else {
            return CommonResult.failed("设置ptz失败！");
        }
    }

    @GetMapping("/enableWiperPwron")
    private @ResponseBody
    CommonResult<String> controlWiperPwron(Integer channelNum, Integer speed) {
        boolean b = sdk.controlWiperPwron(UserId, channelNum, speed, true);
        if (b) {
            return CommonResult.success("开启雨刷成功！");
        } else {
            return CommonResult.failed("开启雨刷失败！");
        }
    }

    @GetMapping("/enableDefogcfg")
    private @ResponseBody
    CommonResult<String> EnableDefogcfg(Integer channelNum) {
        boolean b = sdk.controlDefogcfg(UserId, channelNum, true);
        if (b) {
            return CommonResult.success("开启透雾成功！");
        } else {
            return CommonResult.failed("开启透雾失败！");
        }
    }

    @GetMapping("/disableDefogcfg")
    private @ResponseBody
    CommonResult<String> DisableDefogcfg(Integer channelNum) {
        boolean b = sdk.controlDefogcfg(UserId, channelNum, false);
        if (b) {
            return CommonResult.success("关闭透雾成功！");
        } else {
            return CommonResult.failed("关闭透雾失败！");
        }
    }

    @GetMapping("/enableInfrarecfg")
    private @ResponseBody
    CommonResult<String> enableInfrarecfg(Integer channelNum) {
        boolean b = sdk.controlInfrarecfg(UserId, channelNum, true);
        if (b) {
            return CommonResult.success("开启红外成功！");
        } else {
            return CommonResult.failed("开启红外失败！");
        }
    }

    @GetMapping("/disableInfrarecfg")
    private @ResponseBody
    CommonResult<String> disableInfrarecfg(Integer channelNum) {
        boolean b = sdk.controlInfrarecfg(UserId, channelNum, false);
        if (b) {
            return CommonResult.success("关闭红外成功！");
        } else {
            return CommonResult.failed("关闭红外失败！");
        }
    }

    @GetMapping("/enableFocusMode")
    private @ResponseBody
    CommonResult<String> enableFocusMode(Integer channelNum) {
        boolean b = sdk.controlFocusMode(UserId, channelNum, true);
        if (b) {
            return CommonResult.success("开启手动聚焦成功！");
        } else {
            return CommonResult.failed("开启手动聚焦失败！");
        }
    }

    @GetMapping("/disableFocusMode")
    private @ResponseBody
    CommonResult<String> disableFocusMode(Integer channelNum) {
        boolean b = sdk.controlFocusMode(UserId, channelNum, false);
        if (b) {
            return CommonResult.success("开启自动聚焦成功！");
        } else {
            return CommonResult.failed("开启自动聚焦失败！");
        }
    }

    @GetMapping("/enableHeateRpwron")
    private @ResponseBody
    CommonResult<String> enableHeateRpwron(Integer channelNum) {
        boolean b = sdk.controlPTHeateRpwron(UserId, channelNum, true);
        if (b) {
            return CommonResult.success("开启云台加热成功！");
        } else {
            return CommonResult.failed("开启云台加热失败！");
        }
    }

    @GetMapping("/disableHeateRpwron")
    private @ResponseBody
    CommonResult<String> disableHeateRpwron(Integer channelNum) {
        boolean b = sdk.controlPTHeateRpwron(UserId, channelNum, false);
        if (b) {
            return CommonResult.success("关闭云台加热成功！");
        } else {
            return CommonResult.failed("关闭云台加热失败！");
        }
    }

    @GetMapping("/enableCameraDeicing")
    private @ResponseBody
    CommonResult<String> enableCameraDeicing(Integer channelNum) {
        boolean b = sdk.controlCameraDeicing(UserId, channelNum, true);
        if (b) {
            return CommonResult.success("开启镜头加热成功！");
        } else {
            return CommonResult.failed("开启镜头加热失败！");
        }
    }

    @GetMapping("/disableCameraDeicing")
    private @ResponseBody
    CommonResult<String> disableCameraDeicing(Integer channelNum) {
        boolean b = sdk.controlCameraDeicing(UserId, channelNum, false);
        if (b) {
            return CommonResult.success("关闭镜头加热成功！");
        } else {
            return CommonResult.failed("关闭镜头加热失败！");
        }
    }
    @GetMapping("/captureJPEGPicture1111111")
    private @ResponseBody
    CommonResult<String> captureJPEGPicture( HttpServletResponse response) {
        sdk.captureJPEGPicture(UserId, response);
        return CommonResult.success("图片上传成功！"+response.toString());
    }
    @ApiOperation("相机抓图")
    @GetMapping("/captureJPEGPicture")
    private @ResponseBody
    CommonResult<String> captureJPEGPicture1(@RequestParam(name = "channelNum", required = true)Integer channelNum) {
        String path = sdk.picCutCate(UserId, channelNum);
        return CommonResult.success(path);
    }

    @GetMapping("/recordStart")
    private @ResponseBody
    CommonResult<String> recordStart(Integer channelNum) {
        String path = sdk.record(UserId, channelNum, true);
        return CommonResult.success("录像开始" + path);
    }

    @GetMapping("/recordStop")
    private @ResponseBody
    CommonResult<String> recordStop(Integer channelNum) {
        String path = sdk.record(UserId, channelNum, false);
        return CommonResult.success("录像结束" + path);
    }
}
