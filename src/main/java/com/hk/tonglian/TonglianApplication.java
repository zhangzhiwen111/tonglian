package com.hk.tonglian;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan("com.hk.tonglian.mappers")
public class TonglianApplication {

    public static void main(String[] args) {
        SpringApplication.run(TonglianApplication.class, args);
    }

}
