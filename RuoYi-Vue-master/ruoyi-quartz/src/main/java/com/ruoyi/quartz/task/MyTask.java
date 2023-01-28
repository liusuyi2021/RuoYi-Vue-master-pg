package com.ruoyi.quartz.task;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * @ClassName: MyTask
 * @Description:
 * @Author: Administrator
 * @Date: 2023年01月14日 8:15
 * @Version: 1.0
 **/
@Component("myTask")
@Slf4j(topic = "custmer")
public class MyTask {

    public void test()
    {
        log.info("执行测试方法");
    }
}
