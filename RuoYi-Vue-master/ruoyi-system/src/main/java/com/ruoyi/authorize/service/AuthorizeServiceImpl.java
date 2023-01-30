package com.ruoyi.authorize.service;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.authorize.common.AuthorizeUtil;
import com.ruoyi.authorize.common.DateTimeUtil;
import com.ruoyi.authorize.domain.AuthorizeInfo;
import com.ruoyi.authorize.domain.ParsLicenseInfo;
import com.ruoyi.common.constant.CacheConstants;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.system.domain.SysCache;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.compress.utils.IOUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.concurrent.TimeUnit;

@Service
@Slf4j(topic = "Authorize")
public class AuthorizeServiceImpl implements AuthorizeService {
    @Resource
    private RedisCache redisCache;

    @PostConstruct
    public void  init()
    {
        AuthorizeUtil.MachineCode=AuthorizeUtil.getMachineCode();
        log.info("初始化获取机器码："+AuthorizeUtil.MachineCode);
        redisCache.setCacheObject(getCacheKey("MachineCode"), AuthorizeUtil.MachineCode);
    }


    /**
     * 系统授权时间判断
     *
     * @return boolean
     */
    public boolean isExpired(AuthorizeInfo Info) {
        try {
            if (Info != null) {
                String dateStr = Info.getSystemAuthorizeDate();
                dateStr = DateTimeUtil.strToDateFormat(dateStr);
                //授权到期时间
                long dates = DateTimeUtil.getLongDate(dateStr);
                long currentTime = DateTimeUtil.getCurrentLongDate();
                //授权是否到期
                if (dates >= currentTime) {
                    return true;
                }
            }
        } catch (ParseException e) {
            log.error("系统授权时间判断异常：" + e.getMessage());
        }
        return false;
    }

    /**
     * 解析授权文件
     *
     * @return AuthorizeInfo
     */
    public AuthorizeInfo parseFiles(File file) {
        BufferedReader reader = null;
        try {
            //用流读取文件
            reader = new BufferedReader(new FileReader(file));
            String line;
            StringBuffer content = new StringBuffer();
            // 读取想定文件
            while ((line = reader.readLine()) != null) {
                content.append(line);
            }
            String MachineCode = AuthorizeUtil.MachineCode;
            String str = AuthorizeUtil.parsLicense(MachineCode, content.toString());
            if (str != null) {
                AuthorizeInfo info = JSONObject.parseObject(str, AuthorizeInfo.class);
                return info;
            }
        } catch (IOException e) {
            log.error("解析授权文件异常：" + e.getMessage());
            return null;
        } finally {
            if (reader != null) {
                IOUtils.closeQuietly(reader);
            }
        }
        return null;
    }

    @Override
    public JSONObject verifyAuthorization() {
        try {
            JSONObject data = new JSONObject();
            String savedDir=  System.getProperty("user.dir")+ "\\ardLicense";
            File dir = new File(savedDir);
            if (!dir.exists()) { //如果不存在
                boolean dr = dir.mkdirs(); //创建目录
            }
            //从缓存中获取最后一次验证授权的时间
            Object auth_time = redisCache.getCacheObject(getCacheKey("AuthTime"));
            if(auth_time!=null)
            {
                long lasttime = Long.parseLong(auth_time.toString());
                long currentTime = DateTimeUtil.getCurrentLongDate();
                if (currentTime <= lasttime) {
                    data.put("Type", "error");
                    data.put("Message", "系统时间异常");
                    return data;
                }
            }
            File LicenseFile = new File(savedDir + "/license.cpy");//获取授权文件
            if (LicenseFile.exists()) {
                AuthorizeInfo info = parseFiles(LicenseFile);//解析授权文件
                if (info != null) {
                    if (isExpired(info)) {
                        data.put("Type", "normal");
                        data.put("Message", info.getSystemAuthorizeDate());

                    } else {
                        data.put("Type", "expired");
                        data.put("Message", info.getSystemAuthorizeDate());
                    }

                } else {
                    data.put("Type", "mismatch");
                    data.put("Message", "License mismatch");
                }
            }
            else {
                data.put("Type", "mismatch");
                data.put("Message", "License mismatch");
            }
            //验证结束，写入最后一次验证的时间到缓存
            redisCache.setCacheObject(getCacheKey("AuthTime"), DateTimeUtil.getCurrentLongDate().toString());
            return data;
        } catch (Exception ex) {
            log.error("验证授权异常：" + ex.getMessage());
            return null;
        }
    }

    @Override
    public JSONObject makeTempLicense() {
        String savedDir=  System.getProperty("user.dir")+ "\\ardLicense";
        String tempLicenseDate = AuthorizeUtil.makeTempLicense(savedDir + "\\license.cpy");
        JSONObject data = new JSONObject();
        data.put("Type", "makeTempLicense");
        data.put("Message", tempLicenseDate);
        return data;
    }

    @Override
    public JSONObject getMachineCode() {
        try {
            String machineCode = AuthorizeUtil.getMachineCode();
            AuthorizeUtil.MachineCode = machineCode;
            log.info("获取到机器码：" + machineCode);
            JSONObject data = new JSONObject();
            data.put("Type", "machineCode");
            data.put("Message", machineCode);
            return data;
        } catch (Exception ex) {
            log.error("获取机器码异常：" + ex.getMessage());
            return null;
        }
    }

    @Override
    public JSONObject uploadLicense(MultipartFile file) {
        try {
            String fileRealName = file.getOriginalFilename(); //获得原始文件名;
            String savedDir=  System.getProperty("user.dir")+ "\\ardLicense";
            File dir = new File(savedDir);
            if (!dir.exists()) { //如果不存在
                boolean dr = dir.mkdirs(); //创建目录
            }
            File LicenseFile = new File(savedDir, fileRealName);
            try {
                file.transferTo(LicenseFile);  //转存文件
            } catch (IOException e) {
                e.printStackTrace();
            }
            JSONObject data = new JSONObject();
            data.put("Type", "uploadLicenseFile");
            data.put("Message", "Dir:" + savedDir);
            return data;
        } catch (Exception ex) {
            log.error("获取机器码异常：" + ex.getMessage());
            return null;
        }
    }

    @Override
    public String getLicense(String data) {
        String codeString = "";
        try {
            if (data != "") {
                //解析json
                AuthorizeInfo rt = JSON.parseObject(data, AuthorizeInfo.class);
                String machineCode = rt.getMachineCode();
                String key = data;
                if (machineCode != "" && key != "") {
                    codeString = AuthorizeUtil.getLicense(machineCode, key);
                }
            }
            return codeString;
        } catch (Exception ex) {
            log.error("加密异常：" + ex.getMessage());
            return codeString;
        }
    }

    @Override
    public String parsLicense(String data) {
        String codeString = "";
        try {
            if (data != "") {
                //解析json
                ParsLicenseInfo rt = JSON.parseObject(data, ParsLicenseInfo.class);
                String machineCode = rt.getMachineCode();
                String key = rt.getEncryptedStr();
                codeString = AuthorizeUtil.parsLicense(machineCode, key);
            }
        } catch (Exception ex) {
            log.error("解密异常：" + ex.getMessage());
            return codeString;
        }
        return codeString;

    }
    /**
     * 设置cache key
     *
     * @param configKey 参数键
     * @return 缓存键key
     */
    private String getCacheKey(String configKey)
    {
        return CacheConstants.AUTH_CONFIG_KEY + configKey;
    }
}
