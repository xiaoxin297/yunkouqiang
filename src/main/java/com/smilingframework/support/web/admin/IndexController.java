package com.smilingframework.support.web.admin;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smilingframework.support.web.admin.model.index.IndexRequest;

@Controller
public class IndexController {

	@RequestMapping(value = "/index",method=RequestMethod.GET)
	public String index(@Valid IndexRequest request,BindingResult result){
		if(result.hasErrors()){
			return "/admin/sys/403";
		}
		return "/admin/index";
	}
}
