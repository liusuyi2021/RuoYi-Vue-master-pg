package com.ruoyi.authorize.domain;
/**
 * @ClassName ParsLicenseInfo
 * @Description: 申请解密信息实体类
 * @Author 刘苏义
 * @Date 2022/11/30 17:18
 * @Version 1.0
 */
public class ParsLicenseInfo {
    public String machineCode;//机器码
    public String EncryptedStr;//加密串

    public String getMachineCode() {
        return machineCode;
    }

    public void setMachineCode(String machineCode) {
        this.machineCode = machineCode;
    }

    public String getEncryptedStr() {
        return EncryptedStr;
    }

    public void setEncryptedStr(String encryptedStr) {
        EncryptedStr = encryptedStr;
    }
}
