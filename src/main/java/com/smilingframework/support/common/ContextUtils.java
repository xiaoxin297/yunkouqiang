package com.smilingframework.support.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class ContextUtils {

	public static HttpServletRequest getRequest(){
		return  ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
	}
}
