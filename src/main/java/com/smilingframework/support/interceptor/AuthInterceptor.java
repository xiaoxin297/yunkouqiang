package com.smilingframework.support.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.smilingframework.core.runtime.utils.TimeUtils;
import com.smilingframework.support.common.FinalValue;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.UserService;
import com.smilingframework.web.annotation.NeedLogin;
import com.smilingframework.web.controller.base.BaseResponse;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private UserService userService;


	private static Logger logger = Logger.getLogger(AuthInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		long startTime = System.currentTimeMillis();
		String uri = request.getRequestURI();
		logger.info("==============================================");
		logger.info("开始处理请求 :" + uri);
		logger.info("请求处理方法 :" + request.getMethod());
		logger.info("============================================== ");
		BaseResponse result = new BaseResponse();
		request.setAttribute("startTime", startTime);
		if(uri.equals("/")){
			return super.preHandle(request, response, handler);
		}
		NeedLogin needLogin = ((HandlerMethod) handler).getMethod().getAnnotation(NeedLogin.class);
		if (needLogin == null) {
			needLogin = ((HandlerMethod) handler).getBeanType().getAnnotation(NeedLogin.class);
		}
		if((needLogin != null) && !needLogin.needLogin()){
			return super.preHandle(request, response, handler);
		}
		if (needLogin == null || (needLogin != null && needLogin.needLogin())) {
			//判断是否公开页面
			if(uri.endsWith("/forword/admin/login") || uri.endsWith("/forword/admin/home") || uri.endsWith("/forword/web/feedback")){
				return super.preHandle(request, response, handler);
			}
			String token = request.getParameter("token");
			if (StringUtils.isEmpty(token)) {
				return authFail(request,response, result);
			}
			User user = userService.findByToken(token);
			//找不到用户
			if (user == null) {
				return authFail(request,response, result);
			}
			//token过期
			if(TimeUtils.compare(user.getExpirationTime()) == 1){
				return authFail(request,response, result);
			}
			request.setAttribute(FinalValue.REQUEST_USER, user);
			return true;
		}
		return super.preHandle(request, response, handler);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		long startTime = (Long) request.getAttribute("startTime");
		long endTime = System.currentTimeMillis();
		long executeTime = endTime - startTime;
		logger.info("/////////////处理请求结束  URL:" + request.getRequestURI() + ", 执行时间 : " + executeTime + "ms  ///////////////");
		super.afterCompletion(request, response, handler, ex);
	}

	private boolean authFail(HttpServletRequest request, HttpServletResponse response, BaseResponse result) throws IOException {
		String login = request.getContextPath() + "/forword/admin/login";
		response.setContentType("text/html");
		response.setStatus(302);
		response.setHeader("Location", login);
		return false;
	}

	public static void main(String[] args) {
		String a = "bad";
		System.out.println(a.split("dddd").length);
	}

}
