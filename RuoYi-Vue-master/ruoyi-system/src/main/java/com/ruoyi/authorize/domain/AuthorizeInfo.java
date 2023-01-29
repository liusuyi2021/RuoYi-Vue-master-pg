package com.ruoyi.authorize.domain;
/**
 * @ClassName AuthorizeInfo
 * @Description: 申请授权信息实体类
 * @Author 刘苏义
 * @Date 2022/11/30 17:18
 * @Version 1.0
 */
public class AuthorizeInfo
{
    private String systemAuthorizeDate;
    private String machineCode;

    public String getSystemAuthorizeDate() {
        return systemAuthorizeDate;
    }

    public void setSystemAuthorizeDate(String systemAuthorizeDate) {
        this.systemAuthorizeDate = systemAuthorizeDate;
    }

    public String getMachineCode() {
        return machineCode;
    }

    public void setMachineCode(String machineCode) {
        this.machineCode = machineCode;
    }
}