package com.ard.domian;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 相机设备对象 ard_cameras
 * 
 * @author ruoyi
 * @date 2023-01-31
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ArdCameras extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    @Excel(name = "id")
    private String id;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** ip */
    @Excel(name = "ip")
    private String ip;

    /** 端口 */
    @Excel(name = "端口")
    private Integer port;

    /** 用户名 */
    @Excel(name = "用户名")
    private String username;

    /** 密码 */
    @Excel(name = "密码")
    private String password;

    /** 光电类型 */
    @Excel(name = "光电类型")
    private String gdtype;

    /** 通道号 */
    @Excel(name = "通道号")
    private Integer channel;

    /** 水平角 */
    @Excel(name = "水平角")
    private Double pan;

    /** 俯仰角 */
    @Excel(name = "俯仰角")
    private Double tilt;

    /** 经度 */
    @Excel(name = "经度")
    private Double longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private Double latitude;

    /** 高层 */
    @Excel(name = "高层")
    private Double altitude;
    /** 登录ID */
    private Integer loginId;
}
