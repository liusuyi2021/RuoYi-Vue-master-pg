package com.ruoyi.web.controller.authorize;

import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.authorize.service.AuthorizeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;

@Api("授权管理")
@RestController
@RequestMapping("Authorization")
public class AuthorizationController {

    @Resource
    AuthorizeService authorizeService;
    //生成临时授权只有一天
//    @PostMapping("/makeTempLicense")
//    public JSONObject makeTempLicense() {
//        JSONObject jsonObject = authorizeService.makeTempLicense();
//        return jsonObject;
//    }
    //获取机器码
    @ApiOperation("获取机器码")
    @PostMapping("/getMachineCode")
    public JSONObject getMachineCode() {
        JSONObject jsonObject = authorizeService.getMachineCode();
        return jsonObject;
    }
    //上传授权文件
    @ApiOperation("上传授权文件")
    @PostMapping(value = "/uploadLicenseFile")
    public JSONObject uploadLicense(@RequestPart MultipartFile file) {
        JSONObject jsonObject = authorizeService.uploadLicense(file);
        return  jsonObject;
    }
    //验证授权文件是否到期
    @ApiOperation("验证授权文件是否到期")
    @PostMapping(value = "/verifyAuthorization")
    public JSONObject verifyAuthorization() {
        JSONObject data = authorizeService.verifyAuthorization();//解析授权文件
        return data;
    }

    //获取授权
    @PostMapping(value = "/getLicense")
    public String getLicense(@RequestBody String data) {
        String EncryptedStr = authorizeService.getLicense(data);
        return EncryptedStr;
    }
    //解析授权
    @PostMapping(value = "/parsLicense")
    public String parsLicense(@RequestBody String data) {
        String DecryptStr = authorizeService.parsLicense(data);
        return DecryptStr;
    }
}
