package com.zy.login.service.Impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.login.dao.LoginDao;
import com.zy.login.pojo.Login;
import com.zy.login.service.LoginService;

import sun.misc.BASE64Encoder;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao dao;
	
	@Override
	public Map<String, Object> login(HttpSession session, Login login) {
		Map<String, Object> map=new HashMap<>();
		//查询用户
		Login user=dao.getLoginByName(login.getLusername());
		if (user!=null) {
			//密码MD5加密和base64加密
			String jiami;
			try {
				System.out.println(login.getLpassword());
				MessageDigest MD5=MessageDigest.getInstance("MD5");
				byte[] digest = MD5.digest(login.getLpassword().getBytes());
				//base64
				BASE64Encoder base=new BASE64Encoder();
				jiami = base.encode(digest);
				if (jiami.equals(user.getLpassword())) {
					session.setAttribute("user", user);
					map.put("success", true);
					map.put("msg", "登陆成功");
				} else {
                    map.put("success", false);
                    map.put("msg", "密码不正确");
				}
				
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
            map.put("success", false);
            map.put("msg", "用户名不正确");
		}
		return map;
	}

}
