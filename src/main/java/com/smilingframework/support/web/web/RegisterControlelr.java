package com.smilingframework.support.web.web;


import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smilingframework.dao.base.BaseEntity;
import com.smilingframework.support.common.SysUtils;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.UserService;
import com.smilingframework.support.web.web.model.RegisterAddRequest;
import com.smilingframework.web.controller.base.BaseController;
import com.smilingframework.web.controller.base.BaseResponse;

@Controller
public class RegisterControlelr extends BaseController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/register",method = RequestMethod.GET)
	public String registerGet(){
		return "web/register";
	}
	
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	@ResponseBody
	public BaseResponse registerPost(@Valid RegisterAddRequest request , BindingResult result){
		if(result.hasErrors()){
			return setRequestErroorResult(result);
		}
		User user = new User();
		BeanUtils.copyProperties(request, user);
		user.setPassword(SysUtils.getPassword(user.getPassword()));
		userService.save(user);
		return setSuccestResult(new BaseResponse());
	}
}
