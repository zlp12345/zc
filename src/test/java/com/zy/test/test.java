package com.zy.test;

import com.zy.login.util.SMSUtil;

import java.io.IOException;

public class test {
    public static void main(String [] arg){
        try{
            String s = SMSUtil.postJosn("18000318416","666666");
            System.out.println("eeee");
            System.out.println(s);
        }catch (IOException e){
            e.printStackTrace();
        }
    }

}
