package com.zy.login.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

public class SMSUtil {
    private static String sid="24b38f26d332e01a8737d52f2b55629b";//用户账号唯一标识
    private static String token="446923b337eb2b3af7127794f1a049a1";//用户密匙
    private static String appid="6a75f9cd80334f0ab4b68497b1aa4df1";//应用id
    private static String templateid="438370";//模板id
    private static String url="https://open.ucpaas.com/ol/sms/sendsms";//请求路径

    public static String postJosn(String PhoneNumber,String code) throws IOException{
        //创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //创建post请求对象
        HttpPost post = new HttpPost(url);
        //设置请求和响应的超时时间
        RequestConfig rc = RequestConfig.custom().setConnectTimeout(10000).setSocketTimeout(10000).build();
        //设置请求头
        post.setConfig(rc);
        post.setHeader("Accept","application/json");
        post.setHeader("Content-Type","application/json;charset=utf-8");
        //设置参数
        JSONObject json = new JSONObject();
        json.put("sid",sid);
        json.put("token",token);
        json.put("appid",appid);
        json.put("mobile",PhoneNumber);
        json.put("templateid",templateid);
        json.put("param",code);
        json.put("uid","2d92c6132139467b989d087c84a365d8");
        String param=json.toJSONString();
        post.setEntity(new StringEntity(param,"UTF-8"));
        //发送请求,接收响应
        HttpResponse response = httpClient.execute(post);
        //设置返回值
        String result = null;
        //处理响应信息
        //判断是否有响应
        if (response!=null){
            //获取响应的数据
            HttpEntity resEntity = response.getEntity();
            if (resEntity!=null){
                //把响应的数据转换成字符串
                result = EntityUtils.toString(resEntity,"UTF-8");
            }
        }
        return result;
    }

}
