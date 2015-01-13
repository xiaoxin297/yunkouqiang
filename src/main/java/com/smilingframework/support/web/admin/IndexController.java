package com.smilingframework.support.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smilingframework.support.common.FinalValue;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.ClinicService;
import com.smilingframework.support.web.admin.model.index.IndexRequest;
import com.smilingframework.support.web.base.KouQiangController;

@Controller
public class IndexController extends KouQiangController {
	
	@Autowired
	private ClinicService clinicService;

	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(HttpServletRequest request){
		// 当前登陆用户
		User user = getUser();
		// 如果没有建立诊所就判定为第一次登陆
		boolean hasClinic = clinicService.hasClinic(user.getUuid());
		if(!hasClinic){
			// 第一次登陆
		}
		return "/admin/index";
	}
	
	
	
}
