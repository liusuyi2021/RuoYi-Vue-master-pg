package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class },scanBasePackages = {"com.ard","com.ruoyi"})
public class RuoYiApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  安瑞达4.0平台启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                "      ___           ___                               \n" +
                "     /\\  \\         /\\  \\         _____            \n" +
                "    /::\\  \\       /::\\  \\       /::\\  \\         \n" +
                "   /:/\\:\\  \\     /:/\\:\\__\\     /:/\\:\\  \\     \n" +
                "  /:/ /::\\  \\   /:/ /:/  /    /:/  \\:\\__\\        \n" +
                " /:/_/:/\\:\\__\\ /:/_/:/__/___ /:/__/ \\:|__|        \n" +
                " \\:\\/:/  \\/__/ \\:\\/:::::/  / \\:\\  \\ /:/  /    \n" +
                "  \\::/__/       \\::/~~/~~~~   \\:\\  /:/  /         \n" +
                "   \\:\\  \\        \\:\\~~\\        \\:\\/:/  /      \n" +
                "    \\:\\__\\        \\:\\__\\        \\::/  /        \n" +
                "     \\/__/         \\/__/         \\/__/    \n");
    }
}
