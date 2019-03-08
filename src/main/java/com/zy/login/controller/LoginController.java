package com.zy.login.controller;

import com.zy.login.pojo.Login;
import com.zy.login.service.LoginService;
import com.zy.login.util.YzmUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
   //login/Yzm.do
	@Autowired
	private LoginService service;
	
	@RequestMapping("/login/Yzm")
	public void setYzm(HttpServletRequest request,HttpServletResponse response){
		try {
			YzmUtil.CreateYZM(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//getYzm.do
	@RequestMapping("/login/login")
	@ResponseBody
	public Map<String, Object> getlogin(HttpSession session,Login login){
		Map<String,Object> map=new HashMap<>();
		try {
			
			System.out.println(login.getLpassword()+login.getLusername());
			map=service.login(session,login);
		} catch (Exception e) {
           e.printStackTrace();
           map.put("success", false);
           map.put("msg", "系统异常");
		}
		return map;
	}
	//getYzm.do
	@RequestMapping("/login/getYzm")
	@ResponseBody
	public Map<String,Object>  getYzm(HttpSession session){
		Map<String,Object> map=new HashMap<>();
		map.put("yzm", session.getAttribute("yzm"));
		return map;
	}
	//toIndex
	@RequestMapping("/toIndex")
	public String toIndex(){
		return "index";
	}
	
}
