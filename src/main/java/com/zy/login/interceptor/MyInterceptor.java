package com.zy.login.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		//获取请求路径
		String path=arg0.getRequestURI();
		if (path.indexOf("/login/")!=-1) {
			return true;
		}else{
			Object object=arg0.getSession().getAttribute("user");
			if(object!=null){
				return true;
			}
		}
		arg1.sendRedirect(arg0.getContextPath()+"/login.jsp");
		return false;
	}

}
