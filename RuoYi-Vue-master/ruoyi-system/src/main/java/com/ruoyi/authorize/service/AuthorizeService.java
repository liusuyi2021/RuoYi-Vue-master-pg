package com.ruoyi.authorize.service;

import com.alibaba.fastjson2.JSONObject;
import org.springframework.web.multipart.MultipartFile;

public interface AuthorizeService {

    JSONObject verifyAuthorization();//验证本地授权
    JSONObject makeTempLicense();//制作临时授权
    JSONObject getMachineCode();//获取机器码
    JSONObject uploadLicense(MultipartFile file);//上传授权文件

    String getLicense(String data);//加密
    String parsLicense(String data);//解密
}
