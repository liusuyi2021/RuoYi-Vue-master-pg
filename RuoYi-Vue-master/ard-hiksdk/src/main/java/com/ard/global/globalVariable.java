package com.ard.global;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: globalVariable
 * @Description: 全局变量
 * @Author: Administrator
 * @Date: 2023年01月31日 17:05
 * @Version: 1.0
 **/
@Data
public class globalVariable {
    //保存相机登录信息
    public  static Map<String,Integer> loginMap=new HashMap<>();
}
