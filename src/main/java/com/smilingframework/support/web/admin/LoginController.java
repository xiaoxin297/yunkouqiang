package com.smilingframework.support.web.admin;

import java.util.Calendar;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smilingframework.support.common.SysUtils;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.UserService;
import com.smilingframework.support.web.admin.model.login.LoginRequest;
import com.smilingframework.support.web.admin.model.login.LoginResponse;
import com.smilingframework.web.annotation.NeedLogin;
import com.smilingframework.web.controller.base.BaseController;
import com.smilingframework.web.controller.base.BaseResponse;
import com.smilingframework.web.controller.base.HttpResponseBody;

@Controller
@NeedLogin(needLogin=false)
public class LoginController extends BaseController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	@ResponseBody
	public BaseResponse login(@Valid LoginRequest request ,BindingResult result){
		if(result.hasErrors()){
			return setRequestErroorResult(result);
		}
		User user = userService.findByPhone(request.getPhone());
		if(user == null){
			return setErrorResult("000010", "用户名密码不匹配");
		}
		if(!user.getPassword().equals(SysUtils.getAdminPassword(request.getPassword()))){
			return setErrorResult("000010", "用户名密码不匹配");
		}
		String token = SysUtils.getToken(user.getUuid());
		user.setToken(token);
		Calendar ca=Calendar.getInstance();
		ca.setTime(new Date());
		ca.add(Calendar.HOUR_OF_DAY, 12);
		user.setExpirationTime(ca.getTime());
		userService.save(user);
		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setToken(token);
		return setSuccestResult(new HttpResponseBody(loginResponse));
	}
	
	
}
