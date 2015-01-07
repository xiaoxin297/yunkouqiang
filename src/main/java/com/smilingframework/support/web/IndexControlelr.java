package com.smilingframework.support.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smilingframework.web.controller.base.BaseController;

@Controller
@RequestMapping("/")
public class IndexControlelr extends BaseController {

	@RequestMapping("index")
	public String index(){
		return "/web/index";
	}
}
