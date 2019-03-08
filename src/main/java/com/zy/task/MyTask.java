package com.zy.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class MyTask {
    @Scheduled(cron="2 * * * * *")
    public void test(){
        System.out.println("xixixixi");
    }
}
