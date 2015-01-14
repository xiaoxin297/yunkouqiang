package com.smilingframework.support.web.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smilingframework.support.common.FinalValue;
import com.smilingframework.support.model.sys.Modular;
import com.smilingframework.support.model.sys.Role;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.ClinicService;
import com.smilingframework.support.service.ModularService;
import com.smilingframework.support.service.RoleService;
import com.smilingframework.support.web.admin.model.index.IndexRequest;
import com.smilingframework.support.web.base.KouQiangController;

@Controller
public class IndexController extends KouQiangController {
	
	@Autowired
	private ClinicService clinicService;
	@Autowired
	private ModularService modularService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(HttpServletRequest request){
		// 当前登陆用户
		User user = getUser();
		// 如果没有建立诊所就判定为第一次登陆
		boolean hasClinic = clinicService.hasClinic(user.getUuid());
		if(!hasClinic){
			// 第一次登陆 跳转到新增诊所页面
			return "/admin/index-first";
		}
		return "/admin/index";
	}
	@RequestMapping(value = "/modular",method=RequestMethod.GET)
	public String getModels(Model model,String modelId){
		User user = getUser();
		List<Modular> modulars = new ArrayList<>();
		if(user.isMain()){
			modulars = modularService.findAll();
		}else{
			Role role = roleService.findRoleByUserId(user.getUuid());
			modulars = modularService.findByRoleId(role.getUuid());
		}
		model.addAttribute("models", modulars);
		model.addAttribute("modelId", modelId);
		return "/admin/base/sidebar";
	}
	
}
